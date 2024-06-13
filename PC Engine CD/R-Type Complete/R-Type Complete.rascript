// R-Type Complete
// #ID = 8864

// $000000: Many of these addresses work differently in cutscenes
// $000022: Stage 5-8 Progress [16-bit]
//          0x4004 = Stage 5 start
//          0x4138 = Stage 5 boss
//          0x413c = Stage 5 clear
//          0x4140 = Stage 6 start
//          0x42f8 = Stage 6 boss 1
//          0x42fc = Stage 6 boss 2
//          0x4300 = Stage 6 clear
//          0x4304 = Stage 7 start
//          0x45c0 = Stage 7 boss
//          0x45c8 = Stage 7 clear
//          0x45cc = Stage 8 start
//          0x4664 = Stage 8 boss
//          0x466c = Stage 8 clear
// $000029: Stage 1-4 Progress [16-bit]
//          0x0028 = Stage start
//          0x0037 = Stage 1 start after dying
//          0x014a = Stage 1 boss
//          0x014f = Stage 1 clear
//          0x00f0 = Stage 2 boss
//          0x00f5 = Stage 2 clear
//          0x0054 = Stage 3 boss, clear
//          0x00f5 = Stage 4 boss, clear
// $000039: Stage 1-4 Difficulty [8-bit]
//          0x00 = Easy
//          0x01 = Normal
//          0x02 = Hard
//          Only active in-game
// $00003B: Stage 5-8 Difficulty [8-bit]
// $0000F5: 0xf0 = In-game
// $00027A: 0x00 = Death or stage score screen
//          0xd8 = Ship active
// $000285: 0xc6 = In-game
//          0xe0 = Title screen, cutscenes, ending
//          Unreliable, pointer changes for cutscene before this changes
// $0002D4: Invincibility Active [8-bit]
//          0x01 = After spawning
//          0xff = No-death cheat - but also after beating last boss! Be careful blocking cheat
//          Address shifts back 2 bytes in Stage 5, then back 1 more in Stage 7
//          Same with this range up to the Lives address
// $0002D6: Speed Level [8-bit]
//          0x01 to 0x04
// $0002D7: Bits Active [8-bit]
//          0x01 to 0x02
// $0002D8: Missiles Active [8-bit]
//          Can accumulate beyond 0x01, without any additional effect
// $0002D9: Stage Clear Animation [8-bit]
//          0xff
// $0002E0: Charge Meter [8-bit]
//          0x80 = Max
// $0002E4: Force Pod Active [8-bit]
//          0x01 to 0x03 = Level 1 to 3
// $0002E5: Laser Type [8-bit]
//          0x00 = Blue
//          0x01 = Yellow
//          0x02 = Red
// $0002EA: Score: Ones [8-bit BCD]
// $0002EB: Score: Tens [8-bit BCD]
// $0002EC: Score: Hundreds [8-bit BCD]
// $0002ED: Score: Thousands [8-bit BCD]
// $0002EE: Score: Ten Thousands [8-bit BCD]
// $0002EF: Score: Hundred Thousands [8-bit BCD]
// $0002F0: Score: Millions [8-bit BCD]
// $0002FC: Lives [8-bit]
//          Extend at 50,000, 200,000, 400,000, 500,000
// $000A07: 0x0a = No-death cheat
//          Only active on title screen
// $000BE4: 0x01 = Title screen
//          0x02 to 0x08 = Opening scene
// $000E70: Stage Score: Ones [8-bit BCD]
//          Only active at stage clear screen
//          These addresses shift in later stages
// $000E71: Stage Score: Tens [8-bit BCD]
// $000E72: Stage Score: Hundreds [8-bit BCD]
// $000E73: Stage Score: Thousands [8-bit BCD]
// $000E74: Stage Score: Ten Thousands [8-bit BCD]
// $000E75: Stage Score: Hundred Thousands [8-bit BCD]
//          Can show 0xff if stage score is lower than 100,000
// $000E76: Stage Score: Millions [8-bit BCD]
//          Can show 0xff if stage score is lower than 1,000,000
// $000FF5: Difficulty [8-bit]
//          Only active on menu/title screen
// $00159C: Continue Timer [8-bit]
//          0x09 = 9
//          0x12 = 8
//          0x1b = 7
//          0x24 = 6
//          0x2d = 5
//          0x36 = 4
//          0x3f = 3
//          0x48 = 2
//          0x51 = 1
//          0x5a = 0
// $00159D: Invincibility Timer [8-bit]
//          Starts at 0x80 after dying
// $0019AD: Stage 5-8 [8-bit]
// $001A6C: Stage 1-2 [8-bit]
// $001A91: Stage 3-4 [8-bit]
// $014000: 0xad = In-game
//          0x43 = Title screen, cutscenes, ending
// $014001: Stage Pointer [16-bit]
//          
//          +0xffffe005 = Stage [8-bit]
//          0x01 to 0x08
// $014007: Pointer [16-bit]
//          
//          +0xffffd8d3 = Invincibility Active [8-bit]
//          0x01 = After spawning
//          0xff = No-death cheat - but also after beating last boss! Be careful blocking cheat
//          
//          +0xffffd8d5 = Speed Level [8-bit]
//          0x01 to 0x04
//          
//          +0xffffd8d6 = Bits Active [8-bit]
//          0x01 to 0x02
//          
//          +0xffffd8d7 = Missiles Active [8-bit]
//          Can accumulate beyond 0x01, without any additional effect
//          
//          +0xffffd8d8 = Stage Clear Animation [8-bit]
//          0xff
//          
//          +0xffffd8df = Charge Meter [8-bit]
//          0x80 = Max
//          
//          +0xffffd8e3 = Force Pod Active [8-bit]
//          0x01 to 0x03 = Level 1 to 3
//          
//          +0xffffd8e4 = Laser Type [8-bit]
//          0x00 = Blue
//          0x01 = Yellow
//          0x02 = Red
//          
//          +0xffffd8e9 = Score: Ones [8-bit BCD]
//          
//          +0xffffd8ea = Score: Tens [8-bit BCD]
//          
//          +0xffffd8eb = Score: Hundreds [8-bit BCD]
//          
//          +0xffffd8ec = Score: Thousands [8-bit BCD]
//          
//          +0xffffd8ed = Score: Ten Thousands [8-bit BCD]
//          
//          +0xffffd8ee = Score: Hundred Thousands [8-bit BCD]
//          
//          +0xffffd8ef = Score: Millions [8-bit BCD]
//          
//          +0xffffd8fb = Lives [8-bit]

stage_5_8_progress = word(0x22)
stage_1_4_progress = word(0x29)

stage_1_4_start = 0x0028
stage_1_start_respawn = 0x0037
stage_5_start = 0x4004
stage_6_start = 0x4140
stage_7_start = 0x4304
stage_8_start = 0x45cc

stage_1_4_difficulty = byte(0x39)
stage_5_8_difficulty = byte(0x3b)

title_screen_state = byte(0xbe4)

in_game_state = byte(0x14000)

stage_pointer = word(0x14001)
stage = byte(stage_pointer + 0xffffe005)

pointer = word(0x14007)
invincibility = byte(pointer + 0xffffd8d3)
speed = byte(pointer + 0xffffd8d5)
bits = byte(pointer + 0xffffd8d6)
missiles = byte(pointer + 0xffffd8d7)
stage_clear_animation = byte(pointer + 0xffffd8d8)
force_pod = byte(pointer + 0xffffd8e3)

score =
    byte(pointer + 0xffffd8e9) +
    byte(pointer + 0xffffd8ea) * 10 +
    byte(pointer + 0xffffd8eb) * 100 +
    byte(pointer + 0xffffd8ec) * 1000 +
    byte(pointer + 0xffffd8ed) * 10000 +
    byte(pointer + 0xffffd8ee) * 100000 +
    byte(pointer + 0xffffd8ef) * 1000000

lives = byte(pointer + 0xffffd8fb)

//
//
//

title_screen = title_screen_state == 1

in_game = in_game_state == 0xad

no_cheat = invincibility < 0xff

start_game_no_cheat =
    once(
        stage_1_4_difficulty >= 1 &&
        in_game &&
        no_cheat &&
        stage == 1 &&
        prev(stage_1_4_progress) == stage_1_start_respawn &&
        stage_1_4_progress > stage_1_start_respawn
    )

start_game_reset =
    never(
        in_game &&
        stage == 1 &&
        stage_1_4_progress == stage_1_start_respawn
    )

default_settings =
    start_game_no_cheat &&
    in_game

full_power =
    speed >= 4 &&
    bits >= 2 &&
    missiles >= 1 &&
    force_pod >= 3

clear_stage =
    prev(stage_clear_animation) == 0 &&
    stage_clear_animation == 0xff

death = lives < prev(lives)
game_over =
    prev(lives) == 1 &&
    lives == 0

//
//
//

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard"
}

// ------------
// Achievements
// ------------

progress_array = [
    ["Dobkeratops", 5],
    ["Gomander", 5],
    ["Warship", 5],
    ["Compiler", 5],
    ["Bellmite", 10],
    ["Yashoo", 10],
    ["Bronco", 10],
    ["Bydo Core", 25]
]

for i in range(0, 7) {
    if (i <= 3) {
        type_param = "PROGRESSION"
        difficulty_param = stage_1_4_difficulty >= 1
    }
    else if (i <= 6) {
        type_param = "PROGRESSION"
        difficulty_param = stage_5_8_difficulty >= 1
    }
    else {
        type_param = "WIN_CONDITION"
        difficulty_param = stage_5_8_difficulty >= 1
    }
    achievement(
        title = progress_array[i][0],
        description =
            format(
                "Complete Stage {0} on Normal or Hard difficulty",
                i + 1
            ),
        points = progress_array[i][1],
        type = type_param,
        trigger =
            start_game_no_cheat &&
            start_game_reset &&
            difficulty_param &&
            in_game &&
            stage == i + 1 &&
            clear_stage
    )
}

achievement(
    title = "Brutal War",
    description = "Complete the game on Hard difficulty",
    points = 50,
    trigger =
        start_game_no_cheat &&
        start_game_reset &&
        stage_5_8_difficulty == 2 &&
        in_game &&
        stage == 8 &&
        clear_stage
)

achievement(
    title = "Powerhouse",
    description = "Fully power up your weapons and speed on Normal or Hard difficulty",
    points = 5,
    trigger =
        start_game_no_cheat &&
        start_game_reset &&
        in_game &&
        __ornext(
            prev(speed) < 4 ||
            prev(bits) < 2 ||
            prev(missiles) < 1 ||
            prev(force_pod) < 3
        ) &&
        full_power &&
        (
            (
                stage_1_4_difficulty >= 1 &&
                stage >= 1 &&
                stage <= 4
            ) ||
            (
                stage_5_8_difficulty >= 1 &&
                stage >= 5 &&
                stage <= 8
            )
        )
)

// Title, description, points, score
score_array = [
    ["Double Extender", "200,000", 5, 200000],
    ["Triple Extender", "400,000", 10, 400000]
]

for i in range(0, 1) {
    achievement(
        title = score_array[i][0],
        description =
            format(
                "Score {0} points on Normal or Hard difficulty",
                score_array[i][1]
            ),
        points = score_array[i][2],
        trigger =
            start_game_no_cheat &&
            start_game_reset &&
            in_game &&
            prev(score) < score_array[i][3] &&
            score >= score_array[i][3] &&
            (
                (
                    stage_1_4_difficulty >= 1 &&
                    stage >= 1 &&
                    stage <= 4
                ) ||
                (
                    stage_5_8_difficulty >= 1 &&
                    stage >= 5 &&
                    stage <= 8
                )
            )
    )
}

deathless_array = [
    ["Invincible Arrowhead: Encounter", 5],
    ["Invincible Arrowhead: Creature Cave", 5],
    ["Invincible Arrowhead: Gigantic Warship", 5],
    ["Invincible Arrowhead: Frontline Base", 5],
    ["Invincible Arrowhead: The Den", 10],
    ["Invincible Arrowhead: Transport System", 10],
    ["Invincible Arrowhead: City in Ruins", 10],
    ["Invincible Arrowhead: The Bydo Empire's Star", 10]
]

for i in range(0, 7) {
    if (i == 0) {
        difficulty_param = stage_1_4_difficulty >= 1
        start_param = stage_1_4_progress == stage_1_start_respawn
    }    
    else if (i <= 3) {
        difficulty_param = stage_1_4_difficulty >= 1
        start_param = stage_1_4_progress == stage_1_4_start
    }
    else if (i == 4) {
        difficulty_param = stage_5_8_difficulty >= 1
        start_param = stage_5_8_progress == stage_5_start
    }
    else if (i == 5) {
        difficulty_param = stage_5_8_difficulty >= 1
        start_param = stage_5_8_progress == stage_6_start
    }
    else if (i == 6) {
        difficulty_param = stage_5_8_difficulty >= 1
        start_param = stage_5_8_progress == stage_7_start
    }
    else if (i == 7) {
        difficulty_param = stage_5_8_difficulty >= 1
        start_param = stage_5_8_progress == stage_8_start
    }
    achievement(
        title = deathless_array[i][0],
        description =
            format(
                "Complete Stage {0} from start to finish without dying on Normal or Hard difficulty",
                i + 1
            ),
        points = deathless_array[i][1],
        trigger =
            once(
                difficulty_param &&
                in_game &&
                no_cheat &&
                stage == i + 1 &&
                start_param
            ) &&
            never(death) &&
            never(
                in_game &&
                stage != i + 1
            ) &&
            difficulty_param &&
            in_game &&
            stage == i + 1 &&
            trigger_when(clear_stage)
    )
}

achievement(
    title = "Three Strikes on the Bydo",
    description = "Complete the game using 2 or fewer continues on Normal or Hard difficulty",
    points = 25,
    trigger =
        unless(
            repeated(3,
                in_game &&
                game_over
            )
        ) &&
        start_game_no_cheat &&
        trigger_when(stage_5_8_difficulty >= 1) &&
        in_game &&
        trigger_when(stage == 8) &&
        trigger_when(clear_stage) &&
        (
            (
                always_false()
            ) ||
            (
                start_game_reset
            )
        )
)

achievement(
    title = "One Strike on the Bydo",
    description = "Complete the game without using a continue on Normal or Hard difficulty",
    points = 50,
    trigger =
        disable_when(
            in_game &&
            game_over
        ) &&
        start_game_no_cheat &&
        trigger_when(stage_5_8_difficulty >= 1) &&
        in_game &&
        trigger_when(stage == 8) &&
        trigger_when(clear_stage) &&
        (
            (
                always_false()
            ) ||
            (
                start_game_reset
            )
        )
)

// ------------
// Leaderboards
// ------------

for d in range(2, 0, -1) {
    for c in range(0, 1) {
        if (c == 0) {
            title_param = " 1CC"
            description_param = ""
            logic_param_1 =
                disable_when(
                    in_game &&
                    game_over
                )
            logic_param_2 = always_false()
            logic_param_3 = always_false()
        }
        else {
            title_param = ""
            description_param = " at game over or"
            logic_param_1 = score > 0
            logic_param_2 =
                stage_1_4_difficulty == d &&
                stage >= 1 &&
                stage <= 4 &&
                game_over
            logic_param_3 =
                stage_5_8_difficulty == d &&
                stage >= 5 &&
                stage <= 8 &&
                game_over
        }
        leaderboard(
            title =
                format(
                    "High Score: {0}{1}",
                    difficulty_dict[d],
                    title_param
                ),
            description =
                format(
                    "Submits{0} after beating the game",
                    description_param
                ),
            start =
                start_game_no_cheat &&
                in_game &&
                logic_param_1 &&
                (
                    (
                        stage_5_8_difficulty == d &&
                        stage == 8 &&
                        clear_stage
                    ) ||
                    (
                        logic_param_2
                    ) ||
                    (
                        logic_param_3
                    ) ||
                    (
                        start_game_reset &&
                        always_false()
                    )
                ),
            cancel = always_false(),
            submit = always_true(),
            value = measured(score),
            format = "VALUE"
        )
    }
}

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    in_game && stage >= 1 && stage <= 4,
    "Stage {0} • Lives: {1} • Score: {2} • {3}",
    rich_presence_value("Stage", stage),
    rich_presence_value("Lives", lives),
    rich_presence_value("Score", score),
    rich_presence_lookup("Difficulty", stage_1_4_difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    in_game && stage >= 5 && stage <= 8,
    "Stage {0} • Lives: {1} • Score: {2} • {3}",
    rich_presence_value("Stage", stage),
    rich_presence_value("Lives", lives),
    rich_presence_value("Score", score),
    rich_presence_lookup("Difficulty", stage_5_8_difficulty, difficulty_dict)
)

rich_presence_conditional_display(
    once(
        in_game &&
        stage == 8 &&
        clear_stage
    ) &&
    never(title_screen),
    "Completed the game!"
)

rich_presence_conditional_display(
    once(
        in_game &&
        stage == 1 &&
        stage_1_4_progress == stage_1_start_respawn
    ) &&
    never(title_screen),
    "Watching a cutscene"
)

rich_presence_display(
    "Preparing to fight the Bydo"
)