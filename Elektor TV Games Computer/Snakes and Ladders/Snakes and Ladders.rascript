// Snakes and Ladders
// #ID = 24681
// md5: EC77C9285986436BF95FF41021665C38 - 11-1-SnakesAndLadders.tvc

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $1753: Player 1 square number [8-bit BCD]
// $1754: Player 2 square number [8-bit BCD]

function player_1_square() => bcd(byte(0x1753))
function player_2_square() => bcd(byte(0x1754))

square_100 = 0

// $17C8: Player 1 square number display [8-bit BCD]
//        0xf = No digit
// $17C9: Player 2 square number display [8-bit BCD]
//        0xf = No digit

function player_1_square_display() => byte(0x17c8)
function player_2_square_display() => byte(0x17c9)

square_display_none = 0xff

// $170B: Player 1's turn [8-bit]
//        0x27 = Yes
//        0xfe = No, or snake active
// $171B: Player 2's turn [8-bit]
//        0x77 = Yes
//        0xfe = No

function player_1_turn() => byte(0x170b)
function player_2_turn() => byte(0x171b)

player_1_turn_active = 0x27
player_2_turn_active = 0x77

// $1752: Die number rolled [8-bit]
//        0xb6 = No die is being rolled
//        0x50 = 1
//        0x5a = 2
//        0x64 = 3
//        0x6e = 4
//        0x78 = 5
//        0x82 = 6

function die_roll() => byte(0x1752)

roll_1 = 0x50
roll_6 = 0x82

// $170A: Player 1 x-position [8-bit]
//        0xfe = No sprite
//        0x0a = Normal position
//        Higher values = Walking to right or victory animation
// $171A: Player 2 x-position [8-bit]
//        0xfe = No sprite
//        0x5a = Normal position
//        Higher values = Walking to right or victory animation

function player_1_x() => byte(0x170a)

player_1_x_normal = 0xa
player_x_none = 0xfe

// $170C: Player 1 y-position [8-bit]
//        0x65 = Normal
//        Lower values = Climbing ladder (0x01 highest) or victory animation
//        Higher values = Falling from snake (0xf7 lowest)
// $171C: Player 2 y-position [8-bit]
//        0x65 = Normal
//        Lower values = Climbing ladder (0x01 highest) or victory animation
//        Higher values = Falling from snake (0xf9 lowest)

function player_1_y() => byte(0x170c)
function player_2_y() => byte(0x171c)

player_y_normal = 0x65
player_y_ladder = 1
player_y_snake = 0xf7

// $170D: Player 1 or 2 snake [8-bit]
//        0xfe = Both players normal
//        0x29 = Either player falling from snake
//        Address 0x171d is the same

function snake() => byte(0x170d)

snake_active = 0x29

// ------------
// Achievements
// ------------

achievement(
    title = "High Roller",
    description = "Roll a 6.",
    points = 1,
    trigger = player_1_turn() == player_1_turn_active &&
              die_roll() == roll_6 &&
              prev(player_1_x()) == player_1_x_normal &&
              player_1_x() > player_1_x_normal
)

achievement(
    title = "Baby Steps",
    description = "Roll a 1.",
    points = 1,
    trigger = player_1_turn() == player_1_turn_active &&
              die_roll() == roll_1 &&
              prev(player_1_x()) == player_1_x_normal &&
              player_1_x() > player_1_x_normal
)

achievement(
    title = "Moving Up in Life",
    description = "Climb a ladder.",
    points = 2,
    trigger = player_1_turn() == player_1_turn_active &&
              prev(player_1_y()) > player_y_ladder &&
              player_1_y() == player_y_ladder
)

achievement(
    title = "Hero Takes a Fall",
    description = "Encounter a snake.",
    points = 1,
    trigger = snake() == snake_active &&
              prev(player_1_y()) < player_y_snake &&
              player_1_y() == player_y_snake
)

achievement(
    title = "Happy Red Guy",
    description = "Win a game.",
    points = 5,
    trigger = player_1_square() == square_100 &&
              player_1_square_display() == square_display_none &&
              player_1_turn() == player_1_turn_active &&
              prev(player_1_y()) == player_y_normal && 
              player_1_y() < player_y_normal
)

achievement(
    title = "Pity Point",
    description = "Lose a game.",
    points = 1,
    trigger = player_2_square() == square_100 &&
              player_2_square_display() == square_display_none &&
              player_2_turn() == player_2_turn_active &&
              prev(player_2_y()) == player_y_normal && 
              player_2_y() < player_y_normal
)

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "Player 1 Wins: Squares Ahead of Player 2",
    description = "Submits how far ahead Player 1 is when they win.",
    start = player_1_square() == square_100 &&
            player_1_square_display() == square_display_none &&
            player_1_turn() == player_1_turn_active &&
            prev(player_1_y()) == player_y_normal && 
            player_1_y() < player_y_normal,
    cancel = always_false(),
    submit = always_true(),
    value = measured(100 - player_2_square()),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    player_1_x() != player_x_none && player_1_square() == square_100 && player_1_square_display() == square_display_none,
    "Snakes and Ladders | Player 1 wins! | Player 2: Square {0}",
    rich_presence_value("Player2Square", player_2_square())
)

rich_presence_conditional_display(
    player_1_x() != player_x_none && player_2_square() == square_100 && player_2_square_display() == square_display_none,
    "Snakes and Ladders | Player 2 wins! | Player 1: Square {0}",
    rich_presence_value("Player1Square", player_1_square())
)

rich_presence_conditional_display(
    player_1_x() != player_x_none,
    "Snakes and Ladders | Player 1: Square {0} | Player 2: Square {1}",
    rich_presence_value("Player1Square", player_1_square()),
    rich_presence_value("Player2Square", player_2_square())
)

rich_presence_display(
    "Playing Snakes and Ladders"
)

// ------------
// Unused notes
// ------------

// $1688: Player 1 start button input [8-bit]
//        0x0f = No input
//        0x8f = Input
// $1689: Player 1 roll button input [8-bit]
//        0x0f = No input
//        0x2f = Input
// $168C: Player 2 start button input [8-bit]
//        0x0f = No input
//        0x8f = Input
// $168D: Player 2 roll button input [8-bit]
//        0x0f = No input
//        0x2f = Input
// $1700: Die rolled: Top row dots / Other effects [8-bit]
//        0x00 = No dots (1 rolled, or no die being rolled)
//        0x40 = One left dot (2 or 3 rolled)
//        0x50 = Two dots (4, 5, or 6 rolled)
//        Other values while snake or ladder is active
// $1703: Die rolled: Middle row dots / Other effects [8-bit]
//        0x00 = No dots (2 or 4 rolled, or no die being rolled)
//        0x20 = One center dot (1, 3, or 5 rolled)
//        0x50 = Two dots (6 rolled)
//        Other values while snake or ladder is active
// $1706: Die rolled: Bottom row dots / Other effects [8-bit]
//        0x00 = No dots (1 rolled, or no die being rolled)
//        0x10 = One right dot (2 or 3 rolled)
//        0x50 = Two dots (4, 5, or 6 rolled)
//        Other values while snake or ladder is active