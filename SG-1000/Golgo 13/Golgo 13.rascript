// Golgo 13
// #ID = 24540

// $0204: Round number [8-bit]
//        0x01 = Round 1
//        Transitions before time remaining is added to score

function round() => byte(0x204)
function round_trans(round_prev) => prev(round()) == round_prev && round() == (round_prev + 1)
function round_up() => round() > prev(round())

// $0205: Score [24-bit BCD]
//        Shooting a window gives 500 points
//        Shooting a helicopter gives 300 points
//        Shooting a helicopter's missile gives 150 points
//        Every second remaining gives 100 points each

function score() => bcd(tbyte(0x205))
function score_up() => score() > prev(score())

// $0208: Lives [8-bit]
//        Start with 0x03 (2 guns displayed on screen)
//        20,000 points gives an extra life. Maximum of 4

function lives() => byte(0x208)
function lose_life() => byte(0x208) < prev(byte(0x208))

// $0232: Time remaining [8-bit]
//        Starts at 0x5a (90)

function time() => byte(0x232)
function time_reset() => prev(time()) < 0x5a && time() == 0x5a

// $0237: High Score [24-bit BCD]

// $03FE: Game state [8-bit]
//        0x48 = Title screen
//        0xe8 = Demo intro
//        0x23 = Demo
//        0x56 = Game start
//        0x73 = In-game
//        0x58 = Pause game
//        0x20 = Reset game
//        Flickers other values for a few frames during transitions, but 0x73 always seems consistent in-game

function game_state() => byte(0x3fe)
function in_game() => game_state() == 0x73
function in_game_prev() => prev(game_state()) == 0x73
function game_paused() => game_state() == 0x58
function start_game() => prev(game_state()) == 0x56 && game_state() == 0x73
function demo() => game_state() == 0x23
function title_screen() => game_state() == 0x48

// $0288: 0x55 = Playing game
//        0x00 (1 frame) -> 0x57 = Round cleared
//        0x56 = Time remaining added to score / Game Over
//        0x00 = Lost a life

// function round_cleared() => prev(byte(0x288)) == 0 && byte(0x288) == 0x57
// function playing_game() => byte(0x288) == 0x55

// $02AB: 0x0b = Playing game
//        0x00 (1 frame) -> 0x0d = Round cleared
//        0x00 = Time remaining added to score / Lost a life
//        0x0c -> 0x0e = Game Over

function clear_round() => prev(byte(0x2ab)) == 0 && byte(0x2ab) == 0xd
function playing_game() => byte(0x2ab) == 0xb
function game_over() => prev(byte(0x2ab)) == 0xc && byte(0x2ab) == 0xe

// ------------
// Achievements
// ------------

function achievement_progress(title, points, round_param) {
    achievement(
        title = title,
        description = format("Clear Round {0}.", round_param),
        points = points,
        trigger = in_game() &&
                  round_trans(round_param)
    )
}

achievement_progress("Rescue the Passengers", points=2, round_param=2)
achievement_progress("Helicopter Attack", points=3, round_param=4)
achievement_progress("Heavy Traffic", points=4, round_param=6)
achievement_progress("Onslaught", points=5, round_param=8)
achievement_progress("Duke", points=10, round_param=10)
achievement_progress("Twilight", points=25, round_param=12)
achievement_progress("Helicopter Hell", points=50, round_param=14)

achievement(
    title = "Shoot 'em Up",
    description = "Clear a round after destroying at least 25 helicopters, missiles, or windows. (Must be Round 3 or higher)",
    points = 5,
    trigger = in_game() &&
              measured(tally(25, round() >= 3 && playing_game() && score_up())) &&
              clear_round() &&
              never(time_reset()) &&
              never(!in_game() && !game_paused())
)

achievement(
    title = "Quick Sniping",
    description = "Clear a round with at least 60 seconds remaining.",
    points = 5,
    trigger = in_game() &&
              time() >= 60 &&
              clear_round()
)

achievement(
    title = "Untouchable",
    description = "Clear the first 10 rounds without losing a life.",
    points = 25,
    trigger = once(start_game() && round() == 1) &&
              trigger_when(round_trans(10)) &&
              never(lose_life()) &&
              never(!in_game() && !game_paused())
)

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "High Score",
    description = "Submits at Game Over",
    start = in_game() &&
            score() > 0 &&
            game_over(),
    cancel = always_false(),
    submit = always_true(),
    value = measured(score()),
    format = "VALUE"
)

leaderboard(
    title = "Highest Round Reached",
    description = "Submits at Game Over",
    start = in_game() &&
            ((game_over()) || round_trans(98)),
    cancel = always_false(),
    submit = always_true(),
    value = measured(round()),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    in_game() || game_paused(),
    "Round {0} | Score {1} | Lives {2}",
    rich_presence_value("Round", round()),
    rich_presence_value("Score", score()),
    rich_presence_value("Lives", lives())
)

rich_presence_conditional_display(
    title_screen(),
    "Viewing the Title Screen"
)

rich_presence_conditional_display(
    demo(),
    "Demo playing"
)

rich_presence_display(
    "Playing Golgo 13"
)