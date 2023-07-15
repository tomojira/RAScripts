// Alter Ego
// #ID = 24715
// MD5: 234BC85BDDF914B28F662323540AFD89 - Alter Ego (World).uze

// --------------------------------
// Code notes, functions, variables
// --------------------------------

// $0EDC: Demo [8-bit]
//        0x00 = No demo
//        0x01 = Demo playing
//        0x02 = Title screen transition to demo

function no_demo() => byte(0xedc) == 0
function demo() => byte(0xedc) == 1 || byte(0xedc) == 2

// $0FE6: Game state [8-bit]
//        0x6b = Intro, Title screen
//        0x6c = Continue/New Game/Erase
//        0x6d = Level Select
//        0x6e = In-game
//        0x6f = Game paused
//        0x74 = Player dies, restarts level, clears level, or exits game
//        0x75 = All Levels Clear
//        
//        When using 16-bit
//        Pause game = 0x6e6e -> 0x136f
//        Unpause game = 0x136f -> 0x496f -> 0x706f -> 0x6e6e
//        Restart = 0x136f -> 0x496f -> 0x706f -> 0xd674 -> 0x476e -> 0x6e6e
//        Exit = 0x136f -> 0x496f -> 0xd674 -> 0x966b -> 0x9d6b -> 0xb26b
//        Die = 0x6e6e -> 0xc774 -> 0xd674 -> 0x476e -> 0x6e6e
//        Clear level = 0x6e6e -> 0x9674 -> 0xb674 -> 0xd674 -> 0x476e -> 0x616e -> 0x6e6e
//        Clear level 25 = 0x6e6e -> 0x9674 -> 0xb674 -> 0xd674 -> 0x1375 -> 0xdf75
//        Start from Level Select = 0xdc6d -> 0x116e -> 0x476e -> 0x6e6e
// $0FE7: Game state [8-bit]
//        In-game = 0x6e
//        Pause game = 0x6e -> 0x13
//        Unpause game = 0x13 -> 0x49 -> 0x70 -> 0x6e
//        Restart = 0x13 -> 0x49 -> 0x70 -> 0xd6 -> 0x47 -> 0x6e
//        Exit = 0x13 -> 0x49 -> 0xd6 -> 0x96 -> 0x9d -> 0xb2
//        Die = 0x6e -> 0xc7 -> 0xd6 -> 0x47 -> 0x6e
//        Clear level = 0x6e -> 0x96 -> 0xb6 -> 0xd6 -> 0x47 -> 0x61 -> 0x6e
//        Start from Level Select = 0xdc -> 0x11 -> 0x47 -> 0x6e
//        Other values as well during other game states, including some of the above repeated. Be careful using this address

function game_state_byte() => byte(0xfe6)
function game_state_word() => word(0xfe6)

function title_screen() => game_state_byte() == 0x6b
function restart_level() => prev(game_state_word()) == 0x706f && game_state_word() == 0xd674
function player_dies() => prev(game_state_word()) == 0x6e6e && game_state_word() == 0xc774
function level_select_start() => prev(game_state_byte()) == 0x6d && game_state_byte() == 0x6e

function in_game() => game_state_byte() == 0x6e || game_state_byte() == 0x6f || game_state_byte() == 0x74
function all_levels_clear() => game_state_byte() == 0x75
function level_select_screen() => game_state_byte() == 0x6d

// $0EB2: Level ID [8-bit]
//        0x00 to 0x18 = Level 1 to 25
//        0x19 = All Levels Clear
//        Level transition happens on same frame game state changes from 0xd674 to 0x476e. Or 0xd674 to 0x1375 for level 25

function level() => byte(0xeb2)

function clear_level(level_param) => prev(game_state_word()) == 0xd674 && game_state_word() == 0x476e && prev(level()) == (level_param - 1) && level() == level_param
function clear_level_25() => prev(game_state_word()) == 0xd674 && game_state_word() == 0x1375 && prev(level()) == 0x18 && level() == 0x19

level_dict = {
    0: "1: Hello World",
    1: "2: Promenade",
    2: "3: Broken Bridge",
    3: "4: Phantom Pixels",
    4: "5: Another Phantom",
    5: "6: Skulls Lair",
    6: "7: Abracadabra",
    7: "8: Vertical Illusions",
    8: "9: Mirrors",
    9: "10: Sixteen Pixels",
    0xa: "11: Perfect Reflect",
    0xb: "12: Icelands",
    0xc: "13: Midnight",
    0xd: "14: Lonely Skull",
    0xe: "15: Made in Heaven",
    0xf: "16: Underwater",
    0x10: "17: Zupapixels",
    0x11: "18: Skullopedia",
    0x12: "19: After the War",
    0x13: "20: Virus Kvartirus",
    0x14: "21: Neverskull",
    0x15: "22: Old Tower",
    0x16: "23: Fake Wall",
    0x17: "24: Almost There",
    0x18: "25: Final Chamber"
}

// $0ED6: Swaps remaining [8-bit]

function swaps() => byte(0xed6)

// ------------
// Achievements
// ------------

function achievement_progress(title, points, level_param) {
    achievement(
        title = title,
        description = "Clear Level " + level_param + ".",
        points = points,
        trigger = no_demo() &&
                  clear_level(level_param)
    )
}

function achievement_deathless(title, points, level_param) {
    achievement(
        title = title,
        description = "In one session, clear Levels " + level_param + " through " + (level_param + 4) + " without dying, restarting, or exiting. Start by selecting Level " + level_param + " from the Level Select screen.",
        points = points,
        trigger = once(no_demo() &&
                       level() == (level_param - 1) &&
                       level_select_start()) &&
                  trigger_when(clear_level(level_param + 4)) &&
                  never(player_dies()) &&
                  never(restart_level()) &&
                  never(!in_game())
    )
}

function achievement_speedrun(title, points, level_param, frames, time_desc) {
    achievement(
        title = title,
        description = "In one session, clear Levels " + level_param + " through " + (level_param + 4) + " in under " + time_desc + " without exiting. Start by selecting Level " + level_param + " from the Level Select screen.",
        points = points,
        trigger = once(no_demo() &&
                       level() == (level_param - 1) &&
                       level_select_start()) &&
                  trigger_when(clear_level(level_param + 4)) &&
                  never(repeated(frames, always_true())) &&
                  never(!in_game())
    )
}

achievement_progress("Another Phantom", points=2, level_param=5)
achievement_deathless("No Mistakes Allowed", points=5, level_param=1)
achievement_speedrun("Speedy Swapping", points=5, level_param=1, frames=4500, time_desc="1min15sec")

achievement_progress("Sixteen Pixels", points=3, level_param=10)
achievement_deathless("Conquer the Lair", points=5, level_param=6)
achievement_speedrun("Skulls Run", points=5, level_param=6, frames=5400, time_desc="1min30sec")

achievement_progress("Made in Heaven", points=4, level_param=15)
achievement_deathless("Master of Ice", points=5, level_param=11)
achievement_speedrun("Icy Run", points=5, level_param=11, frames=5100, time_desc="1min25sec")

achievement_progress("Virus Kvartirus", points=5, level_param=20)
achievement_deathless("Master of Water", points=5, level_param=16)
achievement_speedrun("Underwater Run", points=5, level_param=16, frames=6300, time_desc="1min45sec")

// Beating Level 25 functions differently than other level transitions
//achievement_progress("Final Chamber", points=5, level_param=25)
//achievement_deathless("Fire Power", points=5, level_param=21)
//achievement_speedrun("Lava Run", points=5, level_param=21, frames=5400, time_desc="1min30sec")

achievement(
    title = "Final Chamber",
    description = "Clear Level 25.",
    points = 10,
    trigger = no_demo() &&
              clear_level_25()
)

achievement(
    title = "Master of Fire",
    description = "In one session, clear Levels 21 through 25 without dying, restarting, or exiting. Start by selecting Level 21 from the Level Select screen.",
    points = 10,
    trigger = once(no_demo() &&
                   level() == 0x14 &&
                   level_select_start()) &&
              trigger_when(clear_level_25()) &&
              never(player_dies()) &&
              never(restart_level()) &&
              never(!in_game() && !all_levels_clear())
)

achievement(
    title = "Lava Run",
    description = "In one session, clear Levels 21 through 25 in under 1min30sec without exiting. Start by selecting Level 21 from the Level Select screen.",
    points = 10,
    trigger = once(no_demo() &&
                   level() == 0x14 &&
                   level_select_start()) &&
              trigger_when(clear_level_25()) &&
              never(repeated(5400, always_true())) &&
              never(!in_game() && !all_levels_clear())
)

// ------------
// Leaderboards
// ------------

function leaderboard_speedrun(level_param) {
    leaderboard(
        title = "Level " + level_param + "-" + (level_param + 4) + " Speedrun",
        description = "Start by selecting Level 1 from the Level Select screen.",
        start = no_demo() &&
                level() == (level_param - 1) &&
                level_select_start(),
        cancel = !in_game(),
        submit = clear_level(level_param + 4),
        value = measured(always_true()),
        format = "FRAMES",
        lower_is_better = true
    )
}

leaderboard_speedrun(1)
leaderboard_speedrun(6)
leaderboard_speedrun(11)
leaderboard_speedrun(16)

//leaderboard_speedrun(21)

leaderboard(
    title = "Level 21-25 Speedrun",
    description = "Start by selecting Level 21 from the Level Select screen.",
    start = no_demo() &&
            level() == 0x14 &&
            level_select_start(),
    cancel = !in_game() && !all_levels_clear(),
    submit = clear_level_25(),
    value = measured(always_true()),
    format = "FRAMES",
    lower_is_better = true
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    no_demo() && all_levels_clear(),
    "All Levels Clear!"
)

rich_presence_conditional_display(
    no_demo() && in_game(),
    "In Level {0} | {1} swaps remaining",
    rich_presence_lookup("Level", level(), level_dict),
    rich_presence_value("Swaps", swaps())
)

rich_presence_conditional_display(
    no_demo() && level_select_screen(),
    "Selecting Level {0}",
    rich_presence_lookup("Level", level(), level_dict)
)

rich_presence_conditional_display(
    demo(),
    "Demo playing"
)

rich_presence_display(
    "Playing Alter Ego"
)