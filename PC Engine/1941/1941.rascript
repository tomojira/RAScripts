// 1941: Counter Attack
// #ID = 6205

// $0012: 0x07 -> 0x0c = Last phase in stage 1-5 results screen
// $0077: Bit0 = P1 active
//        Bit1 = P2 active
//        Includes demos
//        Inactive at stage results screen
// $0078: Stage Loaded [8-bit]
//        0x00 to 0x05
//        0x06 = Ending, briefly. Then loads the earlier stages for the ending scenes
//        Also functions during the title screen background demos
//        Can be frozen to start at a certain stage
// $009D: Stage Progress [16-bit]
//        Controls enemy spawns
//        0x0887 = Stage 1 boss
// $00A4: Stage Progress [8-bit]
//        0x10 = Stage 1 boss
//        0x2f = Stage 2 boss
//        0x1f = Stage 3 boss
//        0x2d = Stage 4 boss
//        0x1b = Stage 5 boss
//        0x20 to 0x2f = Stage 6 final boss (loops)
// $00C7: 0x00 = Stage results screen - or game over! Must use with health check or player active check
//        0xff = Not results screen or game over
//        75 frames into stage 1-5 results screen, air targets destroyed changes to BCD %, and promotion is updated
//        40 frames into stage 6 results
// $00D4: 0x9e = Last phase in stage 1-5 results screen
// $00E5: Air Targets Spawned in Current Stage So Far [16-bit]
// $00E7: P1 Air Targets Destroyed in Current Stage [16-bit]
//        Changes to 16-bit BCD at results screen
// $00E9: P2 Air Targets Destroyed in Current Stage [16-bit]
//        Changes to 16-bit BCD at results screen
// $00EB: Ground Targets Spawned in Current Stage So Far [16-bit]
// $00ED: P1 Ground Targets Destroyed in Current Stage [16-bit]
// $00EF: P2 Ground Targets Destroyed in Current Stage [16-bit]
// $00F4: P1 Score [32-bit BCD]
// $00F8: P2 Score [32-bit BCD]
// $0232: Difficulty Level Option [8-bit]
//        0x00 to 0x07
//        0x03 = Default
//        Effect unclear
// $0233: Timer Option [8-bit]
//        0x00 to 0x03
//        0x00 = Default
//        Effect unclear
// $0234: Speed Option [8-bit]
//        0x00 to 0x03
//        0x00 = Default
//        Effect unclear
// $0235: Life Option [8-bit]
//        0x03 or 0x04
//        0x03 = Default
// $0236: Coin Option [8-bit]
//        0x03 to 0x05
//        0x03 = Default
//        Number of continues
// $0237: Sound Test [8-bit]
// $0302: 0xff = In-game
// $0728: P1 Continues [8-bit]
// $0729: P2 Continues [8-bit]
// $072A: Results Screen: Air Targets Destroyed [16-bit BCD]
// $072E: Results Screen: Ground Targets Destroyed [16-bit BCD]
// $0732: Last Promotion Earned [8-bit]
//        0x00 = No promotion - 0% to 49%, 51% to 74%
//        0x01 = Promotion - 75% to 94%
//        0x02 = Special promotion (x2) - 95% to 99%
//        0x03 = Special promotion (x3) - 50% or 100%
// $0733: 0x00 = P1 plane inactive - stage results screen, title screen, demo, ending
//        0x01 = P1 plane active
//        0x02 = P2 plane active, P1 inactive
// $0734: 0x00 = P2 plane inactive - stage results screen, title screen, demo, ending
//        0x01 = P2 plane active
//        0x02 = P1 plane active, P2 inactive
// $07FD: P1 Side Fighters
//        Bit0 = Left
//        Bit1 = Right
// $07FE: P2 Side Fighters
// $0808: P1 Charge Attack [8-bit]
//        0x00 to 0x07
// $0809: P2 Charge Attack [8-bit]
// $080A: P1 Weapon Timer [16-bit]
// $080C: P2 Weapon Timer [16-bit]
// $0820: P1 Health [8-bit]
//        0x00 to 0x03+
//        0xff = Death
// $0821: P2 Health [8-bit]
// $0822: 0x01 = In-game
// $0823: P1 Continue Timer [8-bit]
// $0824: P2 Continue Timer [8-bit]
// $0825: Bit0 = P1 active
//        Bit1 = P2 active
//        Doesn't include demos
//        Still active at stage results screen
// $0833: P1 Rank [8-bit]
//        0x00 = Gunsou (Sergeant)
//        0x01 = Shoui (Second Lieutenant)
//        0x02 = Chuui (First Lieutenant)
//        0x03 = Taii (Captain)
//        0x04 = Shousa (Major)
//        0x05 = Chuusa (Lieutenant Colonel)
//        0x06 = Taisa (Colonel)
//        0x07 = Shoushou (Major General)
// $0834: P2 Rank [8-bit]
// $0835: P1 Weapon [8-bit]
//        0x01 = M-Gun
//        0x02 = S-Shell
//        0x03 = Missile
// $0836: P2 Weapon [8-bit]
// $0AAD: 0x08 = Stage results screen
// $1EC6: 0xff = Stage results screen

stage = byte(0x78)
stage_progress = byte(0xa4)
results_screen = byte(0xc7)
p1_air_targets_destroyed = word(0xe7)
p2_air_targets_destroyed = word(0xe9)
p1_ground_targets_destroyed = word(0xed)
p2_ground_targets_destroyed = word(0xef)
p1_score = bcd(dword(0xf4))
p2_score = bcd(dword(0xf8))

difficulty_option = byte(0x232)
timer_option = byte(0x233)
speed_option = byte(0x234)
life_option = byte(0x235)
coin_option = byte(0x236)

p1_continues = byte(0x728)
p2_continues = byte(0x729)
promotion = byte(0x732)
p1_health = byte(0x820)
p2_health = byte(0x821)
in_game = byte(0x822)
player_activity = 0x825
p1_rank = byte(0x833)
p2_rank = byte(0x834)

//
//
//

stage_1_boss = stage_progress == 0x10
stage_2_boss = stage_progress == 0x2f
stage_3_boss = stage_progress == 0x1f
stage_4_boss = stage_progress == 0x2d
stage_5_boss = stage_progress == 0x1b
stage_6_boss = stage_progress >= 0x20

complete_stage =
    p1_health <= 6 &&
    prev(results_screen) == 0xff &&
    results_screen == 0

complete_stage_wait =
    p1_health <= 6 &&
    repeated(80,
        results_screen == 0
    )

complete_stage_6_wait =
    p1_health <= 6 &&
    repeated(45,
        results_screen == 0
    )

p1_total_targets_destroyed = p1_air_targets_destroyed + p1_ground_targets_destroyed
p2_total_targets_destroyed = p2_air_targets_destroyed + p2_ground_targets_destroyed

default_options =
    difficulty_option >= 3 &&
    timer_option == 0 &&
    speed_option == 0 &&
    life_option == 3 &&
    coin_option == 3 &&
    in_game == 1

normal_promotion = promotion >= 1
special_promotion = promotion >= 2

p1_death =
    prev(p1_health) == 0 &&
    p1_health == 0xff

p2_death =
    prev(p2_health) == 0 &&
    p2_health == 0xff

p1_inactive = bit0(player_activity) == 0
p1_active = bit0(player_activity) == 1
p2_inactive = bit1(player_activity) == 0
p2_active = bit1(player_activity) == 1
both_players_inactive = byte(player_activity) == 0
both_players_active = byte(player_activity) == 3

no_p2 =
    disable_when(
        p2_active,
        until = in_game == 0
    )

default_options_1p =
    default_options &&
    no_p2

default_options_2p =
    default_options &&
    both_players_active

p1_earn_major_general =
    prev(p1_rank) < 7 &&
    p1_rank == 7

//
//
//

boss_array = [
    stage_1_boss,
    stage_2_boss,
    stage_3_boss,
    stage_4_boss,
    stage_5_boss,
    stage_6_boss
]

rank_dict = {
    0: "Sergeant",
    1: "Second Lieutenant",
    2: "First Lieutenant",
    3: "Captain",
    4: "Major",
    5: "Lieutenant Colonel",
    6: "Colonel",
    7: "Major General"
}

// ------------
// Achievements
// ------------

stage_param = 0

function achievement_progress(title, points) {
    if (stage_param < 5) {
        type_param = "PROGRESSION"
    }
    else {
        type_param = "WIN_CONDITION"
    }
    achievement(
        title = title,
        description =
            format(
                "Complete Stage {0} on default settings",
                stage_param + 1
            ),
        points = points,
        type = type_param,
        trigger =
            default_options_1p &&
            stage == stage_param &&
            boss_array[stage_param] &&
            complete_stage
    )
    stage_param = stage_param + 1
}

achievement_progress("The Atlantic", 3)
achievement_progress("Sea Base", 5)
achievement_progress("Fortified Zone", 5)
achievement_progress("The City", 5)
achievement_progress("Air Battle", 10)
achievement_progress("The Final Battle", 25)

achievement(
    title = "Major Achievement",
    description = "Earn the rank of Major General on default settings",
    points = 10,
    trigger =
        default_options_1p &&
        results_screen == 0 &&
        p1_earn_major_general
)

numeral_array = ["I", "II", "III", "IV", "V", "VI"]
stage_param = 0

function achievement_promotion(points) {
    if (stage_param == 0) {
        description_param = "special "
        trigger_param_1 = complete_stage_wait
        trigger_param_2 = special_promotion
    }
    else if (stage_param < 5) {
        description_param = ""
        trigger_param_1 = complete_stage_wait
        trigger_param_2 = normal_promotion
    }
    else {
        description_param = ""
        trigger_param_1 = complete_stage_6_wait
        trigger_param_2 = normal_promotion
    }
    achievement(
        title =
            format(
                "Distinguished Service {0}",
                numeral_array[stage_param]
            ),
        description =
            format(
                "Earn a {0}promotion in Stage {1} on default settings",
                description_param,
                stage_param + 1
            ),
        points = points,
        trigger =
            default_options_1p &&
            stage == stage_param &&
            boss_array[stage_param] &&
            trigger_param_1 &&
            trigger_param_2 &&
            never(results_screen != 0)
    )
    stage_param = stage_param + 1
}

achievement_promotion(3)
achievement_promotion(5)
achievement_promotion(5)
achievement_promotion(10)
achievement_promotion(10)
achievement_promotion(10)

stage_param = 0

function achievement_deathless(points) {
    achievement(
        title =
            format(
                "Peerless Pilot {0}",
                numeral_array[stage_param]
            ),
        description =
            format(
                "Complete Stage {0} without dying on default settings",
                stage_param + 1
            ),
        points = points,
        trigger =
            default_options_1p &&
            stage == stage_param &&
            trigger_when(boss_array[stage_param]) &&
            trigger_when(complete_stage) &&
            disable_when(
                p1_death,
                until =
                    in_game == 0 ||
                    stage != stage_param
            )
    )
    stage_param = stage_param + 1
}

achievement_deathless(3)
achievement_deathless(5)
achievement_deathless(5)
achievement_deathless(10)
achievement_deathless(10)
achievement_deathless(10)

achievement(
    title = "Perfect Pilot",
    description = "Complete the game without using a continue on default settings",
    points = 50,
    trigger =
        default_options_1p &&
        trigger_when(stage == 5) &&
        trigger_when(stage_6_boss) &&
        p1_continues == 3 &&
        trigger_when(complete_stage)
)

// ------------
// Leaderboards
// ------------

for i in range(0, 1) {
    if (i == 0) {
        title_param = ": 1CC"
        description_param = ""
        logic_param_1 = p1_continues == 3
        logic_param_2 = always_false()
    }
    else {
        title_param = ""
        description_param = " at game over or"
        logic_param_1 = p1_score > 0
        logic_param_2 =
            p1_continues == 0 &&
            p1_death
    }
    leaderboard(
        title =
            format(
                "High Score{0}",
                title_param
            ),
        description =
            format(
                "Submits{0} after beating the game (default settings)",
                description_param
            ),
        start =
            default_options_1p &&
            logic_param_1 &&
            (
                (
                    stage == 5 &&
                    stage_6_boss &&
                    complete_stage
                ) ||
                (
                    logic_param_2
                )
            ),
        cancel = always_false(),
        submit = always_true(),
        value = measured(p1_score),
        format = "VALUE"
    )
}

for i in range(0, 5) {
    leaderboard(
        title =
            format(
                "Stage {0}: Targets Destroyed",
                i + 1
            ),
        description = "Includes all targets, not only the air target count displayed on the results screen (default settings)",
        start =
            default_options_1p &&
            stage == i &&
            boss_array[i] &&
            complete_stage,
        cancel = always_false(),
        submit = always_true(),
        value = measured(p1_total_targets_destroyed),
        format = "VALUE"
    )
}

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    once(
        stage == 5 &&
        stage_6_boss &&
        results_screen == 0 &&
        never(in_game == 0)
    ) &&
    (
        p2_active ||
        p2_score > 0
    ),
    "Completed the game! P1 Rank {0}: {1} • P2 Rank {2}: {3} • P1 Continues: {4} • P2 Continues: {5} • P1 Score: {6} • P2 Score: {7}",
    rich_presence_value("RankNumber", p1_rank + 1),
    rich_presence_lookup("RankName", p1_rank, rank_dict),
    rich_presence_value("RankNumber", p2_rank + 1),
    rich_presence_lookup("RankName", p2_rank, rank_dict),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Continues", p2_continues),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_conditional_display(
    once(
        stage == 5 &&
        stage_6_boss &&
        results_screen == 0 &&
        never(in_game == 0)
    ),
    "Completed the game! Rank {0}: {1} • Continues: {2} • Score: {3}",
    rich_presence_value("RankNumber", p1_rank + 1),
    rich_presence_lookup("RankName", p1_rank, rank_dict),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    in_game == 1 &&
    (
        p2_active ||
        p2_score > 0
    ),
    "Stage {0} • P1 Rank {1}: {2} • P2 Rank {3}: {4} • P1 Continues: {5} • P2 Continues: {6} • P1 Score: {7} • P2 Score: {8}",
    rich_presence_value("Stage", stage + 1),
    rich_presence_value("RankNumber", p1_rank + 1),
    rich_presence_lookup("RankName", p1_rank, rank_dict),
    rich_presence_value("RankNumber", p2_rank + 1),
    rich_presence_lookup("RankName", p2_rank, rank_dict),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Continues", p2_continues),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_conditional_display(
    in_game == 1,
    "Stage {0} • Rank {1}: {2} • Continues: {3} • Score: {4}",
    rich_presence_value("Stage", stage + 1),
    rich_presence_value("RankNumber", p1_rank + 1),
    rich_presence_lookup("RankName", p1_rank, rank_dict),
    rich_presence_value("Continues", p1_continues),
    rich_presence_value("Score", p1_score)
)

rich_presence_display(
    "Preparing for war in the Atlantic"
)