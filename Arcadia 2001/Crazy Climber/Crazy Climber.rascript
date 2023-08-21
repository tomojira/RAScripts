// Crazy Climber
// #ID = 21588
// MD5: 2B682F2E0B2545A0867F8E7BF0A6D919 - Crazy Climber (Europe).bin

// ---------------------------
// Notes, variables, functions
// ---------------------------

// $003F: Level number display on Level Select screen [8-bit]
//        0x91 to 0x94
//        0x00 when in-game, Game Over or Level Clear screen

function level_select_display() => byte(0x3f)
function level_select_screen() => level_select_display() != 0
function not_level_select_screen() => level_select_display() == 0
function level_select_start(level_parameter) => prev(level_select_display()) == level_select_dictionary[level_parameter] && not_level_select_screen()

level_select_dictionary = {
    1: 0x91,
    2: 0x92,
    3: 0x93,
    4: 0x94
}

// $0266: Level [8-bit]
//        0x01 to 0x04 = Standard levels
//        0x05 to 0x08 = Harder loop
//        0x09+ continues looping the harder levels
//        After Building 9, A to Z are used, followed by punctuation, symbols, and graphics
//        0x23 = Building .
//        0x24 = Building ,
//        0x25 = Building +
//        0x26 = Building $
//        0x27 = Building (climber graphic)
//        0x28 = Building (helicopter front graphic)
//        0x29 = Building (helicopter back graphic)
//        0x2a = Building (small helicopter graphic)
//        0x2b = Building (3 dots)
//        0x2c = Building (3 larger dots)
//        God knows how long this goes on

function level() => byte(0x266)
function level_transition() => level() > prev(level())

// $00EF: Game state [8-bit]
//        0xff to 0xb4+ (possibly lower) = Demo playing, counts down. Game Over and Level Select screens after demo
//        0x05 = Beginning of level, or Level Clear screen. Counts down to 0x00
//        0x00 = Playing game, no demo. Game Over and Level Select screens when there hasn't been a demo

function game_state() => byte(0xef)
function demo_playing() => game_state() > 5
function not_demo() => game_state() <= 5
function not_demo_normal() => game_state() == 0
function not_demo_begin_level() => game_state() == 5
function not_demo_begin_level_transition() => prev(game_state()) == 5 && game_state() == 4

// $00E4: Helicopter phase [8-bit]
//        0x04 = Climbing ladder or in helicopter. Level Clear after helicopter
//        0x00 = Climbing building. Level Select, Game Over screens

function helicopter_phase() => byte(0xe4) == 4
function not_helicopter_phase() => byte(0xe4) == 0

// $00FD: Audio [8-bit]
//        0x2c = None
//        0x07 = Climb up building. Not when near helicopter
//        0x08 = Object hits head. Could be protected or death
//        0x04 = Death, first note after 0x08. Rescue climber in helicopter
//        0x28 = Death, final note after 0x27
//        0x27 = Game Over, first note after 0x28
//        0x09 = Helicopter crash

function helicopter_crash() => byte(0xfd) == 9
function not_helicopter_crash() => byte(0xfd) != 9

// $0028: Graphic [8-bit]
//        0xbb to 0x00 when helicopter phase begins
// $00A8: Graphic [8-bit]
//        0xbb to 0x00 when ladder begins rising before helicopter phase

function no_ladder_graphic_bottom() => byte(0xa8) != 0xbb
function helicopter_begin() => prev(byte(0xa8)) == 0xbb && byte(0xa8) == 0

// $00EC: Lives [8-bit]
//        0x05 to 0x01

function lives() => byte(0xec)
function lose_life() => lives() < prev(lives())
function game_over() => prev(lives()) == 1 && lives() == 0

// $0260: Score: X0000 [Lower4 BCD]
// $0261: Score: 0X000 [Lower4 BCD]
// $0262: Score: 00X00 [Lower4 BCD]
// $0263: Score: 000X0 [Lower4 BCD]
// $0264: Score: 0000X [Lower4 BCD]

function score() {
    ten_thousands = low4(0x260) * 10000
    thousands = low4(0x261) * 1000
    hundreds = low4(0x262) * 100
    tens = low4(0x263) * 10
    ones = low4(0x264)
    score = ten_thousands + thousands + hundreds + tens + ones

    return score
}

function score_100_up() => low4(0x262) != prev(low4(0x262))

// $0108: Start or A button input [8-bit]
//        0x01 = Start button
//        0x02 = A button (select level)
//        0x00 = No input
// $0269: Highest Score: X0000 [Lower4 BCD]
// $026A: Highest Score: 0X000 [Lower4 BCD]
// $026B: Highest Score: 00X00 [Lower4 BCD]
// $026C: Highest Score: 000X0 [Lower4 BCD]
// $026D: Highest Score: 0000X [Lower4 BCD]

// ------------
// Achievements
// ------------

function achievement_level_clear(title, points, level_parameter) {
    achievement(
        title = title,
        description = "Reach the helicopter in Level " + level_parameter + ".",
        points = points,
        trigger = level() == level_parameter &&
                  not_demo_normal() &&
                  not_level_select_screen() &&
                  helicopter_phase() &&
                  helicopter_begin()
    )
}

function achievement_level_deathless(title, points, level_parameter) {
    achievement(
        title = title,
        description = "Reach the helicopter in Level " + level_parameter + " without dying.",
        points = points,
        trigger = once(level() == level_parameter &&
                       not_level_select_screen() &&
                       not_helicopter_phase() &&
                       not_demo_begin_level_transition()) &&
                  trigger_when(helicopter_phase()) &&
                  trigger_when(helicopter_begin()) &&
                  never(lose_life()) &&
                  never(level_select_screen())
    )
}

function achievement_level_score(title, points, level_parameter, score_parameter) {
    achievement(
        title = title,
        description = "Reach the helicopter in Level " + level_parameter + " with a score of at least " + score_parameter + ". Must start from Level Select screen with a score of 0.",
        points = points,
        trigger = once(level() == level_parameter &&
                       not_demo_begin_level() &&
                       not_helicopter_phase() &&
                       level_select_start(level_parameter)) &&
                  helicopter_phase() &&
                  score() >= score_parameter &&
                  helicopter_begin() &&
                  never(level_select_screen()) &&
                  never(level() != level_parameter)
    )
}

achievement_level_clear("First Climb", points=5, level_parameter=1)
achievement_level_deathless("Flawless Climb I", points=10, level_parameter=1)
achievement_level_score("Quick Climb I", points=5, level_parameter=1, score_parameter=4600)

achievement(
    title = "1-Up",
    description = "Successfully land the helicopter.",
    points = 5,
    trigger = not_demo_begin_level() &&
              not_level_select_screen() &&
              helicopter_phase() &&
              not_helicopter_crash() &&
              level_transition()
)

achievement(
    title = "Rescue Mission",
    description = "Rescue at least 10 climbers in the helicopter.",
    points = 5,
    trigger = measured(repeated(10, not_demo_normal() &&
                                not_level_select_screen() &&
                                helicopter_phase() &&
                                score_100_up())) &&
              never(not_helicopter_phase())
)

achievement_level_clear("The Second Building", points=5, level_parameter=2)
achievement_level_deathless("Flawless Climb II", points=10, level_parameter=2)
achievement_level_score("Quick Climb II", points=5, level_parameter=2, score_parameter=4600)

achievement_level_clear("Defenseless Climb", points=5, level_parameter=3)
achievement_level_deathless("Flawless Climb III", points=10, level_parameter=3)
achievement_level_score("Quick Climb III", points=5, level_parameter=3, score_parameter=4600)

achievement_level_clear("The Final Building", points=5, level_parameter=4)
achievement_level_deathless("Flawless Climb IV", points=10, level_parameter=4)
achievement_level_score("Quick Climb IV", points=5, level_parameter=4, score_parameter=4600)

achievement(
    title = "Marathon Climbing",
    description = "After starting from Level 1, clear the first 4 Levels without quitting or Game Over.",
    points = 25,
    trigger = once(level() == 1 &&
                   not_demo_begin_level() &&
                   not_helicopter_phase() &&
                   level_select_start(1)) &&
              trigger_when(level() == 4) &&
              trigger_when(helicopter_phase()) &&
              trigger_when(helicopter_begin()) &&
              never(level_select_screen())
)

achievement_level_clear("Deadly Loop", points=10, level_parameter=5)
achievement_level_clear("Savage Climb", points=25, level_parameter=6)
achievement_level_clear("Who's Dropping These Things", points=25, level_parameter=7)
achievement_level_clear("Final Challenge", points=50, level_parameter=8)

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "Total High Score",
    description = "Submits after any helicopter phase, or after Game Over.",
    start = not_level_select_screen() &&
            (not_demo_begin_level() &&
             helicopter_phase() &&
             level_transition()) ||
            (not_demo_normal() &&
             not_helicopter_phase() &&
             game_over()),
    cancel = always_false(),
    submit = always_true(),
    value = measured(bcd(score())),
    format = "VALUE"
)

leaderboard(
    title = "Highest Level Cleared",
    description = "Submits after reaching helicopter.",
    start = not_demo_normal() &&
            not_level_select_screen() &&
            helicopter_phase() &&
            helicopter_begin(),
    cancel = always_false(),
    submit = always_true(),
    value = measured(level()),
    format = "VALUE"
)

function leaderboard_level_score(level_parameter) {
    leaderboard(
        title = "Level " + level_parameter + " High Score",
        description = "Submits after reaching helicopter. Must start from Level Select screen with score of 0.",
        start = level() == level_parameter &&
                not_demo_begin_level() &&
                not_helicopter_phase() &&
                level_select_start(level_parameter),
        cancel = level_select_screen() ||
                 level() != level_parameter,
        submit = helicopter_phase() &&
                 helicopter_begin(),
        value = measured(bcd(score())),
        format = "VALUE"
    )
}

leaderboard_level_score(1)
leaderboard_level_score(2)
leaderboard_level_score(3)
leaderboard_level_score(4)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    level_select_screen(),
    "Selecting Level {0}",
    rich_presence_value("Level", level())
)

rich_presence_conditional_display(
    demo_playing() && not_level_select_screen(),
    "Demo playing"
)

rich_presence_conditional_display(
    not_demo_begin_level() && not_level_select_screen() && helicopter_phase() && no_ladder_graphic_bottom() && helicopter_crash(),
    "Crashed the helicopter in Level {0} | 🚶{1} | 💯{2}",
    rich_presence_value("Level", level() - 1),
    rich_presence_value("Lives", lives()),
    rich_presence_value("Score", bcd(score()))
)

rich_presence_conditional_display(
    not_demo_begin_level() && not_level_select_screen() && helicopter_phase() && no_ladder_graphic_bottom() && not_helicopter_crash(),
    "Landed the helicopter in Level {0} | 🚶{1} | 💯{2}",
    rich_presence_value("Level", level() - 1),
    rich_presence_value("Lives", lives()),
    rich_presence_value("Score", bcd(score()))
)

rich_presence_conditional_display(
    not_demo_normal() && not_level_select_screen() && helicopter_phase() && no_ladder_graphic_bottom(),
    "In the helicopter in Level {0} | 🚶{1} | 💯{2}",
    rich_presence_value("Level", level()),
    rich_presence_value("Lives", lives()),
    rich_presence_value("Score", bcd(score()))
)

rich_presence_conditional_display(
    not_demo() && not_level_select_screen() && not_helicopter_phase() && score() > 0 && lives() == 0,
    "Lost all lives in Level {0} | 💯{1}",
    rich_presence_value("Level", level()),
    rich_presence_value("Score", bcd(score()))
)

rich_presence_conditional_display(
    not_demo() && not_level_select_screen() && not_helicopter_phase() && score() > 0,
    "Climbing Level {0} | 🚶{1} | 💯{2}",
    rich_presence_value("Level", level()),
    rich_presence_value("Lives", lives()),
    rich_presence_value("Score", bcd(score()))
)

rich_presence_display(
    "Playing Crazy Climber"
)