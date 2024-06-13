// In the Hunt [Subset - Multi]
// #ID = 28617

// $155C10: Difficulty Setting [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
//          0x03 = Madness
// $155C12: Starting Ships/Lives Setting [8-bit]
//          0x00 = 2
//          0x01 = 3 (Default)
//          0x02 = 4
//          0x03 = 5
// $155C14: Sound Setting [8-bit]
//          0x00 = Off
//          0x01 = On
// $155C16: Music Setting [8-bit]
//          0x00 = Off
//          0x01 = On
// $17B0A3: 0x03 = In-game
// $17C6CC: Stage [8-bit]
//          0x00 = Intro, Title, Stage 1
//          0x01 to 0x05 = Stage 2 to 6
//          0x06 = Stage 6 ends, Multi duel
//          0x07 = Multi ending - fight to the death
//          0x08 = Multi ending - time runs out
//          0x09 = 1CC ending
//          0x0a = Normal ending
// $17C6DB: 0xd5 = In-game
//          0xd0 = Credits
//          0xcd = Name entry, intro, title
// $17C7D8: P1 Horizontal Power-up Type [8-bit]
//          0x02 = Red (Cracker, straightforward attack)
//          0x04 = Blue (Supersonic Wave Torpedo, leaves a wake)
//          0x06 = Green (Hyper Torpedo, bursts into clusters)
//          All power-ups are lost after dying
// $17C7DA: P1 Horizontal Power-up Level [8-bit]
//          0x01 to 0x03
// $17C7DC: P1 Vertical Power-up Type [8-bit]
//          0x02 = M (Missile when underwater, Tracking Missile at surface)
//          0x04 = A (Floating Mine when underwater, Machine Gun at surface)
// $17C7DE: P1 Vertical Power-up Level [8-bit]
//          0x01 to 0x03
//          Needs a type set or game freezes
// $17C7E0: P1 Lives [8-bit]
// $17C7E2: P1 Stars [8-bit]
//          Collect 100 for an extra life
// $17C7E8: Enemies Destroyed in Current Stage [8-bit]
// $17C818: P2 Horizontal Power-up Type [8-bit]
// $17C81A: P2 Horizontal Power-up Level [8-bit]
// $17C81C: P2 Vertical Power-up Type [8-bit]
// $17C81E: P2 Vertical Power-up Level [8-bit]
// $17C820: P2 Lives [8-bit]
// $17C822: P2 Stars [8-bit]
// $17C8E8: P1 Score 0000XXXX [16-bit BE BCD]
//          Using a continue adds 1 - until last credit, then score resets to 0
//          Address changes after entering high score - see pointer
// $17C8EA: P1 Score XXXX0000 [16-bit BE BCD]
// $17C8F8: P2 Score 0000XXXX [16-bit BE BCD]
// $17C8FA: P2 Score XXXX0000 [16-bit BE BCD]
// $17C932: Pointer to P1 Score [16-bit]
//          +0x170000
// $17C936: Pointer to P2 Score [16-bit]
//          +0x170000
// $17C948: Players Status
//          Bit0 = P1 alive
//          Bit1 = P2 alive
//          Bit2 = P1 active
//          Bit3 = P2 active
//          Bit6 = P1 game over, also flickers after using final continue
//          Bit7 = P2 game over
// $17C9A8: Credits [8-bit]
//          Start from 6
// $17D4C9: P2 Invincibility Active [8-bit]
// $17D53A: P2 Continue Timer [16-bit]
// $17D5C9: P1 Invincibility Active [8-bit]
// $17DF3A: P1 Continue Timer [16-bit]
// $17E844: Continue Timer - Big Graphic Display [8-bit]
// $1922AC: Timer [8-bit]
// $1B0E48: 0xb0 = In-game
//          0x98 = 2P Vs. ending

in_game = byte(0x1b0e48) == 0xb0
in_game_vs = byte(0x1b0e48) == 0x98
name_entry = byte(0x17c6db) == 0xcd

difficulty = byte(0x155c10)
normal = 1
madness = 3

lives_setting = byte(0x155c12)

stage = byte(0x17c6cc)

p1_horizontal_power_level = byte(0x17c7da)
p1_vertical_power_level = byte(0x17c7de)
p1_lives = byte(0x17c7e0)
p1_stars = byte(0x17c7e2)

p2_horizontal_power_level = byte(0x17c81a)
p2_vertical_power_level = byte(0x17c81e)
p2_lives = byte(0x17c820)
p2_stars = byte(0x17c822)

p1_score_pointer = word(0x17c932)
p2_score_pointer = word(0x17c936)

p1_score =
    bcd(word_be(p1_score_pointer + 0x170002)) * 10000 +
    bcd(word_be(p1_score_pointer + 0x170000))

p2_score =
    bcd(word_be(p2_score_pointer + 0x170002)) * 10000 +
    bcd(word_be(p2_score_pointer + 0x170000))

player_status = 0x17c948
p1_alive = bit0(player_status)
p2_alive = bit1(player_status)
p1_active = bit2(player_status)
p2_active = bit3(player_status)

credits = byte(0x17c9a8)

no_p2 =
    disable_when(
        p2_active == 1,
        until = credits == 6
    )

p1_game_over =
    prev(bit6(player_status)) == 0 &&
    bit6(player_status) == 1

p2_game_over =
    prev(bit7(player_status)) == 0 &&
    bit7(player_status) == 1

p1_continue_timer = word(0x17df3a)
p2_continue_timer = word(0x17d53a)

continue_timer_graphic = byte(0x17e844)

normal_settings =
    in_game &&
    p1_active == 1 &&
    difficulty >= normal &&
    lives_setting <= 1 &&
    no_p2

madness_settings =
    in_game &&
    p1_active == 1 &&
    difficulty == madness &&
    lives_setting <= 1 &&
    no_p2

leaderboard_settings =
    in_game &&
    lives_setting <= 1 &&
    no_p2

multi_normal_settings =
    in_game &&
    p1_active == 1 &&
    p2_active == 1 &&
    difficulty >= normal &&
    lives_setting <= 1

multi_normal_settings_vs =
    in_game_vs &&
    difficulty >= normal &&
    lives_setting <= 1

multi_madness_settings =
    in_game &&
    p1_active == 1 &&
    p2_active == 1 &&
    difficulty == madness &&
    lives_setting <= 1

multi_leaderboard_settings =
    in_game &&
    lives_setting <= 1

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard",
    3: "Madness"
}

// ------------
// Achievements
// ------------

stage_title_array = [
    "The South Pole",
    "The Channel",
    "Seabed Ruins",
    "Sunken Town",
    "Deep Dark Sea",
    "Ruler of the World",
    "Together Till the End"
]

stage_points_array = [
    5,
    5,
    10,
    10,
    25,
    50,
    50
]

stage_id_array = range(400541, 400547)

for i in range(0, 6) {
    if (i <= 4) {
        description_param =
            format(
                "Complete Stage {0} together on default settings or harder",
                i + 1
            )
        trigger_param =
            multi_normal_settings &&
            prev(stage) == i &&
            stage == i + 1
    }
    else if (i == 5) {
        description_param =
            "Fight each other to the death and see the third ending (default settings or harder)"
        trigger_param =
            multi_normal_settings_vs &&
            prev(stage) == 6 &&
            stage == 7
    }
    else {
        description_param =
            "Run out of time and see the fourth ending (default settings or harder)"
        trigger_param =
            multi_normal_settings_vs &&
            prev(stage) == 6 &&
            stage == 8
    }
    achievement(
        id = stage_id_array[i],
        title = stage_title_array[i],
        description = description_param,
        points = stage_points_array[i],
        trigger =
            trigger_param
    )
}

achievement(
    id = 400548,
    title = "Mad Mariners",
    description = "Complete the game together on madness difficulty (default ships setting or harder)",
    points = 50,
    trigger =
        multi_madness_settings &&
        prev(stage) == 5 &&
        stage == 6
)

achievement(
    id = 400549,
    title = "Sea of Four",
    description = "Complete the game together using 2 or fewer continues (default settings or harder)",
    points = 50,
    trigger =
        multi_normal_settings &&
        credits >= 2 &&
        trigger_when(prev(stage) == 5) &&
        trigger_when(stage == 6)
)

achievement(
    id = 400550,
    title = "Super Subs",
    description = "Complete the game together without using a continue (default settings or harder)",
    points = 100,
    trigger =
        multi_normal_settings &&
        credits == 4 &&
        trigger_when(prev(stage) == 5) &&
        trigger_when(stage == 6)
)

achievement(
    id = 400551,
    title = "Treasure Hunters",
    description = "Collect 100 stars as either player to gain an extra ship (default settings or harder)",
    points = 5,
    trigger =
        multi_normal_settings &&
        (
            (
                prev(p1_stars) < 100 &&
                p1_stars >= 100
            ) ||
            (
                prev(p2_stars) < 100 &&
                p2_stars >= 100
            )
        )
)

achievement(
    id = 400552,
    title = "Armed to the Teeth",
    description = "Fully power up your weapons together at the same time (default settings or harder)",
    points = 5,
    trigger =
        multi_normal_settings &&
        __ornext(
            prev(p1_horizontal_power_level) == 2 ||
            prev(p1_vertical_power_level) == 2 ||
            prev(p2_horizontal_power_level) == 2 ||
            prev(p2_vertical_power_level) == 2
        ) &&
        p1_horizontal_power_level == 3 &&
        p1_vertical_power_level == 3 &&
        p2_horizontal_power_level == 3 &&
        p2_vertical_power_level == 3
)

deathless_title_array = [
    "Antarctic Assault",
    "Channel Challenge",
    "Ruthless Ruins",
    "Urban Onslaught",
    "Deep Dark Trouble",
    "Based"
]

deathless_points_array = [
    10,
    10,
    25,
    25,
    50,
    50
]

deathless_id_array = range(400553, 400558)

for i in range(0, 5) {
    if (i == 0) {
        checkpoint_param =
            stage == 0 &&
            prev(credits) == 6 &&
            credits == 4
    }
    else {
        checkpoint_param =
            prev(stage) == i - 1 &&
            stage == i
    }
    achievement(
        id = deathless_id_array[i],
        title = deathless_title_array[i],
        description =
            format(
                "Complete Stage {0} together without dying (default settings or harder)",
                i + 1
            ),
        points = deathless_points_array[i],
        trigger =
            multi_normal_settings &&
            once(checkpoint_param) &&
            never(p1_lives < prev(p1_lives)) &&
            never(p2_lives < prev(p2_lives)) &&
            trigger_when(prev(stage) == i) &&
            trigger_when(stage == i + 1)
    )
}

// ------------
// Leaderboards
// ------------

cc_title_array = [", No Continues", ""]
p_title_array = ["P1", "P2"]
p_value_array = [p1_score, p2_score]
leaderboard_id_array = range(89741, 89756)
leaderboard_id_index = 0

for d in range(3, 0, -1) {
    for c in range(0, 1) {
        for p in range(0, 1) {
            if (c == 0) {
                description_param = "Submits after beating the game together (default ships setting or harder)"
                start_param =
                    p1_active == 1 &&
                    p2_active == 1 &&
                    credits == 4 &&
                    prev(stage) == 5 &&
                    stage == 6
            }
            else {
                description_param = "Submits at continue/game over or after beating the game together (default ships setting or harder)"
                start_param =
                    p1_score > 0 &&
                    p2_score > 0 &&
                    (
                        (
                            p1_active == 1 &&
                            p2_active == 1 &&
                            prev(stage) == 5 &&
                            stage == 6
                        ) ||
                        (
                            prev(continue_timer_graphic) == 0 &&
                            continue_timer_graphic > 0
                        ) ||
                        (
                            credits == 0 &&
                            __ornext(
                                prev(p1_lives) == 1 ||
                                prev(p2_lives) == 1
                            ) &&
                            p1_lives == 0 &&
                            p2_lives == 0
                        )
                    )
            }
            leaderboard(
                id = leaderboard_id_array[leaderboard_id_index],
                title =
                    format(
                        "{0} High Score: {1}{2}",
                        p_title_array[p],
                        difficulty_dict[d],
                        cc_title_array[c]
                    ),
                description = description_param,
                start =
                    multi_leaderboard_settings &&
                    difficulty == d &&
                    start_param,
                cancel = always_false(),
                submit = always_true(),
                value = measured(p_value_array[p]),
                format = "VALUE"
            )
            leaderboard_id_index = leaderboard_id_index + 1
        }
    }
}

// -------------
// Rich Presence
// -------------

// Same as the main set

rich_presence_conditional_display(
    in_game_vs &&
    !name_entry &&
    (
        stage == 7 ||
        stage == 8
    ),
    "Completed the game! P1 Ships: {0} • P2 Ships: {1} • Credits: {2} • P1 Score: {3} • P2 Score: {4} • {5}",
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("P2Lives", p2_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    in_game_vs &&
    p2_score > 0 &&
    stage == 6,
    "Fight to the death! P1 Ships: {0} • P2 Ships: {1} • Credits: {2} • P1 Score: {3} • P2 Score: {4} • {5}",
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("P2Lives", p2_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    in_game &&
    (
        p1_active == 1 ||
        p1_continue_timer > 0
    ) &&
    p2_active == 0 &&
    p2_score == 0 &&
    stage <= 5,
    "Stage {0} • Ships: {1} • Credits: {2} • Score: {3} • {4}",
    rich_presence_value("Stage", stage + 1),
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    in_game &&
    (
        p1_active == 1 ||
        p1_continue_timer > 0
    ) &&
    (
        p2_active == 1 ||
        p2_continue_timer > 0 ||
        p2_score > 0
    ) &&
    stage <= 5,
    "Stage {0} • P1 Ships: {1} • P2 Ships: {2} • Credits: {3} • P1 Score: {4} • P2 Score: {5} • {6}",
    rich_presence_value("Stage", stage + 1),
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("P2Lives", p2_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    in_game &&
    !name_entry &&
    p1_active == 1 &&
    stage >= 6,
    "Completed the game! Ships: {0} • Credits: {1} • Score: {2} • {3}",
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict)
)

rich_presence_display(
    "Preparing to take the fight to the D.A.S."
)