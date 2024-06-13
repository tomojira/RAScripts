// Monster Lair
// #ID = 13306

// $0029: 0x30 = In-game
// $002C: Stage Progress [16-bit]
//        Changes at shooter phase, stops at boss
// $003F: Screen [8-bit]
//        0x00 = Sound test
//        0x01 to 0x0e = Round 1 to 14
//        0x10 = Game over, Name entry, High scores
//        0x11 = High scores from title screen
//        0x12 = 1P or 2P select
//        0x13 = Ending, credits
//        0x14 = Title screen, Round select
// $0052: System Switches
//        Bit0 = Switch 1: Increased weapon time (Z80 cheat)
//        Bit1 = Switch 2: Effect unknown
//        Bit2 = Switch 3: Effect unknown
//        Bit3 = Switch 4: Unlimited weapon time
//        Bit4 = Switch 5: Effect unknown
//        Bit5 = Switch 6: Enemies take more hits (486 cheat)
//        Bit6 = Switch 7: Unlimited continues (68K cheat)
//        Bit7 = Switch 8: Effect unknown
//        Available on Round Select screen
// $00A2: Platformer Stage Progress [16-bit]
//        Editing messes with graphics
// $00A8: Platformer Stage Progress [16-bit]
//        Editing messes with graphics
// $00AC: Platformer Stage Progress [16-bit]
//        Editing causes major glitches
// $00AE: Platformer Stage Progress [16-bit]
//        0xad72 = Round 1 start
//        Editing can end the stage early
// $0213: 0x01 = In-game
// $0260: Music [8-bit]
// $0400: Bit2 = P1 active
//        Bit3 = P2 active
//        Inactive at continue
// $0404: Round [8-bit]
//        0x01 to 0x0e
// $042A: High Score Names [ASCII]
// $046A: P1 Continues [8-bit]
//        Start with 3
// $046B: P2 Continues [8-bit]
// $046E: P1 Score [24-bit]
//        Multiply by 10
// $0479: P1 Weapon Type [8-bit]
//        0x01 = Normal
//        0x02 = Spiral
//        0x03 = Missile
//        0x04 = Wide Ring
//        0x05 = Fireball
//        0x06 = Beam
//        0x07 = Big Fighter
// $047B: P1 Weapon Timer [16-bit]
//        Starts at 0x0258
//        Or 0x0384 with increased weapon time cheat
// $047F: P1 Health Drain Timer [8-bit]
//        0x3b = Max
//        0x3736 to 0x373b gives a perfect round bonus of 5600
// $0480: P1 Health [8-bit]
//        0x37 = Max
// $0483: P1 Lives [8-bit]
//        Extend at 50,000, 100,000, 200,000, 300,000
// $0487: P2 Score [24-bit]
// $0492: P2 Weapon Type [8-bit]
// $0494: P2 Weapon Timer [16-bit]
// $0498: P2 Health Drain Timer [8-bit]
// $0499: P2 Health [8-bit]
// $049C: P2 Lives [8-bit]
// $04A8: Music [8-bit]
//        0x03 = Round clear
//        0x04 = Game over
//        0x05 = Name entry
//        0x06 = Lair
//        0x07 = Boss
//        0x08 = Round 4, 5, 10
//        0x09 = Round 9, 13
//        0x10 = Round 7, 8
//        0x11 = Round 2, 12
//        0x12 = Round 1, 11
//        0x13 = Round 3, 6
//        0x14 = Round 14
//        0x15 = Ending/credits
//        0x20 = None
// $0B73: P1 Invincibility Active [8-bit]
//        Prevents grabbing ledges, and standing on other player
// $0B74: P2 Invincibility Active [8-bit]
// $0B75: Pink Fairy/Trix Effect Active [8-bit]
//        0x40 = Trix effect (transforms hidden food into flowers)
//        0x80 = Pink Fairy effect (transforms hidden food into cakes)
// $0B9F: Pink Fairy Effect Timer - Smaller [8-bit]
//        Starts at 0x58, loops
// $0BA1: Pink Fairy Effect Timer - Larger [8-bit]
//        Starts at 0x02
//        Decrements when smaller Pink Fairy timer reaches 0
// $0BA3: Trix Effect Timer - Smaller [8-bit]
//        Starts at 0xb0, loops
// $0BA5: Trix Effect Timer - Larger [8-bit]
//        Starts at 0x04
//        Decrements when smaller Trix timer reaches 0
// $0BA9: Platformer Stage Progress [16-bit]
// $0BBD: Invincibility Timer - Larger [8-bit]
//        Starts at 0x04 from Blue Fairy
//        Decrements when smaller invincibility timer reaches 0
// $0BBF: Invincibility Timer - Smaller [8-bit]
//        Starts at 0x77 after dying
//        Starts at 0xb0 from Blue Fairy, loops
// $0BCF: Stage Progress [16-bit]
//        Resets to 0 at shooter phase and again at boss
// $1001: Selected Round Number [8-bit]
//        On Round Select screen
// $1002: Selected System Switch [8-bit]
//        On Round Select screen
// $21C5: Music [8-bit]
//        Can freeze to change music
// $21F5: Continue Cheat Input [8-bit]
//        0x01 to 0x05 = Left, Right, Down, Up, Select. Then press Left
//        Only at Game Over screen
// $9494: Round 1 Bonus [16-bit]

screen = byte(0x3f)
system_switches = 0x52
platformer_progress = word(0xae)

player_activity = 0x400
round = byte(0x404)
p1_continues = byte(0x46a)
p2_continues = byte(0x46b)
p1_score = tbyte(0x46e) * 10
p1_weapon = byte(0x479)
p1_health_word = word(0x47f)
p1_lives = byte(0x483)
p2_score = tbyte(0x487) * 10
p2_weapon = byte(0x492)
p2_health_word = word(0x498)
p2_lives = byte(0x49c)
music = byte(0x4a8)

//
//
//

game_over = screen == 0x10
mode_select = screen == 0x12
title_screen = screen == 0x14
no_switches = byte(system_switches) == 0
round_1_start = platformer_progress == 0xad72

p1_active_only = byte(player_activity) == 4
both_players_active = byte(player_activity) == 0xc
p2_active = bit3(player_activity) == 1

no_p2 =
    disable_when(
        p2_active,
        until =
            mode_select ||
            title_screen
    )

p1_death = p1_lives < prev(p1_lives)

p1_lose_all_lives =
    prev(p1_lives) == 1 &&
    p1_lives == 0

p1_spiral = p1_weapon == 2
p1_perfect_bonus = p1_health_word >= 0x3736

p2_death = p2_lives < prev(p2_lives)

p2_lose_all_lives =
    prev(p2_lives) == 1 &&
    p2_lives == 0

p2_spiral = p2_weapon == 2
p2_perfect_bonus = p2_health_word >= 0x3736
round_clear_music = music == 3
ending_music = music == 0x15

clear_round =
    prev(music) == 7 &&
    round_clear_music

beat_game =
    prev(music) == 0x20 &&
    ending_music

// ------------
// Achievements
// ------------

progress_array = [
    ["Uroconda's Sea", 3],
    ["Garamanda's Jungle", 4],
    ["Gomorin's Cave", 5],
    ["Royal Mama's Hills", 5],
    ["Gairaru's Forest", 5],
    ["Sunglar's Fortress", 5],
    ["Icerego's Mountains", 5],
    ["Saboteria's Desert", 5],
    ["Dranken's Castle", 5],
    ["Mashalot's Town", 5],
    ["Taramba's Islands", 5],
    ["Demondran's Glacier", 5],
    ["Armor King's Palace", 10],
    ["High Baroom's Base", 25]
]

for i in range(0, 13) {
    if (i < 13) {
        description_param =
            format(
                "Round {0}",
                i + 1
            )
        type_param = "PROGRESSION"
        logic_param = clear_round
    }
    else {
        description_param = "the game"
        type_param = "WIN_CONDITION"
        logic_param = beat_game
    }
    achievement(
        title = progress_array[i][0],
        description =
            format(
                "Complete {0} without using cheats",
                description_param
            ),
        points = progress_array[i][1],
        type = type_param,
        trigger =
            once(
                no_switches &&
                p1_active_only &&
                round == 1 &&
                round_1_start
            ) &&
            never(game_over) &&
            never(mode_select) &&
            never(title_screen) &&
            never(p2_active) &&
            no_switches &&
            p1_active_only &&
            round == i + 1 &&
            logic_param
    )
}

achievement(
    title = "Healthy Hero",
    description = "Earn a perfect round bonus of 5600 (round select allowed)",
    points = 5,
    trigger =
        no_p2 &&
        no_switches &&
        p1_active_only &&
        p1_perfect_bonus &&
        clear_round
)

// Title, description, points, score
score_array = [
    ["The Fruit Must Flow I", "100,000", 5, 100000],
    ["The Fruit Must Flow II", "200,000", 10, 200000],
    ["The Fruit Must Flow III", "300,000", 10, 300000]
]

for i in range(0, 2) {
    achievement(
        title = score_array[i][0],
        description =
            format(
                "Score {0} points (round select allowed)",
                score_array[i][1]
            ),
        points = score_array[i][2],
        trigger =
            no_p2 &&
            no_switches &&
            p1_active_only &&
            prev(p1_score) < score_array[i][3] &&
            p1_score >= score_array[i][3]
    )
}

deathless_array = [
    ["Wonderful Sea", 3],
    ["Wonderful Jungle", 4],
    ["Wonderful Cave", 5],
    ["Wonderful Hills", 5],
    ["Wonderful Forest", 5],
    ["Wonderful Fortress", 5],
    ["Wonderful Mountains", 5],
    ["Wonderful Desert", 10],
    ["Wonderful Castle", 10],
    ["Wonderful Town", 10],
    ["Wonderful Islands", 10],
    ["Wonderful Glacier", 10],
    ["Wonderful Palace", 10],
    ["Wonderful Base", 10]
]

for i in range(0, 13) {
    achievement(
        title = deathless_array[i][0],
        description =
            format(
                "Complete Round {0} without dying (round select allowed)",
                i + 1
            ),
        points = deathless_array[i][1],
        trigger =
            disable_when(
                p1_death,
                until =
                    game_over ||
                    round != i + 1
            ) &&
            disable_when(p2_active) &&
            no_switches &&
            p1_active_only &&
            round == i + 1 &&
            trigger_when(clear_round) &&
            (
                (
                    never(mode_select) &&
                    never(title_screen)
                ) ||
                (
                    always_false()
                )
            )
    )
}

achievement(
    title = "Close Combat",
    description = "Defeat a boss using the Spiral weapon (round select allowed)",
    points = 5,
    trigger =
        no_p2 &&
        no_switches &&
        p1_active_only &&
        p1_spiral &&
        clear_round
)

// ------------
// Leaderboards
// ------------

leaderboard(
    id = 96482,
    title = "High Score",
    description = "Submits at continue/game over or after beating the game",
    start =
        no_p2 &&
        no_switches &&
        p1_score > 0 &&
        (
            (
                p1_lose_all_lives
            ) ||
            (
                p1_active_only &&
                round == 14 &&
                beat_game
            )
        ),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    once(
        p1_active_only &&
        prev(screen) == 0x12 &&
        screen != 0x12
    ) &&
    once(
        round == 14 &&
        beat_game
    ) &&
    never(mode_select) &&
    never(title_screen),
    "Completed the game! Lives: {0} • Continues: {1} • Score: {2}",
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    once(
        p1_active_only &&
        prev(screen) == 0x12 &&
        screen != 0x12
    ) &&
    never(mode_select) &&
    never(title_screen),
    "Round {0} • Lives: {1} • Continues: {2} • Score: {3}",
    rich_presence_value("Round", round),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    once(
        both_players_active &&
        prev(screen) == 0x12 &&
        screen != 0x12
    ) &&
    once(
        round == 14 &&
        beat_game
    ) &&
    never(mode_select) &&
    never(title_screen),
    "Completed the game! P1 Lives: {0} • P2 Lives: {1} • P1 Continues: {2} • P2 Continues: {3} • P1 Score: {4} • P2 Score: {5}",
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Lives", p2_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Continues", p2_continues),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_conditional_display(
    once(
        both_players_active &&
        prev(screen) == 0x12 &&
        screen != 0x12
    ) &&
    never(mode_select) &&
    never(title_screen),
    "Round {0} • P1 Lives: {1} • P2 Lives: {2} • P1 Continues: {3} • P2 Continues: {4} • P1 Score: {5} • P2 Score: {6}",
    rich_presence_value("Round", round),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Lives", p2_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Continues", p2_continues),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_conditional_display(
    p1_active_only,
    "Round {0} • Lives: {1} • Continues: {2} • Score: {3}",
    rich_presence_value("Round", round),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    p2_active,
    "Round {0} • P1 Lives: {1} • P2 Lives: {2} • P1 Continues: {3} • P2 Continues: {4} • P1 Score: {5} • P2 Score: {6}",
    rich_presence_value("Round", round),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Lives", p2_lives),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Continues", p2_continues),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_display(
    "Preparing to save Monster Land!"
)