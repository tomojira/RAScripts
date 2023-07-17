// Boulder Dash EX [Subset - Classic Mode]
// #ID = 24942
// MD5: 56F7536A139CD78C460119AD88955FD5 - Boulder Dash EX (Europe) (En,Fr,De) [Subset - Classic Mode].gba

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $00BEA0: Screen [8-bit]
//          0x00 = Intro
//          0x01 = Title screen, main menu, demos
//          0x03 = Story Mode: World Select
//          0x04 = Story Mode in-game & cutscenes
//          0x05 = Classic Mode title screen
//          0x06 = Classic Mode in-game
//          0x07 = Battle Mode menus & in-game
//          0x30 = Card Collection menu
//          0x31 = Preview Scenes & cutscenes selected from this menu
//          0x33 = Sound Settings
//          0x34 = Language Select (Europe rom)
//          0x35 = Data Delete
//          0x3b = Card Collection: Viewing a card
//          0x47 = EX Game: Tutorial menu
//          0x48 = Classic Game: Tutorial menu
//          0x4a = EX Game menu
//          0x4b = Classic Game menu
//          0x4c = Options
//          0x50 = Classic Game: Tutorials in-game
//          0x51 = Classic Game: Tutorials text box
//          0x52 = EX Game: Tutorials text box
//          0x53 = EX Game: Tutorials in-game
//          0x5a = Story Mode: Stage Select

function screen() => byte(0xbea0)

classic_mode_title = 5
classic_mode_in_game = 6
classic_tutorial_menu = 0x48
classic_game_menu = 0x4b
classic_tutorial_in_game = 0x50
classic_tutorial_text = 0x51

// ------------
// Classic Game
// ------------

// $01BA18: Classic Game: Time remaining [8-bit]

function classic_time() => byte(0x1ba18)

// $01B9F2: Classic Game: Score [16-bit]
//          Every 500 points gives an extra life

function classic_score() => word(0x1b9f2)

// $01B9EC: Classic Game: Jewels [8-bit]

function classic_jewels() => byte(0x1b9ec)

// $01B9EA: Classic Game: Player lives [8-bit]
//          0x01 to 0x03

function classic_lives() => byte(0x1b9ea)

// $000F08: Classic Game: Cave cleared [8-bit]
//          0x8c = Entered exit door
//          Seems reliable for tutorial achievement

function classic_cave_cleared() => byte(0xf08)

cave_cleared = 0x8c

// $015A06: Classic Game: Player lives graphic, tens digit [8-bit]
//          0x31 to 0x43 = 0 to 9, steps of 2
//          Used to help fine-tune rich presence
// $015A08: Classic Game: Player lives graphic, ones digit [8-bit]
//          See 0x015a06 note

function classic_lives_zero() => (byte(0x15a06) == 0x31 && byte(0x15a08) == 0x31)

// ---------------------
// Classic Game Tutorial
// ---------------------

// $020555: Classic Game: Current/Last played tutorial lesson [8-bit]
//          0x00 to 0x03 = Lesson 1 to 4

function classic_tutorial_lesson() => byte(0x20555)

// ------------
// Classic Mode
// ------------

// $01B9E2: Classic Mode: Current/Last played level [8-bit]
//          0x00 to 0x04 = Level 1 to 5
//          Also affected by tutorial lessons

function classic_mode_level() => byte(0x1b9e2)

// $01B9E3: Classic Mode: Current/Last played cave [8-bit]
//          0x00 to 0x03 = Cave A to D
//          0x04 = Bonus Cave Q
//          0x05 to 0x08 = Cave E to H
//          0x09 = Bonus Cave R
//          0x0a to 0x0d = Cave I to L
//          0x0e = Bonus Cave S
//          0x0f to 0x12 = Cave M to P
//          0x13 = Bonus Cave T
//          0x14 = Classic Mode All Clear screen
//          Also affected by tutorial lessons

function classic_mode_cave() => byte(0x1b9e3)

caves_a_d = [0, 1, 2, 3]
caves_e_h = [5, 6, 7, 8]
caves_i_l = [0xa, 0xb, 0xc, 0xd]
caves_m_p = [0xf, 0x10, 0x11, 0x12]
cave_q = 4
cave_r = 9
cave_s = 0xe
cave_t = 0x13
classic_mode_all_clear = 0x14

//cave_strings = ["A", "B", "C", "D", "Q", "E", "F", "G", "H", "R", "I", "J", "K", "L", "S", "M", "N", "O", "P", "T"]

// no bonus caves
cave_strings = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"]

// the array doesn't work with rich presence
cave_dictionary = {
    0: "A",
    1: "B",
    2: "C",
    3: "D",
    4: "Q",
    5: "E",
    6: "F",
    7: "G",
    8: "H",
    9: "R",
    0xa: "I",
    0xb: "J",
    0xc: "K",
    0xd: "L",
    0xe: "S",
    0xf: "M",
    0x10: "N",
    0x11: "O",
    0x12: "P",
    0x13: "T"
}

cave_letter_dictionary = {
    "A": 0,
    "B": 1,
    "C": 2,
    "D": 3,
    "Q": 4,
    "E": 5,
    "F": 6,
    "G": 7,
    "H": 8,
    "R": 9,
    "I": 0xa,
    "J": 0xb,
    "K": 0xc,
    "L": 0xd,
    "S": 0xe,
    "M": 0xf,
    "N": 0x10,
    "O": 0x11,
    "P": 0x12,
    "T": 0x13
}

// $0205D6: Classic Mode: Bonus Cave Q cleared [8-bit]
//          0x00 = Not cleared
//          0x01 = Cleared
//          Flag is set when it's cleared on any level
// $0205D7: Classic Mode: Bonus Cave R cleared [8-bit]
//          See 0x0205d6 note
// $0205D8: Classic Mode: Bonus Cave S cleared [8-bit]
//          See 0x0205d6 note
// $0205D9: Classic Mode: Bonus Cave T / Classic Mode All Clear [8-bit]
//          See 0x0205d6 note
//          Flag is set after pressing start on the All Clear screen, entering the next level of Cave A

bonus_cave_completion = {
    cave_q: byte(0x205d6),
    cave_r: byte(0x205d7),
    cave_s: byte(0x205d8),
    cave_t: byte(0x205d9)
}

function check_bonus_cave_completion(cave) => bonus_cave_completion[cave]

// $00C110: Classic Mode: Hi-Score [16-bit]

function classic_mode_hi_score() => word(0xc110)

// ------------
// Achievements
// ------------

function achievement_classic_tutorial_trigger() {
    trigger = always_true()
    for i in range(1, 4) {
        trigger = trigger &&
                  once(screen() == classic_tutorial_in_game &&
                       classic_tutorial_lesson() == i - 1 && prev(classic_cave_cleared()) != cave_cleared && classic_cave_cleared() == cave_cleared)
    }
    
    return trigger
}

function achievement_classic_progress(id, title, points, level, caves) {
    trigger = always_true()
    for i in caves {
        trigger = trigger &&
                  once(screen() == classic_mode_in_game && classic_mode_level() == level - 1 && 
                       prev(screen()) == classic_mode_in_game && prev(classic_mode_cave()) == i && classic_mode_cave() == i + 1)
    }
    
    achievement(
        id = id,
        title = title,
        description = "In one session, clear Caves " + cave_dictionary[caves[0]] + ", " + cave_dictionary[caves[1]] + ", " + cave_dictionary[caves[2]] + ", and " + cave_dictionary[caves[3]] + " on Level " + level + ".",
        points = points,
        trigger = trigger
    )
}

// function achievement_all_jewels(title, points, level_parameter, cave_parameter, jewel_parameter, min_jewels) {
//     achievement(
//         title = title,
//         description = "Clear Cave " + cave_parameter + "-" + level_parameter + " with " + jewel_parameter + "/" + min_jewels + " Jewels.",
//         points = points,
//         trigger = screen() == classic_mode_in_game &&
//                   classic_mode_level() == level_parameter - 1 &&
//                   classic_jewels() == jewel_parameter &&
//                   prev(screen()) == classic_mode_in_game &&
//                   prev(classic_mode_cave()) == cave_letter_dictionary[cave_parameter] &&
//                   classic_mode_cave() == cave_letter_dictionary[cave_parameter] + 1
//     )
// }

achievement(
    id = 317052,
    title = "Back to the Past",
    description = "In one session, complete every lesson in the tutorial.",
    points = 1,
    trigger = achievement_classic_tutorial_trigger()
)

achievement(
    id = 338619,
    title = "Lights in the Darkness",
    description = "Gain a life by reaching at least 500 points.",
    points = 2,
    trigger = screen() == classic_mode_in_game &&
              prior(classic_score()) < 500 &&
              classic_score() >= 500 &&
              classic_lives() > prev(classic_lives())
)

achievement_classic_progress(317053, "Enter the Mines I", 5, 1, caves_a_d)
//achievement_all_jewels("Cave A-1 Jewels", points=1, level_parameter=1, cave_parameter="A", jewel_parameter=18, min_jewels=12)

achievement_classic_progress(317054, "Grave of the Fireflies I", 5, 1, caves_e_h)
achievement_classic_progress(317055, "The Depths I", 5, 1, caves_i_l)
achievement_classic_progress(317056, "Amoeba Pit I", 5, 1, caves_m_p)

achievement_classic_progress(317057, "Enter the Mines II", 5, 2, caves_a_d)
achievement_classic_progress(317058, "Grave of the Fireflies II", 5, 2, caves_e_h)
achievement_classic_progress(317059, "The Depths II", 5, 2, caves_i_l)
achievement_classic_progress(317060, "Amoeba Pit II", 5, 2, caves_m_p)

achievement_classic_progress(317061, "Enter the Mines III", 10, 3, caves_a_d)
achievement_classic_progress(317062, "Grave of the Fireflies III", 10, 3, caves_e_h)
achievement_classic_progress(317063, "The Depths III", 10, 3, caves_i_l)
achievement_classic_progress(317064, "Amoeba Pit III", 10, 3, caves_m_p)

achievement_classic_progress(317065, "Enter the Mines IV", 10, 4, caves_a_d)
achievement_classic_progress(317066, "Grave of the Fireflies IV", 10, 4, caves_e_h)
achievement_classic_progress(317067, "The Depths IV", 25, 4, caves_i_l)
achievement_classic_progress(317068, "Amoeba Pit IV", 25, 4, caves_m_p)

achievement_classic_progress(317069, "Enter the Mines V", 25, 5, caves_a_d)
achievement_classic_progress(317070, "Grave of the Fireflies V", 25, 5, caves_e_h)
achievement_classic_progress(317071, "The Depths V", 50, 5, caves_i_l)
achievement_classic_progress(317072, "Amoeba Pit V", 50, 5, caves_m_p)

function achievement_bonus_cave_clear(id, title, points, cave) {
    achievement(
        id = id,
        title = title,
        description = "Clear Bonus Cave " + cave_dictionary[cave] + ".",
        points = points,
        trigger = screen() == classic_mode_in_game &&
                  __ornext(classic_mode_cave() == cave || classic_mode_cave() == cave + 1) &&
                  prev(check_bonus_cave_completion(cave)) == 0 &&
                  check_bonus_cave_completion(cave) == 1
    )
}

//function description_bonus_cave_clear(cave) {
//    return "Classic Mode: Clear Bonus Cave " + cave_strings[cave] + "."
//}

achievement_bonus_cave_clear(317073, "The Butterfly Effect", 5, cave_q)
achievement_bonus_cave_clear(317074, "Infestation", 5, cave_r)
achievement_bonus_cave_clear(317075, "Magic Window", 5, cave_s)

achievement(
    id = 317076,
    title = "Rockford Smiles Upon You",
    description = "Clear Bonus Cave T.",
    points = 5,
    trigger = __ornext(screen() == classic_mode_in_game || screen() == classic_mode_title) &&
              __ornext(classic_mode_cave() == cave_t || classic_mode_cave() == classic_mode_all_clear || classic_mode_cave() == 1 - 1) &&
              prev(check_bonus_cave_completion(cave_t)) == 0 &&
              check_bonus_cave_completion(cave_t) == 1
)

// ------------
// Leaderboards
// ------------

// 1000 is the Hi-Score the game starts with
leaderboard(
    id = 65200,
    title = "Total Hi-Score",
    description = "Submitted after cave is cleared, after Game Over, or after exiting to menu with a new Hi-Score.",
    start = __ornext(screen() == classic_mode_in_game || screen() == classic_mode_title || screen() == classic_game_menu) &&
            classic_mode_hi_score() > 1000 &&
            classic_mode_hi_score() > prev(classic_mode_hi_score()),
    cancel = always_false(),
    submit = always_true(),
    value = measured(classic_mode_hi_score()),
    format = "VALUE"
)

function leaderboard_cave_hi_score() {
    leaderboard_ids = range(71831, 71910)
    id_iteration = 0
    for level in range(0,4) {
        for cave in cave_strings {
            leaderboard(
                id = leaderboard_ids[id_iteration],
                title = "Cave " + cave + "-" + (level + 1) + " Hi-Score",
                description = "Must start cave from Title Screen with score of 0. Cancels after dying, retrying, or exiting.",
                start = classic_mode_level() == level &&
                        classic_mode_cave() == cave_letter_dictionary[cave] &&
                        classic_score() == 0 &&
                        prev(screen()) == classic_mode_title &&
                        screen() == classic_mode_in_game,
                cancel = __ornext(classic_lives() < prev(classic_lives()) ||
                                  screen() != classic_mode_in_game),
                submit = prev(classic_mode_cave()) == cave_letter_dictionary[cave] &&
                         classic_mode_cave() == (cave_letter_dictionary[cave] + 1),
                value = measured(classic_score()),
                format = "VALUE"
            )
            id_iteration = id_iteration + 1
        }
    }
}

leaderboard_cave_hi_score()

// -------------
// Rich Presence
// -------------

// See the main script

// -------------------
// Formerly used notes
// -------------------

// $0155A8: Classic Game: Cave cleared (unreliable) [8-bit]
//          0x00 = Playing the game. Also when paused, using map preview (select button), cave intros, player death, and in menus
//          0x01 = Enter the exit door. Also Classic Mode All Clear screen
//          Not as reliable as I thought, it stays on 0x01 as you play through tutorial lessons

//function classic_cave_cleared() => byte(0x155a8)

// $007D7E: Classic Game: Cave cleared (unreliable) [8-bit]
//          0x01 = Entered exit door
//          Not reliable for the tutorial achievement I'm trying to do

//function classic_cave_cleared() => byte(0x7d7e)

// $01BA25: Classic Game: Cave intro [8-bit]
//          0x00 = Cave loading in. But also after Game Over transition to title screen, etc.
//          Formerly used to help fine-tune rich presence

//function classic_cave_intro() => byte(0x1ba25)

//cave_intro = 0

// ------------
// Unused notes
// ------------

// $000CC9: Music [8-bit]
//          These values are for the Europe rom. The USA and Japan roms are slightly different; USA usually seems to add +1 to these values, and Japan usually seems to add +2.
//          0x06 = Card Collection
//          0x0a = World of Forest
//          0x10 or 0x11 = World of Sand
//          0x18 or 0x19 = World of Fire
//          0x21 = World of Water
//          0x27 or 0x28 = World of Ice
//          0x31, 0x32, 0x33 = World of Evil
//          0x3c or 0x3d = Battle Mode menus
//          0x42 = Battle Mode: Player 1 wins
//          0x43 or 0x44 = Battle Mode in-game
//          0x49 or 0x4a = Opening cutscene
//          0x4c or 0x4d = Opening cutscene: Dark King appears
//          0x53 or 0x54 = Opening cutscene: Sonya kidnapped
//          0x58 or 0x59 = Most cutscenes
//          0x5f = Cutscenes: Dark King theme
//          0x63 or 0x64 = Cutscene VI: Alex faces Dark King
//          0x6b = Cutscene VI: Sonya saved
//          0x6f or 0x70 = Credits
//          0x77 = Battle Mode: Time's up!
//          0x78 or 0x79 = Classic Mode: Title screen
//          0x91 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x92 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xde or 0xdf = Title screen, main menu
//          0xe8 or 0xe9 = EX Game menu, Classic Game menu
//          0xed or 0xee = Story Mode: World Select, Stage Select / Data Delete
//          0xf2 or 0xf3 = Tutorial menus
//          0xf8 = Classic Mode All Clear
//          0xfa or 0xfb = Options, Language Select, Preview Scenes
//
//          USA: (only listing relevant values for RP)
//          0x06 or 0x07 = Card Collection
//          0x3c or 0x3d = Battle Mode menus
//          0x42 = Battle Mode: Player 1 wins
//          0x44 or 0x45 = Battle Mode in-game
//          0x4a = Opening cutscene
//          0x4d = Opening cutscene: Dark King appears
//          0x54 = Opening cutscene: Sonya kidnapped
//          0x59 or 0x5a = Most cutscenes
//          0x5f or 0x60 = Cutscenes: Dark King theme
//          0x64 or 0x65 = Cutscene VI: Alex faces Dark King
//          0x6b or 0x6c = Cutscene VI: Sonya saved
//          0x6f or 0x70 = Credits (only 1 frame 0x6f, then all 0x70)
//          0x91 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x92 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xe9 = EX Game menu, Classic Game menu
//
//          Japan:
//          0x08 or 0x09 = Card Collection
//          0x3e or 0x3f = Battle Mode menus
//          0x44 = Battle Mode: Player 1 wins
//          0x45 or 0x46 = Battle Mode in-game
//          0x4c = Opening cutscene
//          0x4e or 0x4f = Opening cutscene: Dark King appears
//          0x55 or 0x56 = Opening cutscene: Sonya kidnapped
//          0x5a or 0x5b = Most cutscenes
//          0x61 or 0x62 = Cutscenes: Dark King theme
//          0x66 or 0x67 = Cutscene VI: Alex faces Dark King
//          0x6d = Cutscene VI: Sonya saved
//          0x71 or 0x72 = Credits
//          0x93 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x94 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xea or 0xeb = EX Game menu, Classic Game menu

// $002D56: Classic Game: Game paused [8-bit]
//          0x00 = Unpaused
//          0x0c = Paused

// $007DB6: Classic Game: Game state [8-bit]
//          0x00 = Paused, map preview (select button), or cave intro, outro, transition, player death
//          0x01 = In-game & able to input, but also when exiting to menu

// $00C131: Classic Game: Cave intro, outro, transition, death [8-bit]
//          0x81 = Cave intro, outro, transition; also Classic Mode All Clear
//          0x83 = In-game & able to input, but stays the same when exiting to menu
//          0x85 = Player dies
//          0x8f = Time up

// $01B9E4: Classic Game: Player x-coordinate [8-bit]
//          0x0b = Furthest left
// $01B9E5: Classic Game: Player y-coordinate [8-bit]
//          0x0b = Furthest up

// $01BA28: Classic Game: Exit door opened [8-bit]
//          0x00 = Closed
//          0x01 = Opened
//          Doesn't always work while cheating, sometimes random things happen depending on the cave. Other factors are involved in opening the door

// $01D0CF: Classic Game: Cave tile map [1178 bytes]
//          0x00 = Nothing
//          0x01 and other values = Rockford animations
//          0x19 = Dirt
//          0x1a = Wall
//          0x1b = Boundary
//          0x1c = Boulder
//          0x26 to 0x29 = Magic Wall animation
//          0x2a to 0x2d = Butterfly animation
//          0x2e to 0x31 = Firefly animation
//          0x32 to 0x35 = Amoeba animation
//          0x41 to 0x44 = Exit door animation
//          0x5e to 0x65 = Jewel animation

// $02055B: Classic Mode: Cave A-1 accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
//          Note 0x0205c6 and following addresses also need to be flagged for caves to be accessible.
//          Some caves are unlocked from the start, and higher level caves unlock while playing through lower level caves, so achievements may require beating caves in one session instead of relying on these flags.
// $02055C: Classic Mode: Cave A-2 accessible [8-bit]
//          See 0x02055b note
// $02055D: Classic Mode: Cave A-3 accessible [8-bit]
//          See 0x02055b note
// $02055E: Classic Mode: Cave A-4 accessible [8-bit]
//          See 0x02055b note
// $02055F: Classic Mode: Cave A-5 accessible [8-bit]
//          See 0x02055b note
// $020560: Classic Mode: Cave B-1 accessible [8-bit]
//          See 0x02055b note
// $020561: Classic Mode: Cave B-2 accessible [8-bit]
//          See 0x02055b note
// $020562: Classic Mode: Cave B-3 accessible [8-bit]
//          See 0x02055b note
// $020563: Classic Mode: Cave B-4 accessible [8-bit]
//          See 0x02055b note
// $020564: Classic Mode: Cave B-5 accessible [8-bit]
//          See 0x02055b note
// $020565: Classic Mode: Cave C-1 accessible [8-bit]
//          See 0x02055b note
// $020566: Classic Mode: Cave C-2 accessible [8-bit]
//          See 0x02055b note
// $020567: Classic Mode: Cave C-3 accessible [8-bit]
//          See 0x02055b note
// $020568: Classic Mode: Cave C-4 accessible [8-bit]
//          See 0x02055b note
// $020569: Classic Mode: Cave C-5 accessible [8-bit]
//          See 0x02055b note
// $02056A: Classic Mode: Cave D-1 accessible [8-bit]
//          See 0x02055b note
// $02056B: Classic Mode: Cave D-2 accessible [8-bit]
//          See 0x02055b note
// $02056C: Classic Mode: Cave D-3 accessible [8-bit]
//          See 0x02055b note
// $02056D: Classic Mode: Cave D-4 accessible [8-bit]
//          See 0x02055b note
// $02056E: Classic Mode: Cave D-5 accessible [8-bit]
//          See 0x02055b note
// $02056F: Classic Mode: Cave E-1 accessible [8-bit]
//          See 0x02055b note
// $020570: Classic Mode: Cave E-2 accessible [8-bit]
//          See 0x02055b note
// $020571: Classic Mode: Cave E-3 accessible [8-bit]
//          See 0x02055b note
// $020572: Classic Mode: Cave E-4 accessible [8-bit]
//          See 0x02055b note
// $020573: Classic Mode: Cave E-5 accessible [8-bit]
//          See 0x02055b note
// $020574: Classic Mode: Cave F-1 accessible [8-bit]
//          See 0x02055b note
// $020575: Classic Mode: Cave F-2 accessible [8-bit]
//          See 0x02055b note
// $020576: Classic Mode: Cave F-3 accessible [8-bit]
//          See 0x02055b note
// $020577: Classic Mode: Cave F-4 accessible [8-bit]
//          See 0x02055b note
// $020578: Classic Mode: Cave F-5 accessible [8-bit]
//          See 0x02055b note
// $020579: Classic Mode: Cave G-1 accessible [8-bit]
//          See 0x02055b note
// $02057A: Classic Mode: Cave G-2 accessible [8-bit]
//          See 0x02055b note
// $02057B: Classic Mode: Cave G-3 accessible [8-bit]
//          See 0x02055b note
// $02057C: Classic Mode: Cave G-4 accessible [8-bit]
//          See 0x02055b note
// $02057D: Classic Mode: Cave G-5 accessible [8-bit]
//          See 0x02055b note
// $02057E: Classic Mode: Cave H-1 accessible [8-bit]
//          See 0x02055b note
// $02057F: Classic Mode: Cave H-2 accessible [8-bit]
//          See 0x02055b note
// $020580: Classic Mode: Cave H-3 accessible [8-bit]
//          See 0x02055b note
// $020581: Classic Mode: Cave H-4 accessible [8-bit]
//          See 0x02055b note
// $020582: Classic Mode: Cave H-5 accessible [8-bit]
//          See 0x02055b note
// $020583: Classic Mode: Cave I-1 accessible [8-bit]
//          See 0x02055b note
// $020584: Classic Mode: Cave I-2 accessible [8-bit]
//          See 0x02055b note
// $020585: Classic Mode: Cave I-3 accessible [8-bit]
//          See 0x02055b note
// $020586: Classic Mode: Cave I-4 accessible [8-bit]
//          See 0x02055b note
// $020587: Classic Mode: Cave I-5 accessible [8-bit]
//          See 0x02055b note
// $020588: Classic Mode: Cave J-1 accessible [8-bit]
//          See 0x02055b note
// $020589: Classic Mode: Cave J-2 accessible [8-bit]
//          See 0x02055b note
// $02058A: Classic Mode: Cave J-3 accessible [8-bit]
//          See 0x02055b note
// $02058B: Classic Mode: Cave J-4 accessible [8-bit]
//          See 0x02055b note
// $02058C: Classic Mode: Cave J-5 accessible [8-bit]
//          See 0x02055b note
// $02058D: Classic Mode: Cave K-1 accessible [8-bit]
//          See 0x02055b note
// $02058E: Classic Mode: Cave K-2 accessible [8-bit]
//          See 0x02055b note
// $02058F: Classic Mode: Cave K-3 accessible [8-bit]
//          See 0x02055b note
// $020590: Classic Mode: Cave K-4 accessible [8-bit]
//          See 0x02055b note
// $020591: Classic Mode: Cave K-5 accessible [8-bit]
//          See 0x02055b note
// $020592: Classic Mode: Cave L-1 accessible [8-bit]
//          See 0x02055b note
// $020593: Classic Mode: Cave L-2 accessible [8-bit]
//          See 0x02055b note
// $020594: Classic Mode: Cave L-3 accessible [8-bit]
//          See 0x02055b note
// $020595: Classic Mode: Cave L-4 accessible [8-bit]
//          See 0x02055b note
// $020596: Classic Mode: Cave L-5 accessible [8-bit]
//          See 0x02055b note
// $020597: Classic Mode: Cave M-1 accessible [8-bit]
//          See 0x02055b note
// $020598: Classic Mode: Cave M-2 accessible [8-bit]
//          See 0x02055b note
// $020599: Classic Mode: Cave M-3 accessible [8-bit]
//          See 0x02055b note
// $02059A: Classic Mode: Cave M-4 accessible [8-bit]
//          See 0x02055b note
// $02059B: Classic Mode: Cave M-5 accessible [8-bit]
//          See 0x02055b note
// $02059C: Classic Mode: Cave N-1 accessible [8-bit]
//          See 0x02055b note
// $02059D: Classic Mode: Cave N-2 accessible [8-bit]
//          See 0x02055b note
// $02059E: Classic Mode: Cave N-3 accessible [8-bit]
//          See 0x02055b note
// $02059F: Classic Mode: Cave N-4 accessible [8-bit]
//          See 0x02055b note
// $0205A0: Classic Mode: Cave N-5 accessible [8-bit]
//          See 0x02055b note
// $0205A1: Classic Mode: Cave O-1 accessible [8-bit]
//          See 0x02055b note
// $0205A2: Classic Mode: Cave O-2 accessible [8-bit]
//          See 0x02055b note
// $0205A3: Classic Mode: Cave O-3 accessible [8-bit]
//          See 0x02055b note
// $0205A4: Classic Mode: Cave O-4 accessible [8-bit]
//          See 0x02055b note
// $0205A5: Classic Mode: Cave O-5 accessible [8-bit]
//          See 0x02055b note
// $0205A6: Classic Mode: Cave P-1 accessible [8-bit]
//          See 0x02055b note
// $0205A7: Classic Mode: Cave P-2 accessible [8-bit]
//          See 0x02055b note
// $0205A8: Classic Mode: Cave P-3 accessible [8-bit]
//          See 0x02055b note
// $0205A9: Classic Mode: Cave P-4 accessible [8-bit]
//          See 0x02055b note
// $0205AA: Classic Mode: Cave P-5 accessible [8-bit]
//          See 0x02055b note
// $0205AB: Classic Mode: Bonus Cave Q (Level 1) cleared [8-bit]
//          0x00 = Not cleared
//          0x01 = Cleared
//          All bonus caves seem to be the same regardless of level, even though these different flags are recorded
// $0205AC: Classic Mode: Bonus Cave Q (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205AD: Classic Mode: Bonus Cave Q (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205AE: Classic Mode: Bonus Cave Q (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205AF: Classic Mode: Bonus Cave Q (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205B0: Classic Mode: Bonus Cave R (Level 1) cleared [8-bit]
//          See 0x0205ab note
// $0205B1: Classic Mode: Bonus Cave R (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205B2: Classic Mode: Bonus Cave R (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205B3: Classic Mode: Bonus Cave R (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205B4: Classic Mode: Bonus Cave R (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205B5: Classic Mode: Bonus Cave S (Level 1) cleared [8-bit]
//          See 0x0205ab note
// $0205B6: Classic Mode: Bonus Cave S (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205B7: Classic Mode: Bonus Cave S (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205B8: Classic Mode: Bonus Cave S (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205B9: Classic Mode: Bonus Cave S (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205BA: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 1) [8-bit]
//          See 0x0205ab note
//          Flag is set after pressing start on the All Clear screen, entering the next level of Cave A
// $0205BB: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 2) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BC: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 3) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BD: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 4) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BE: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 5) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205C6: Classic Mode: Cave A accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
// $0205C7: Classic Mode: Cave B accessible [8-bit]
//          See 0x0205c6 note
// $0205C8: Classic Mode: Cave C accessible [8-bit]
//          See 0x0205c6 note
// $0205C9: Classic Mode: Cave D accessible [8-bit]
//          See 0x0205c6 note
// $0205CA: Classic Mode: Cave E accessible [8-bit]
//          See 0x0205c6 note
// $0205CB: Classic Mode: Cave F accessible [8-bit]
//          See 0x0205c6 note
// $0205CC: Classic Mode: Cave G accessible [8-bit]
//          See 0x0205c6 note
// $0205CD: Classic Mode: Cave H accessible [8-bit]
//          See 0x0205c6 note
// $0205CE: Classic Mode: Cave I accessible [8-bit]
//          See 0x0205c6 note
// $0205CF: Classic Mode: Cave J accessible [8-bit]
//          See 0x0205c6 note
// $0205D0: Classic Mode: Cave K accessible [8-bit]
//          See 0x0205c6 note
// $0205D1: Classic Mode: Cave L accessible [8-bit]
//          See 0x0205c6 note
// $0205D2: Classic Mode: Cave M accessible [8-bit]
//          See 0x0205c6 note
// $0205D3: Classic Mode: Cave N accessible [8-bit]
//          See 0x0205c6 note
// $0205D4: Classic Mode: Cave O accessible [8-bit]
//          See 0x0205c6 note
// $0205D5: Classic Mode: Cave P accessible [8-bit]
//          See 0x0205c6 note

// $001069: Classic Game: Sound effect [8-bit]
//          0x15 = Kill enemy or player death
//          0x26 = Pick up jewel