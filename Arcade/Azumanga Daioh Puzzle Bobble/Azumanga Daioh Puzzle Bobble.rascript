// Azumanga Daioh: Puzzle Bobble
// #ID = 24395

// $083650: Screen [8-bit]
//          0x04 = Transition to Taito logo or title screen intro
//          0x05 = Taito logo
//          0x06 = MediaWorks logo
//          0x07 = Moss logo
//          0x08 = Intro to title screen
//          0x09 = Title screen
//          0x0a -> 0x0b = After title screen
//          0x0c -> 0x0d = Mode Select
//          0x0e = Character Select
//          0x0f = Course Select
//          0x10 -> 0x11 = Yearbook or Vs. start
//          0x12 -> 0x13 = 2P Co-op start
//          0x16 = Transition to Challenge Stage start or Round start
//          0x17 = Challenge Stage start
//          0x18 = Round start
//          0x19 = In-game
//          0x1a = Round clear or loss
//          0x1b = Continue screen
//          0x1c = Game Over
//          0x1e -> 0x1f = Bonus pin-up
//          0x20 -> 0x21 = Game complete
//          0x22 -> 0x23 = Ranking
//          0x24 -> 0x25 = Credits
// $0EE590: Continue Timer [16-bit]
//          Counts up to 0x04ed
// $0F1284: Current Colour [8-bit]
// $113828: P1 Score [32-bit]
//          Multiply by 10
// $113838: Orbs Fired [8-bit]
// $11383C: Break Count Total [8-bit]
//          Counts each colour multiple times during a break
// $113840: Break Count Total [8-bit]
//          Counts each colour only once during a break
// $113850: Spring Bonus Pin-up Unlocked [8-bit]
// $113851: Summer Challenge Bonus Pin-up Unlocked [8-bit]
// $113852: Summer Bonus Pin-up Unlocked [8-bit]
// $113853: Autumn Bonus Pin-up Unlocked [8-bit]
// $113854: Winter Challenge Bonus Pin-up Unlocked [8-bit]
// $113855: Winter Bonus Pin-up Unlocked [8-bit]
// $11385C: Shot Timer [16-bit]
//          Counts up to 0x0294
// $113866: Next Colour [8-bit]
// $11388C: Pointer Active [8-bit]
// $113890: Current Colour [8-bit]
//          0x01 = Red
//          0x02 = Green
//          0x03 = Blue
//          0x04 = Yellow
//          0x05 = Orange
//          0x06 = Purple
//          0x07 = White
//          0x08 = Black
// $114CCC: Last Break [8-bit]
// $117288: Difficulty Setting [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
//          0x03 = Very Hard
// $11728C: 2P Versus - Round Count Setting [8-bit]
//          0x01 = 1
//          0x02 = 2 (Default)
//          0x03 = 3
// $11728E: Continues Enabled Setting [8-bit]
//          0x00 = Yes (Default)
//          0x01 = No
// $1173A0: Game Mode [8-bit]
//          0x01 = 1P Puzzle
//          0x02 = CPU Vs.
//          0x03 = 2P Vs.
//          0x04 = 2P Co-op
// $1173C4: Season [8-bit]
//          0x00 = Spring Round 1-3 / Kid's Course Round 1-5
//          0x01 = Summer Challenge Stage / Kid's Course complete
//          0x02 = Summer Round 1-3
//          0x03 = Autumn Round 1-3
//          0x04 = Winter Challenge Stage
//          0x05 = Winter Round 1-3
//          0x06 = Course complete
//          
//          CPU Vs. Mode
//          0x00 to 0x06 = Stage 1 to 7
//          0x07 = Complete
// $1173C6: Round [8-bit]
// $1173DA: Bonus Pin-up Progress [8-bit]
//          0x8c = Max
// $1173FC: Attract Mode [8-bit]
// $117414: Menu Timer [16-bit]
// $1176A8: Round Timer [16-bit]
//          Determines Time Bonus
//          0x012c (300) = 5 seconds, max bonus of 500,000
//          Minus 200 points for each frame after 5 seconds
// $1176B0: Ceiling Fall Count [8-bit]
// $1176B8: Orbs Fired [8-bit]
// $1176F0: Game Mode [8-bit]
//          0x00 = 1P Puzzle
//          0x01 = CPU Vs.
//          0x02 = 2P Vs.
//          0x03 = 2P Co-op
// $1176FC: P1 Character [8-bit]
//          0x00 = Osaka
//          0x01 = Chiyo
//          0x02 = Tomo
//          0x03 = Yomi
//          0x04 = Kagura
//          0x05 = Sakaki
// $1176FE: P2 Character [8-bit]
// $117700: 2P Co-op Team [8-bit]
//          0x00 = Osaka & Chiyo
//          0x01 = Tomo & Yomi
//          0x02 = Kagura & Sakaki
// $117706: 1P Puzzle Course [8-bit]
//          0x00 = School Course
//          0x01 = After School Course
//          0x02 = Kid's Course
// $117768: Music [8-bit]
//          0x00 = Round theme 1
//          0x01 = Round theme 2
//          0x02 = Round theme 3
//          0x03 = Menu, Ranking
//          0x04 = Round clear
//          0x05 = Continue screen
//          0x06 = Game over
//          0x07 = Bonus pin-up
//          0x08 = Yearbook, 1P Puzzle Mode complete, Credits, 2P Co-op start
//          0x09 = Title screen
//          0x0a = Vs. start
//          0xff = None
// $1190FC: Service Menu - Difficulty Setting Selected [8-bit]
// $1190FE: Service Menu - 2P Versus - Round Count Setting Selected [8-bit]
// $119100: Service Menu - Continues Enabled Setting Selected [8-bit]
// $1195FC: Difficulty Setting [8-bit]
// $1195FE: 2P Versus - Round Count Setting [8-bit]
// $119600: Continues Enabled [8-bit]
// $D71D36: Ceiling Fall Count [8-bit]

screen = byte(0x83650)

p1_score = dword(0x113828) * 10
spring_image = byte(0x113850)
summer_challenge_image = byte(0x113851)
summer_image = byte(0x113852)
autumn_image = byte(0x113853)
winter_challenge_image = byte(0x113854)
winter_image = byte(0x113855)
p2_score_co_op = dword(0x114cec) * 10
p2_score_battle = dword(0x114cf0) * 10

difficulty = byte(0x117288)
season = byte(0x1173c4)
round = byte(0x1173c6)
season_round = dword(0x1173c4)
attract_mode = byte(0x1173fc)

game_mode = byte(0x1176f0)
p1_character = byte(0x1176fc)
p2_character = byte(0x1176fe)
co_op_team = byte(0x117700)
course = byte(0x117706)
music = byte(0x117768)

//
//
//

title_screen = screen == 9
in_game = screen == 0x19
round_over = screen == 0x1a
continue_screen = screen == 0x1b
game_over = screen == 0x1c

start_school_course =
    prev(screen) == 0xf &&
    __ornext(
        screen == 0x10 ||
        screen == 0x11
    )

start_cpu_battle_mode =
    prev(screen) == 0xe &&
    __ornext(
        screen == 0x10 ||
        screen == 0x11
    )

continue_screen_trans =
    prev(screen) == 0x1a &&
    continue_screen

default_settings =
    difficulty >= 1 &&
    attract_mode == 0

complete_school_course =
    prev(season) == 5 &&
    season == 6

complete_kids_course =
    prev(season) == 0 &&
    season == 1

complete_cpu_battle_mode =
    prev(season) == 6 &&
    season == 7

puzzle_mode = game_mode == 0
cpu_battle_mode = game_mode == 1
p2_battle_mode = game_mode == 2
p2_co_op_mode = game_mode == 3
school_course = course == 0
after_school_course = course == 1
kids_course = course == 2
round_clear_music = music == 4

//
//
//

image_array = [
    spring_image,
    summer_challenge_image,
    summer_image,
    autumn_image,
    winter_challenge_image,
    winter_image
]

season_dict = {
    0: "Spring",
    1: "Summer",
    2: "Summer",
    3: "Autumn",
    4: "Winter",
    5: "Winter"
}

season_round_dict = {
    0x00000000: "Spring Round 1",
    0x00010000: "Spring Round 2",
    0x00020000: "Spring Round 3",
    0x00000001: "Summer Challenge Stage",
    0x00000002: "Summer Round 1",
    0x00010002: "Summer Round 2",
    0x00020002: "Summer Round 3",
    0x00000003: "Autumn Round 1",
    0x00010003: "Autumn Round 2",
    0x00020003: "Autumn Round 3",
    0x00000004: "Winter Challenge Stage",
    0x00000005: "Winter Round 1",
    0x00010005: "Winter Round 2",
    0x00020005: "Winter Round 3"
}

character_dict = {
    0: "Osaka",
    1: "Chiyo",
    2: "Tomo",
    3: "Yomi",
    4: "Kagura",
    5: "Sakaki"
}

team_dict = {
    0: "Osaka & Chiyo",
    1: "Tomo & Yomi",
    2: "Kagura & Sakaki"
}

course_dict = {
    0: "School",
    1: "After School",
    2: "Kid's"
}

// ------------
// Achievements
// ------------

achievement(
    title = "As Shrimple as That",
    description = "Complete the Kid's Course in 1P Puzzle Mode (Normal or higher difficulty)",
    points = 5,
    trigger =
        default_settings &&
        puzzle_mode &&
        kids_course &&
        complete_kids_course
)

for c in range(0, 5) {
    for s in range(0, 5) {
        if (s == 1 || s == 4) {
            title_param = "Challenge"
            description_param = " Challenge Stage"
            round_param = round == 0
        }
        else {
            title_param = "Bonus"
            description_param = ""
            round_param = round == 2
        }
        achievement(
            title =
                format(
                    "{0}'s {1} {2} I",
                    character_dict[c],
                    season_dict[s],
                    title_param
                ),
            description =
                format(
                    "Earn {0}'s {1}{2} bonus image in the School Course in 1P Puzzle Mode (Normal or higher difficulty)",
                    character_dict[c],
                    season_dict[s],
                    description_param
                ),
            points = 3,
            trigger =
                default_settings &&
                puzzle_mode &&
                school_course &&
                p1_character == c &&
                season == s &&
                round_param &&
                round_over &&
                __ornext(
                    prev(music) <= 2 ||
                    prev(image_array[s]) == 0
                ) &&
                round_clear_music &&
                image_array[s] == 1
        )
    }
}

achievement(
    title = "Rule the School",
    description = "Complete the School Course in 1P Puzzle Mode (Normal or higher difficulty)",
    points = 5,
    type = "PROGRESSION",
    trigger =
        default_settings &&
        puzzle_mode &&
        school_course &&
        complete_school_course
)

school_array = [
    "Oh My Gah!",
    "Penguin Power",
    "Why the Heck?",
    "While You Were Playing, I Studied the Bobble",
    "Knucklehead No More",
    "Too Cool for School"
]

for c in range(0, 5) {
    achievement(
        title = school_array[c],
        description =
            format(
                "Complete the School Course as {0} in 1P Puzzle Mode (Normal or higher difficulty)",
                character_dict[c]
            ),
        points = 5,
        trigger =
            default_settings &&
            puzzle_mode &&
            school_course &&
            p1_character == c &&
            complete_school_course
    )
}

school_3cc_array = [
    "Boke Gang",
    "Tsukkomi Gang"
]

for c in range(0, 1) {
    if (c == 0) {
        character_param = [0, 2, 4]
    }
    else {
        character_param = [1, 3, 5]
    }
    achievement(
        title = school_3cc_array[c],
        description =
            format(
                "Complete the School Course in 1P Puzzle Mode as {0}, {1}, or {2} using 2 or fewer continues (Normal or higher difficulty)",
                character_dict[c],
                character_dict[c + 2],
                character_dict[c + 4]
            ),
        points = 10,
        trigger =
            unless(
                repeated(3,
                    attract_mode == 0 &&
                    puzzle_mode &&
                    school_course &&
                    continue_screen_trans
                )
            ) &&
            once(
                start_school_course
            ) &&
            default_settings &&
            puzzle_mode &&
            school_course &&
            __ornext(
                p1_character == c ||
                p1_character == c + 2 ||
                p1_character == c + 4
            ) &&
            trigger_when(complete_school_course) &&
            (
                (
                    never(title_screen) &&
                    never(game_over)
                ) ||
                (
                    always_false()
                )
            )
    )
}

for c in range(0, 5) {
    for s in range(0, 5) {
        if (s == 1 || s == 4) {
            title_param = "Challenge"
            description_param = " Challenge Stage"
            round_param = round == 0
        }
        else {
            title_param = "Bonus"
            description_param = ""
            round_param = round == 2
        }
        achievement(
            title =
                format(
                    "{0}'s {1} {2} II",
                    character_dict[c],
                    season_dict[s],
                    title_param
                ),
            description =
                format(
                    "Earn {0}'s {1}{2} bonus image in the After School Course in 1P Puzzle Mode (Normal or higher difficulty)",
                    character_dict[c],
                    season_dict[s],
                    description_param
                ),
            points = 3,
            trigger =
                default_settings &&
                puzzle_mode &&
                after_school_course &&
                p1_character == c &&
                season == s &&
                round_param &&
                round_over &&
                __ornext(
                    prev(music) <= 2 ||
                    prev(image_array[s]) == 0
                ) &&
                round_clear_music &&
                image_array[s] == 1
        )
    }
}

achievement(
    title = "I Wish I Were a Bird",
    description = "Complete the After School Course in 1P Puzzle Mode (Normal or higher difficulty)",
    points = 5,
    type = "PROGRESSION",
    trigger =
        default_settings &&
        puzzle_mode &&
        after_school_course &&
        complete_school_course
)

after_school_array = [
    "Sata Andagi",
    "Let's Cook Together!",
    "Hide Your Keys",
    "Double Chop!",
    "Yay!",
    "The Bite Back"
]

for c in range(0, 5) {
    achievement(
        title = after_school_array[c],
        description =
            format(
                "Complete the After School Course as {0} in 1P Puzzle Mode (Normal or higher difficulty)",
                character_dict[c]
            ),
        points = 5,
        trigger =
            default_settings &&
            puzzle_mode &&
            after_school_course &&
            p1_character == c &&
            complete_school_course
    )
}

after_school_3cc_array = [
    "Return of Boke Gang",
    "Return of Tsukkomi Gang"
]

for c in range(0, 1) {
    if (c == 0) {
        character_param = [0, 2, 4]
    }
    else {
        character_param = [1, 3, 5]
    }
    achievement(
        title = after_school_3cc_array[c],
        description =
            format(
                "Complete the After School Course in 1P Puzzle Mode as {0}, {1}, or {2} using 2 or fewer continues (Normal or higher difficulty)",
                character_dict[c],
                character_dict[c + 2],
                character_dict[c + 4]
            ),
        points = 10,
        trigger =
            unless(
                repeated(3,
                    attract_mode == 0 &&
                    puzzle_mode &&
                    after_school_course &&
                    continue_screen_trans
                )
            ) &&
            once(start_school_course) &&
            default_settings &&
            puzzle_mode &&
            after_school_course &&
            __ornext(
                p1_character == c ||
                p1_character == c + 2 ||
                p1_character == c + 4
            ) &&
            trigger_when(complete_school_course) &&
            (
                (
                    never(title_screen) &&
                    never(game_over)
                ) ||
                (
                    always_false()
                )
            )
    )
}

achievement(
    title = "Oh, Good! Fine! Fantastic!",
    description = "Complete CPU Battle Mode (Normal or higher difficulty)",
    points = 5,
    type = "PROGRESSION",
    trigger =
        default_settings &&
        cpu_battle_mode &&
        complete_cpu_battle_mode
)

cpu_battle_array = [
    "It's No Longer a Prawnblem",
    "If I Pull Those Off, Will You Die?",
    "Interpol's Finest",
    "The Heavyweight Champion",
    "At the Top of Her Game",
    "Silent and Deadly"
]

for c in range(0, 5) {
    achievement(
        title = cpu_battle_array[c],
        description =
            format(
                "Complete CPU Battle Mode playing only as {0} (Normal or higher difficulty)",
                character_dict[c]
            ),
        points = 5,
        trigger =
            disable_when(
                attract_mode == 0 &&
                cpu_battle_mode &&
                in_game &&
                p1_character != c,
                until =
                    season == 0 &&
                    p1_score == 0
            ) &&
            once(start_cpu_battle_mode) &&
            default_settings &&
            cpu_battle_mode &&
            p1_character == c &&
            trigger_when(complete_cpu_battle_mode) &&
            (
                (
                    never(title_screen) &&
                    never(game_over)
                ) ||
                (
                    always_false()
                )
            )
    )
}

achievement(
    title = "Raspberry Heaven",
    description = "Complete CPU Battle Mode using 2 or fewer continues (Normal or higher difficulty)",
    points = 10,
    trigger =
        disable_when(
            repeated(3,
                attract_mode == 0 &&
                cpu_battle_mode &&
                continue_screen_trans
            ),
            until =
                season == 0 &&
                p1_score == 0
        ) &&
        once(start_cpu_battle_mode) &&
        default_settings &&
        cpu_battle_mode &&
        trigger_when(complete_cpu_battle_mode) &&
        (
            (
                never(title_screen) &&
                never(game_over)
            ) ||
            (
                always_false()
            )
        )
)

// ------------
// Leaderboards
// ------------

for c in range(0, 1) {
    if (c == 0) {
        title_param = "Osaka/Tomo/Kagura"
        logic_param = [0, 2, 4]
    }
    else {
        title_param = "Chiyo/Yomi/Sakaki"
        logic_param = [1, 3, 5]
    }
    for s in range(0, 1) {
        leaderboard(
            title =
                format(
                    "{0} Course High Score: {1}",
                    course_dict[s],
                    title_param
                ),
            description = "Submits at continue/game over or after completing the course (Normal or higher difficulty)",
            start =
                default_settings &&
                puzzle_mode &&
                course == s &&
                __ornext(
                    any_of(logic_param, f => p1_character == f)
                ) &&
                p1_score > 0 &&
                (
                    (
                        complete_school_course
                    ) ||
                    (
                        continue_screen_trans
                    )
                ),
            cancel = always_false(),
            submit = always_true(),
            value = measured(p1_score),
            format = "VALUE"
        )
    }
}

leaderboard(
    title = "Kid's Course High Score",
    description = "Submits at continue/game over or after completing the course (Normal or higher difficulty)",
    start =
        default_settings &&
        puzzle_mode &&
        kids_course &&
        p1_score > 0 &&
        (
            (
                complete_kids_course
            ) ||
            (
                continue_screen_trans
            )
        ),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 103636,
    title = "CPU Battle High Score",
    description = "Submits at continue/game over or after completing the game (Normal or higher difficulty)",
    start =
        default_settings &&
        cpu_battle_mode &&
        p1_score > 0 &&
        (
            (
                complete_cpu_battle_mode
            ) ||
            (
                continue_screen_trans
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
    attract_mode == 0 &&
    screen >= 0x10 &&
    screen <= 0x1f &&
    puzzle_mode &&
    __ornext(
        school_course ||
        after_school_course
    ),
    "{0} is in the {1} Course: {2} • Score: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Course", course, course_dict),
    rich_presence_lookup("SeasonRound", season_round, season_round_dict),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    screen >= 0x10 &&
    screen <= 0x1f &&
    puzzle_mode &&
    kids_course,
    "{0} is in the Kid's Course: {1} • Score: {2}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Round", round + 1),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    __ornext(
        screen == 0x20 ||
        screen == 0x21 ||
        screen == 0x24 ||
        screen == 0x25
    ) &&
    puzzle_mode,
    "{0} completed the {1} Course! Score: {2}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Course", course, course_dict),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    screen >= 0x10 &&
    screen <= 0x1f &&
    cpu_battle_mode,
    "{0} is in CPU Battle Mode: Stage {1} • Score: {2}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Season", season + 1),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    __ornext(
        screen == 0x20 ||
        screen == 0x21 ||
        screen == 0x24 ||
        screen == 0x25
    ) &&
    cpu_battle_mode,
    "{0} completed CPU Battle Mode! Score: {1}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    screen >= 0x10 &&
    screen <= 0x1f &&
    p2_battle_mode,
    "2P Battle Mode: {0} vs. {1} • P1 Score: {2} • P2 Score: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score_battle)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    screen >= 0x10 &&
    screen <= 0x1f &&
    p2_co_op_mode,
    "{0} are in 2P Co-op Mode: Stage {1}-{2} • P1 Score: {3} • P2 Score: {4}",
    rich_presence_lookup("Team", co_op_team, team_dict),
    rich_presence_value("Season", season + 1),
    rich_presence_value("Round", round + 1),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score_co_op)
)

rich_presence_conditional_display(
    attract_mode == 0 &&
    __ornext(
        screen == 0x20 ||
        screen == 0x21 ||
        screen == 0x24 ||
        screen == 0x25
    ) &&
    p2_co_op_mode,
    "{0} completed 2P Co-op Mode! P1 Score: {1} • P2 Score: {2}",
    rich_presence_lookup("Team", co_op_team, team_dict),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score_co_op)
)

rich_presence_display(
    "Hello, everynyan! How are you? Fine, thank you."
)

// -------------
// Formerly Used
// -------------

// achievement(
//     title = "After School 3CC",
//     description = "Complete the After School Course in 1P Puzzle Mode using 2 or fewer continues (Normal or higher difficulty)",
//     points = 25,
//     trigger =
//         unless(
//             repeated(3,
//                 attract_mode == 0 &&
//                 puzzle_mode &&
//                 after_school_course &&
//                 continue_screen_trans
//             )
//         ) &&
//         once(start_school_course) &&
//         default_settings &&
//         puzzle_mode &&
//         after_school_course &&
//         trigger_when(complete_school_course) &&
//         (
//             (
//                 never(title_screen) &&
//                 never(game_over)
//             ) ||
//             (
//                 always_false()
//             )
//         )
// )

// for c in range(0, 5) {
//     leaderboard(
//         title =
//             format(
//                 "CPU Battle High Score: {0}",
//                 character_dict[c]
//             ),
//         description = "Submits at continue/game over or after completing the game (Normal or higher difficulty)",
//         start =
//             default_settings &&
//             cpu_battle_mode &&
//             p1_character == c &&
//             p1_score > 0 &&
//             (
//                 (
//                     complete_cpu_battle_mode
//                 ) ||
//                 (
//                     continue_screen_trans
//                 )
//             ),
//         cancel = always_false(),
//         submit = always_true(),
//         value = measured(p1_score),
//         format = "VALUE"
//     )
// }