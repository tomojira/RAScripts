// Sonic Mega Collection Plus
// #ID = 20255

// $1EC6818: [Any Genesis Game] PS2 Pause Menu State [8-bit]
//           0x00: Not Active
//           0x01: Fade In (Unused)
//           0x02: Active
//           0x03: Fade Out
//           0x05: In Sub-Menu

function smcp_pause_menu() => byte(0x1ec6818)
function smcp_not_paused() => smcp_pause_menu() == 0

// $1EC7A8C: PS2 Pause Menu: Mega Drive (8-bit)
//           Load Saves - 0x02
//           Save Select - 0x03
//           Creating Save File - 0x04
//           Loading Save File - 0x05
//           Save File created - 0x06
//           Save File loaded & Memory Card Format Prompt - 0x07
//           Load Prompt - 0x08
//           Formatting - 0x09
//           no load - 0x0c
//           Save Game Exit - 0x10
//           Load Game Exit - 0x11
//           Save File overwrite - 0x12
//           Overwrite done - 0x13

function smcp_load_save() => byte(0x1ec7a8c) == 5

// $1FFA690: [32-bit] Controller configuration - 1P
// $1FFA694: [32-bit] Controller configuration - 2P

function controller_config() => dword(0x1ffa690)
function controller_config_1() => controller_config() == 0
function controller_config_2() => controller_config() == 1
function controller_config_3() => controller_config() == 2

// $45269C: Player 1 Buttons Held This Frame (Inverted) [8-bit flags]
//          bit0: Select
//          bit1: L3
//          bit2: R3
//          bit3: Start
//          bit4: Up
//          bit5: Right
//          bit6: Down
//          bit7: Left
// $45269D: Player 1 Buttons Held This Frame Part 2 (Inverted) [8-bit flags]
//          bit0: L2
//          bit1: R2
//          bit2: L1
//          bit3: R1
//          bit4: Triangle
//          bit5: Circle
//          bit6: X
//          bit7: Square

button_input_1 = 0x45269d
button_input_2 = 0x45269c
function x_button_input() => bit6(button_input_1) == 0
function circle_button_input() => bit5(button_input_1) == 0
function square_button_input() => bit7(button_input_1) == 0
function L2_button_input() => bit0(button_input_1) == 0

// $1FDA5F0: [Sonic Mega Collection Plus] [8-bits]
//           Screen Indicator
//           0x03 = In a Genesis Game
//           0x04 = In a Game Gear Game

function in_genesis_game() => byte(0x1fda5f0) == 3

// $1FDA628: [Sonic Mega Collection Plus] [8-bits]
//           Game Indicator
//           0x00 = Sonic the Hedgehog (Genesis)
//           0x01 = Sonic the Hedgehog 2
//           0x02 = Sonic the Hedgehog 3
//           0x03 = Sonic & Knuckles
//           0x04 = Blue Sphere
//           0x05 = Knuckles in Sonic 2
//           0x06 = Sonic 3 & Knuckles
//           0x07 = Sonic 3D Blast
//           0x08 = Sonic Spinball
//           0x09 = Dr. Robotnik's Mean Bean Machine (Genesis)
//           0x0a = Flicky
//           0x0b = Ristar
//           0x0c = The Ooze
//           0x0d = Comix Zone
//           0x0e = Sonic the Hedgehog (Game Gear)
//           0x0f = Sonic Labyrinth
//           0x10 = Sonic Drift
//           0x11 = Sonic Chaos
//           0x12 = Sonic Blast
//           0x13 = Dr. Robotnik's Mean Bean Machine (Game Gear)

function in_sk() => byte(0x1fda628) == 3

// $EF3E00: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Screen Mode
//          0x04 = Title Menu
//          0x8c = Stage Transition
//          0x0c = In Game
//          0x10 = Special Stage
//          
//          Sonic 2
//          0x20 = Ending
//          
//          Sonic 3
//          0x20 = Ending
//          0x34 = Special Stage
//          0x48 = Special Stage Result
//          0x8c = Transition
//          
//          Sonic 3 & Knuckles:
//          Start Screen - 0x04
//          File Select - 0x4c
//          Level Select - 0x28
//          Competition Mode - 0x38
//          Sonic 2 Options Menu (unused) - 0x24
//          Sonic 2 2-Player Mode (unused) - 0x1c
//          Demo Mode - 0x08
//          Special Stage - 0x34
//          No Way! - 0x2c
//          Staff Credits - 0x20
//          Ingame - 0x0c
//          Score Tally Special Stage - 0x48
//          
//          Knuckes in Sonic 2:
//          0x00 = Sega Logo
//          0x04 = Title Screen
//          0x08 = Demo
//          0x8c = Screen Transition
//          0x0c = In-Game

function screen() => byte(0xef3e00)
function title_screen() => screen() == 4
function screen_transition() => screen() == 0x8c
function in_game() => screen() == 0xc
function start_game_from_title() => prev(screen()) == 4 && screen_transition()

// $EF3E3B: [Sonic & Knuckles, 3] Game Paused [8-bit]
//          0x00 = Not Paused
//          0x01 = Paused

function game_paused() => byte(0xef3e3b) == 1

// $EF47E0: [Sonic the Hedgehog (Genesis), S3&K] [8-bit]
//          Stage Select Active = 01
// $EF47E1: [Sonic the Hedgehog (Genesis), 3] [8-bit]
//          Slow / Single Frame Step Mode Active = 01

function level_select_active() => byte(0xef47e0) == 1
function level_select_inactive() => byte(0xef47e0) == 0

// $EF470B: [Blue Sphere]
//          Current Character
//          0x01 = Sonic
//          0x03 = Knuckles
//          
//          [Sonic The Hedgehog 3]
//          0x00 = Sonic + Tails
//          0x01 = Sonic Only
//          0x02 = Tails Only
//
//          [Sonic 3 & Knuckles] Level Layout (takes hghest priority)
//          Sonic & Tails - 0x00
//          Sonic - 0x01
//          Tails - 0x02
//          Knuckles - 0x03

function character() => byte(0xef470b)
function character_sonic() => character() == 1
function character_knuckles() => character() == 3

// $EF364E: Sonic 3 & Knuckles: current Level ID (8-bit)
//          Angel Island Zone - 0x00
//          Hydrocity Zone - 0x01
//          Marble Garden Zone - 0x02
//          Carnival Night Zone - 0x03
//          Flying Battery Zone - 0x04
//          Icecap Zone - 0x05
//          Launch Base Zone - 0x06
//          Mushroom Hill Zone - 0x07
//          Sandopolis Zone - 0x08
//          Lava Reef Zone - 0x09
//          Lava Reef Zone Act 2 Boss Room & Hidden Palace Zone - 0x16
//          Sky Sanctuary Zone - 0x0a
//          Death Egg Zone - 0x0b
//          The Doomsday Zone (Super Sonic) - 0x0c
//          The Doomsday Zone (Death Egg Robot) & Hidden Palace (Emeralds) - 0x17
//          Credits - 0x0d
//          Bonus Stage (Gumball Machine) - 0x13
//          Bonus Stage - 0x14
//          Bonus Stage (Slot Machine) - 0x15

function zone() => byte(0xef364e)

mushroom_hill = 7
flying_battery = 4
sandopolis = 8
lava_reef = 9
lava_reef_boss = 0x16
sky_sanctuary = 0xa
death_egg = 0xb
death_egg_boss = 0x17
doomsday = 0xc
credits = 0xd

// $EF364F: Sonic 3 & Knuckles: current Act ID (8-bit)

function act() => byte(0xef364f)

// $EEF82E: Sonic 3 & Knuckles: Act Clear Check (8-bit)
//          Clear - 0x81

// function act_clear() => byte(0xeef82e)
// function clear_act() => prev(act_clear()) == 0 && act_clear() == 0x81

// $EF461E: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Act Completed = 0x00

function act_clear() => byte(0xef461e)
function clear_act() => prev(act_clear()) == 0 && act_clear() == 1

// $EF4620: [Sonic the Hedgehog 1(Genesis), 2, 3] [16-bit BE]
//          Ring counter

function rings() => word_be(0xef4620)
function no_ring_gain() => rings() == prev(rings())

// $EF4612: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Number of Lives

function lives() => byte(0xef4612)
function gain_life() => lives() > prev(lives())
function lose_life() => lives() < prev(lives())

// $EF46CC: Sonic 3 & Knuckles: Monitors destroyed in Stage (16-bit BE)

function monitor_count() => word_be(0xef46cc)
function monitor_count_up() => monitor_count() > prev(monitor_count())

// $EEF810: Sonic 3 & Knuckles: Main Character X coords (16-bit BE)
// $EEF814: Sonic 3 & Knuckles: Main Character Y coords (16-bit BE)

// Life Monitors
// MH1 1: x = 0x1f5f, y = 0x056c
// MH1 2: x = 0x38bf, y = 0x036c
// MH2 3: x = 0x324f, y = 0x02ac
// FB1 1: x = 0x11eb, y = 0x00cc
// FB1 2: x = 0x1ee9, y = 0x042c
// FB2 3: x = 0x0fcb, y = 0x07ec
// SP1 1: x = , y = (Knuckles only)
// SP2 2: x = 0x250e, y = 0x016c
// LR1 1: x = 0x0de8, y = 0x0230
// LR1 2: x = 0x1039, y = 0x0731
// LR1 3: x = 0x1d67, y = 0x02b0
// LR1 4: x = 0x12b7, y = 0x08b0
// SS  1: x = 0x1355, y = 0x092c
// SS  2: x = 0x0a22, y = 0x0fcc
// DE2 1: x = 0x1582, y = 0x05c4
// DE2 2: x = 0x1a4e, y = 0x0bd3

function x_position() => word_be(0xeef810)
function y_position() => word_be(0xeef814)

// $EF2F00: [S3&K] Ring Status Table [1024 bytes]
//          Any ring that hasn't been collected yet starts as 0x0000. Picking it up eventually turns it to 0xffff.
// $EF3300: [S3&K] Object Respawn Table [768 bytes]
//          There is room for one object per byte, but not all slots are used in each act.
// $EF333E: [S&K] SS Life Monitor 2 [8-bit]
// $EF338F: [S&K] FB2 Life Monitor [8-bit]
// $EF339B: [S&K] LR1 Life Monitor 1 [8-bit]
// $EF339C: [S&K] SS Life Monitor 1 [8-bit]
// $EF33AD: [S&K] FB1 Life Monitor 1 [8-bit]
// $EF33B6: [S&K] DE2 Life Monitor 1 [8-bit]
// $EF33BE: [S&K] LR1 Life Monitor 2 [8-bit]
// $EF33ED: [S&K] LR1 Life Monitor 4 [8-bit]
// $EF3401: [S&K] SP2 Life Monitor [8-bit]
// $EF340B: [S&K] DE2 Life Monitor 2 [8-bit]
// $EF3437: [S&K] FB1 Life Monitor 2 [8-bit]
// $EF3438: [S&K] MH1 Life Monitor 1 [8-bit]
//          0x80 -> 0x81
// $EF347B: [S&K] LR1 Life Monitor 3 [8-bit]
// $EF34E4: [S&K] MH2 Life Monitor [8-bit]
// $EF350F: [S&K] MH1 Life Monitor 2 [8-bit]

mh1_life_1 = 0xef3438
mh1_life_2 = 0xef350f
mh2_life = 0xef34e4
fb1_life_1 = 0xef33ad
fb1_life_2 = 0xef3437
fb2_life = 0xef338f
sp2_life = 0xef3401
lr1_life_1 = 0xef339b
lr1_life_2 = 0xef33be
lr1_life_3 = 0xef347b
lr1_life_4 = 0xef33ed
ss_life_1 = 0xef339c
ss_life_2 = 0xef333e
de2_life_1 = 0xef33b6
de2_life_2 = 0xef340b

function get_life_monitor(param) => prev(byte(param)) == 0x80 && byte(param) == 0x81

// $EF47B0: [Sonic 3 & Knuckles] [8-bit]
//          Number of Chaos Emeralds
// $EF47B1: [Sonic the Hedgehog 2, 3] [8-bit]
//          Number of Chaos Emeralds
//          
//          [Sonic 3 & Knuckles]
//          Number of Super Emeralds
// $EF47B2: Sonic 3 & Knuckles: Green Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B3: Sonic 3 & Knuckles: Orange Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B4: Sonic 3 & Knuckles: Purple Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B5: Sonic 3 & Knuckles: Blue Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B6: Sonic 3 & Knuckles: White Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B7: Sonic 3 & Knuckles: Red Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03
// $EF47B8: Sonic 3 & Knuckles: Turquoise Chaos Emerald (8-bit)
//          not collected - 0x00
//          collected - 0x01
//          transformed to Super Chaos Emerald - 0x02
//          Super Chaos Emerald collected - 0x03

// ------------
// Achievements
// ------------

zone_clear_logic = {
    "mh": (zone() == mushroom_hill && act() == 1 && clear_act()),
    "fb": (zone() == flying_battery && act() == 1 && clear_act()),
    "sp": (zone() == sandopolis && act() == 1 && clear_act()),
    "lr": (zone() == lava_reef_boss && act() == 0 && clear_act()),
    "ss_sonic": (character_sonic() && zone() == sky_sanctuary && clear_act()),
    "ss_knuckles": (character_knuckles() && prev(zone()) == sky_sanctuary && zone() == credits),
    "de": (prev(zone()) == death_egg_boss && __ornext(zone() == credits || zone() == doomsday)),
    "beat_game": (__ornext(prev(zone()) == death_egg_boss || prev(zone()) == sky_sanctuary) && zone() == credits),
    "doomsday": (prev(zone()) == doomsday && zone() == credits)
}

function achievement_progress(title, description, points, zone_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = //once(in_genesis_game() &&
                    //    in_sk() &&
                    //    level_select_inactive() &&
                    //    zone() == mushroom_hill &&
                    //    start_game_from_title()) &&
                  in_game() &&
                  zone_clear_logic[zone_param] &&
                  disable_when(level_select_active()) &&
                  disable_when(smcp_load_save()) &&
                  (always_false() ||
                   never(title_screen()) &&
                   never(!in_genesis_game()))
    )
}

achievement_progress("Mushroom Hill", "Clear Mushroom Hill Zone Act 2. (No Level Select)", 5, "mh")
achievement_progress("Flying Battery", "Clear Flying Battery Zone Act 2. (No Level Select)", 5, "fb")
achievement_progress("Sandopolis", "Clear Sandopolis Zone Act 2. (No Level Select)", 5, "sp")
achievement_progress("Lava Reef", "Clear Lava Reef Zone Act 2. (No Level Select)", 5, "lr")
achievement_progress("Sky Sanctuary Sonic", "Clear Sky Sanctuary Zone as Sonic. (No Level Select)", 5, "ss_sonic")
achievement_progress("Sky Sanctuary Knuckles", "Clear Sky Sanctuary Zone as Knuckles. (No Level Select)", 5, "ss_knuckles")
achievement_progress("Death Egg", "Clear Death Egg Zone Act 2. (No Level Select)", 5, "de")
achievement_progress("Beat Game", "Beat the game as either character. (No Level Select)", 5, "beat_game")
achievement_progress("Doomsday", "Clear the Doomsday Zone. (No Level Select)", 5, "doomsday")

function slow_mode_protection() {
    return disable_when((x_button_input() || circle_button_input()) &&
                         controller_config_1() &&
                         smcp_not_paused() &&
                         level_select_active() &&
                         game_paused()) && 
           disable_when((circle_button_input() || square_button_input()) &&
                         controller_config_2() &&
                         smcp_not_paused() &&
                         level_select_active() &&
                         game_paused()) &&
           disable_when((L2_button_input() || x_button_input()) &&
                         controller_config_3() &&
                         smcp_not_paused() &&
                         level_select_active() &&
                         game_paused())
}

life_monitor_logic = {
    "mh1": (zone() == mushroom_hill && act() == 0 && tally(2, get_life_monitor(mh1_life_1), get_life_monitor(mh1_life_2)) && never(lose_life())),
    "mh2": (zone() == mushroom_hill && act() == 1 && get_life_monitor(mh2_life)),
    "fb1": (zone() == flying_battery && act() == 0 && tally(2, get_life_monitor(fb1_life_1), get_life_monitor(fb1_life_2)) && never(lose_life())),
    "fb2": (zone() == flying_battery && act() == 1 && get_life_monitor(fb2_life)),
    "sp2": (zone() == sandopolis && act() == 1 && get_life_monitor(sp2_life)),
    "lr1": (zone() == lava_reef && act() == 0 && tally(4, get_life_monitor(lr1_life_1), get_life_monitor(lr1_life_2), get_life_monitor(lr1_life_3), get_life_monitor(lr1_life_4)) && never(lose_life())),
    "ss": (zone() == sky_sanctuary && tally(2, get_life_monitor(ss_life_1), get_life_monitor(ss_life_2)) && never(lose_life())),
    "de2": (zone() == death_egg && act() == 1 && tally(2, get_life_monitor(de2_life_1), get_life_monitor(de2_life_2)) && never(lose_life())),
}

function achievement_life_monitors(title, description, points, zone_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = in_genesis_game() &&
                  in_sk() &&
                  in_game() &&
                  life_monitor_logic[zone_param] &&
                  slow_mode_protection() &&
                  disable_when(smcp_load_save()) &&
                  (always_false() || 
                   never(title_screen()) &&
                   never(!in_genesis_game()))
    )
}

achievement_life_monitors("Fungal Life I", "Get 2 Life Monitors in Mushroom Hill Zone Act 1 without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "mh1")
achievement_life_monitors("Fungal Life II", "Get 1 Life Monitor in Mushroom Hill Zone Act 2. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "mh2")
achievement_life_monitors("Spare Batteries I", "Get 2 Life Monitors in Flying Battery Zone Act 1 without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "fb1")
achievement_life_monitors("Spare Batteries II", "Get 1 Life Monitor in Flying Battery Zone Act 2. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "fb2")
//achievement_life_monitors("Secrets of the Pyramids Revealed I", "Get 1 Life Monitor in Sandopolis Zone Act 1. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "sp1")
achievement_life_monitors("Secrets of the Pyramids Revealed II", "Get 1 Life Monitor in Sandopolis Zone Act 2. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "sp2")
achievement_life_monitors("Life from the Ashes", "Get 4 Life Monitors in Lava Reef Zone Act 1 without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "lr1")
achievement_life_monitors("Sanctuary of Life", "Get 2 Life Monitors in Sky Sanctuary Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "ss")
achievement_life_monitors("Life or Death", "Get 2 Life Monitors in Death Egg Zone Act 2 without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, "de2")

// achievement(
//     title = "Mushroom Hill", points = 0,
//     description = "Clear Mushroom Hill Zone Act 2. (No Level Select)",
//     trigger = once(in_genesis_game() &&
//                    in_sk() &&
//                    level_select_inactive() &&
//                    zone() == mushroom_hill &&
//                    start_game_from_title()) &&
//               in_game() &&
//               zone() == mushroom_hill &&
//               act_2() &&
//               clear_act() &&
//               never(level_select_active()) &&
//               unless(once(smcp_load_save())) &&
//               (always_false() ||
//                never(title_screen()) &&
//                never(!in_genesis_game()))
// )

// achievement(
//     title = "Mushroom Hill Lives", points = 0,
//     description = "Gain 3 lives after breaking monitors in Mushroom Hill Zone. (Level Select allowed, but no Slow Mode/Frame Step)",
//     trigger = repeated(1, in_genesis_game() &&
//                        in_sk() &&
//                        in_game() &&
//                        zone() == mushroom_hill &&
//                        monitor_count_up() &&
//                        gain_life() &&
//                        no_ring_gain()) &&
//               unless(once((x_button_input() || circle_button_input()) &&
//                           controller_config_1() &&
//                           smcp_not_paused() &&
//                           level_select_active() &&
//                           game_paused())) && 
//               unless(once((circle_button_input() || square_button_input()) &&
//                           controller_config_2() &&
//                           smcp_not_paused() &&
//                           level_select_active() &&
//                           game_paused())) &&
//               unless(once((L2_button_input() || x_button_input()) &&
//                           controller_config_3() &&
//                           smcp_not_paused() &&
//                           level_select_active() &&
//                           game_paused())) && 
//               unless(once(smcp_load_save())) &&
//               (always_false() || 
//                never(title_screen()) &&
//                never(!in_genesis_game()))
// )

// life_count_dict = {
//     mushroom_hill: 5,
//     flying_battery: 5,
//     sandopolis: 4,
//     lava_reef: 6,
//     sky_sanctuary: 3,
//     death_egg: 4
// }

// function achievement_lives(title, description, points, zone_param) {
//     achievement(
//         title = title,
//         description = description,
//         points = points,
//         trigger = repeated(life_count_dict[zone_param], in_genesis_game() &&
//                            in_sk() &&
//                            in_game() &&
//                            zone() == zone_param &&
//                            gain_life()) &&
//                   never(lose_life()) &&
//                   never(zone() != zone_param) &&
//                   slow_mode_protection() &&
//                   disable_when(smcp_load_save()) &&
//                   (always_false() || 
//                    never(title_screen()) &&
//                    never(!in_genesis_game()))
//     )
// }

// achievement_lives("Fungal Life", "Gain 5 lives in Mushroom Hill Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, mushroom_hill)
// achievement_lives("Spare Batteries", "Gain 5 lives in Flying Battery Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, flying_battery)
// achievement_lives("Secrets of the Pyramids Revealed", "Gain 4 lives in Sandopolis Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, sandopolis)
// achievement_lives("Life from the Ashes", "Gain 6 lives in Lava Reef Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, lava_reef)
// achievement_lives("Sanctuary of Life", "Gain 3 lives in Sky Sanctuary Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, sky_sanctuary)
// achievement_lives("Life or Death", "Gain 4 lives in Death Egg Zone without dying. (Level Select Allowed, but No Slow Mode/Frame Step)", 5, death_egg)

// ------------
// Leaderboards
// ------------



// -------------
// Rich Presence
// -------------



// ------------
// Unused notes
// ------------

// $307EC4: Sonic 3 & Knuckles: Music ID (8-bit)
//          Angel Island Zone Act 1 - 0x65
//          Angel Island Zone Act 2 - 0x66
//          Hydrocity Zone Act 1 - 0x67
//          Hydrocity Zone Act 2 - 0x68
//          Marble Garden Zone Act 1 - 0x69
//          Marble Garden Zone Act 2 - 0x6a
//          Carnival Night Zone Act 1 - 0x6b
//          Carnival Night Zone Act 2 - 0x6c
//          Flying Battery Zone Act 1 - 0x6d
//          Flying Battery Zone Act 2 - 0x6e
//          Icecap Zone Act 1 - 0x6f
//          Icecap Zone Act 2 - 0x70
//          Launch Base Zone Act 1 - 0x71
//          Launch Base Zone Act 2 - 0x72
//          Mushroom Hill Zone Act 1 - 0x73
//          Mushroom Hill Zone Act 2 - 0x74
//          Sandopolis Zone Act 1 - 0x75
//          Sandopolis Zone Act 2 - 0x76
//          Lava Reef Zone Act 1 - 0x77
//          Lava Reef Zone Act 2 - 0x78
//          Sky Sanctuary Zone - 0x79
//          Deathegg Zone Act 1 - 0x7a
//          Deathegg Zone Act 2 - 0x7b
//          Sonic & Knuckles Boss - 0x7c
//          Major Boss Theme - 0x7d
//          Doomsday Zone - 0x7e
//          Bonus Stage - 0x7f
//          Blue Spheres - 0x80
//          Bonus Stage 2 - 0x81
//          Bonus Stage 3 - 0x82
//          Knuckles Theme - 0x83
//          Azure Lake - 0x84
//          Balloon Park - 0x85
//          Desert Palace - 0x86
//          Chrome Gadget - 0x87
//          Endless Mine - 0x88
//          Title Screen - 0x89
//          Credits - 0x8a
//          Game/Time Over- 0x8b
//          No Way! - 0x8c
//          Level Complete Sound - 0x8d
//          1UP Sound - 0x8e
//          Chaos Emerald Sound - 0x8f
//          Super Theme - 0x90
//          Competition Theme - 0x91
//          Minor Boss Theme - 0x92
//          Save/Level Select - 0x93
//          Final Boss Theme - 0x94
//          Underwater Timer - 0x95
//          Ending - 0x96
//          Credits - 0x97

// $45269E: Right Analogue Stick [16-bit]
// $4526A0: Left Analogue Stick [16-bit]

// $EEF82B: [Sonic the Hedgehog 2]
//          Current Flag
//          Bit0 = Shield
//          Bit1 = Invincibility
//          Bit2 = Speed Shoes
//          
//          [Sonic & Knuckles, 3]
//          Bit0 = Shield (combines with Bit4, Bit5, or Bit6)
//          Bit1 = Invincibility
//          Bit2 = Speed Shoes
//          Bit4 = Fire Shield effect
//          Bit5 = Lightning Shield effect
//          Bit6 = Water Shield effect
// $EEF82C: [Sonic the Hedgehog 3] [8-bit]
//          Player 1 Sonic's/Tails' Remaining Air

// $EEF82F: Sonic 3 & Knuckles: Main Character Special State (8-bit)
//          hasn't used Special - 0x00
//          Special active - 0x01
//          Special used - 0x02
// $EEF840: Sonic 3 & Knuckles: Main Character Jump State (8-bit)
//          no jump - 0x00
//          jumped - 0x01
// $EEF842: Sonic 3 & Knuckles: Pointer to the last object main character stood on (16-bit BE)
//          +0x00ee4801 |  Object Start (8-bit)
//          +0x00ee4810 | X coords (16-bit BE)
//          +0x00ee4814 | Y coords (16-bit BE)
//          +0x00ee4822 | Animation Number (8-bit)
//          +0x00ee4823 | Animation Frame (8-bit)
//          +0x00ee482a | Object Status (8-bit)
//          bit0 - X Orientation
//          bit1 - Y Orientatiom
//          bit2 - unused
//          bit3 - Sonic standing on object
//          bit4 - Tails standing on object
//          bit5 - pushed by Sonic
//          bit6 - pushed by Tails
//          bit7 - unused
//          +0x00ee4830 | Object Intensity (8-bit)
//          +0x00ee4832 | Object Subtype (8-bit)
// $EEF85A: Sonic 3 & Knuckles: Second Character X coords (16-bit BE)
// $EEF85E: Sonic 3 & Knuckles: Second Character Y coords (16-bit BE)

// $EEF876: [Sonic the Hedgehog 3] [8-bit]
//          Player 1 Tails' Remaining Air
// $EEF951: [Sonic & Knuckles] Boss health [8-bit]
//          Sonic's Sky Sanctuary boss 2: 0x08 to 0x00
//          Death Egg 1 miniboss (phase 1): 0x00 to 0x08 (inverted)
//          Death Egg 1 miniboss (phase 2): 0x00 to 0x08, again
// $EEF99B: [Sonic & Knuckles] Boss health [8-bit]
//          Death Egg 2 final boss (phase 2): 0x08 to 0x00
// $EEF9E5: [Sonic & Knuckles] Boss health [8-bit]
//          Lava Reef 2 boss: 0x0e to 0x00
//          Doomsday (phase 2): 0x07 to 0xff
// $EEFA2F: [Sonic & Knuckles] Boss health [8-bit]
//          Death Egg 2 boss (gravity): 0x08 to 0x00
//          Doomsday (phase 1): 0x07 to 0xff
// $EEFA79: [Sonic & Knuckles] Boss health [8-bit]
//          Mushroom Hill 1 miniboss: 0x06 to 0x00
//          Mushroom Hill 2 boss: 0x09 to 0x01
//          Flying Battery 1 miniboss: 0x06 to 0x00
//          Flying Battery 2 boss: 0x08 to 0x00
// $EEFAC3: [Sonic & Knuckles] Boss health [8-bit]
//          Sonic's Sky Sanctuary boss 3: 0x08 to 0x00
// $EEFCC9: [Sonic & Knuckles] Boss health [8-bit]
//          Lava Reef 1 miniboss (hand): 0x06 to 0x00
// $EEFE3B: [Sonic & Knuckles] Boss health [8-bit]
//          Sandopolis 2 boss: 0x08 to 0x00
// $EEFF63: [Sonic & Knuckles] Boss health [8-bit]
//          Sonic's Sky Sanctuary boss 1: 0x08 to 0x00
// $EF02DB: [Sonic & Knuckles] Boss health [8-bit]
//          Death Egg 2 final boss (phase 3): 0x08 to 0x00
// $EF0609: [Sonic & Knuckles] Boss health [8-bit]
//          Hidden Palace Knuckles: 0x08 to 0x00

// $EF2C31: [Sonic The Hedgehog 3] Blue Sphere Game Start
//          0x00 = Not Started
//          0x01 = Started
// $EF2C38: [Blue Sphere] [16-bits]
//          Blue Spheres Left
// $EF2C3A: [Sonic The Hedgehog 3] [16-bit BE] Blue Sphere Rings Collected
// $EF2C3E: [Blue Sphere] [16-bits]
//          Timer to Speed up
// $EF2C42: [Blue Sphere] [16-bits]
//          Rings Left
// $EF2C44: [Blue Sphere]
//          Current Speed
// $EF2C4C: [Blue Sphere]
//          Goes from 01 to 04 when beating the level

// $EF2E60: [Sonic 3&K] Which Save Slot? [32-bit pointer]
//          0x00000000: No Save
//          0xffffe6ac: Slot 1
//          0xffffe6b6: Slot 2
//          0xffffe6c0: Slot 3
//          0xffffe6ca: Slot 4
//          0xffffe6d4: Slot 5
//          0xffffe6de: Slot 6
//          0xffffe6e8: Slot 7
//          0xffffe6f2: Slot 8
// $EF2EAC: [S3&K] All Save Slot Data [84 bytes]
// $EF2F00: [S3&K] Ring Status Table [1024 bytes]
//          Any ring that hasn't been collected yet starts as 0x0000. Picking it up eventually turns it to 0xffff.
// $EF3300: [S3&K] Object Respawn Table [768 bytes]
//          There is room for one object per byte, but not all slots are used in each act.

// $EF3678: Sonic 3 & Knuckles: Camera X coords (16-bit BE)
// $EF367C: Sonic 3 & Knuckles: Camera Y coords (16-bit BE)
// $EF3680: [Sonic the Hedgehog 3] [16-bit]
//          Camera X Position
// $EF3684: [Sonic the Hedgehog 3] [16-bit]
//          Camera Y Position
// $EF36B4: Sonic 3 & Knuckles: Background X coords (32-bit BE)
// $EF3748: [Sonic The Hedgehog 3] [8-bit] Competitive Game Mode Selected
//          0x00 = Grandprix
//          0x01 = Match Race
//          0x02 = Time Attack
//          0x03 = Exit
// $EF374B: [Sonic The Hedgehog 3] [8-bit] Save Selection
//          0x00 = No Save
//          0x01 - 0x06 = Save Files
//          0x07 = Delete Save
// $EF374E: [Sonic The Hedgehog 3] [8-bit] Completitive Icon Enabled / Disabled
//          0x00 = Enabled
//          0xff = Disabled

// $EF4610: Current Stage [8-bit]
//          Sonic the Hedgehog (Genesis)
//          0x00 = Green Hill Zone
//          0x01 = Labyrinth Zone/Scrap Brain Zone act 3
//          0x02 = Marble Zone
//          0x03 = Star Light Zone
//          0x04 = Spring Yard Zone
//          0x05 = Scrap Brain Zone/Final Zone
//          0x06 = Ending
//          
//          Sonic the Hedgehog 2
//          0x00 = Emerald Hill Zone
//          0x04 = Metropolis Zone
//          0x05 = Metropolis Zone Act 3
//          0x06 = Wing Fortress Zone
//          0x07 = Hill Top Zone
//          0x0A = Oil Ocean Zone
//          0x0B = Mystic Cave Zone
//          0x0C = Casino Night Zone
//          0x0D = Chemical Plant Zone
//          0x0E = Death Egg Zone
//          0x0F = Aquatic Ruin Zone
//          0x10 = Sky Chase Zone
//          
//          Sonic The Hedgehog 3
//          0x00 = Angel Island
//          0x01 = Hydrocity
//          0x02 = Marble Garden
//          0x03 = Carnival Night
//          0x04 = Flying Battery
//          0x05 = Icecap
//          0x06 = Launch Base
//          0x07 = Mushroom Valley
//          0x08 = Sandopolis
//          0x13 = Bonus Stage Gumball
//          
//          Sonic 3 & Knuckles:
//          Angel Island Zone - 0x00
//          Hydrocity Zone - 0x01
//          Marble Garden Zone - 0x02
//          Carnival Night Zone - 0x03
//          Flying Battery Zone - 0x04
//          Icecap Zone - 0x05
//          Launch Base Zone - 0x06
//          Mushroom Hill Zone - 0x07
//          Sandopolis Zone - 0x08
//          Lava Reef Zone - 0x09
//          Lava Reef Zone Act 2 Boss Room & Hidden Palace Zone - 0x16
//          Sky Sanctuary Zone - 0x0a
//          Death Egg Zone - 0x0b
//          The Doomsday Zone (Super Sonic) - 0x0c
//          The Doomsday Zone (Death Egg Robot) & Hidden Palace (Emeralds) - 0x17
//          Credits - 0x0d
//          Bonus Stage (Gumball Machine) - 0x13
//          Bonus Stage - 0x14
//          Bonus Stage (Slot Machine) - 0x15
//          Azure Lake - 0x0e
//          Balloon Park - 0x0f
//          Chrome Gadget - 0x11
//          Desert Palace - 0x10
//          Endless Mine - 0x12
// $EF4611: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Current Act

// $EF4616: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Current Special Stage

// $EF4623: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Game Time: Game Time: Mins [Hex]
//          
//          Also true for Knuckles in Sonic 2
// $EF4624: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Game Time: Secs [Hex]
//          
//          Also true for Knuckles in Sonic 2
// $EF4625: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          Game Time: Milisecs [Hex]
//          
//          Also true for Knuckles in Sonic 2
// $EF4628: [Sonic the Hedgehog (Genesis), 2, 3] [16-bit BE]
//          Current Score x10
//          
//          Also true for Knuckles in Sonic 2
// $EF462C: [Sonic the Hedgehog (Genesis)] [8-bit]
//          Shield Flag
//          
//          Sonic 3 & Knuckles: backend loaded Level ID (8-bit)
// $EF462D: [Sonic the Hedgehog (Genesis)] [8-bit]
//          Invinsibility Flag
//          
//          Sonic 3 & Knuckles: backend loaded Act ID (8-bit)

// $EF4704: Sonic 3 & Knuckles: Rings left in the Stage (16-bit BE)

// $EF4783: [Sonic The Hedgehog 3] [8-bit] Sound Test Option
// $EF4785: [Sonic The Hedgehog 3] [8-bit] Sound Test Song
// $EF4786: [Sonic The Hedgehog 3] [8-bit] Game Mode
//          0x00 = Player 1
//          0x01 = Competitive
//          0x02 = Sound Test
// $EF479A: Sonic 3 & Knuckles: actual Level ID (8-bit)
//          Angel Island Zone - 0x00
//          Hydrocity Zone - 0x01
//          Marble Garden Zone - 0x02
//          Carnival Night Zone - 0x03
//          Flying Battery Zone - 0x04
//          Icecap Zone - 0x05
//          Launch Base Zone - 0x06
//          Mushroom Hill Zone - 0x07
//          Sandopolis Zone - 0x08
//          Lava Reef Zone - 0x09
//          Lava Reef Zone Act 2 Boss Room & Hidden Palace Zone - 0x16
//          Sky Sanctuary Zone - 0x0a
//          Death Egg Zone - 0x0b
//          The Doomsday Zone (Super Sonic) - 0x0c
//          The Doomsday Zone (Death Egg Robot) & Hidden Palace (Emeralds) - 0x17
//          Credits - 0x0d
// $EF47A6: [Blue Sphere] [32-bits]
//          Current Stages
// $EF47A7: [Blue Sphere] [24-bits]
//          Current Stages
// $EF47A8: [Blue Sphere] [16-bits]
//          Current Stages
// $EF47A9: [Blue Sphere] [8-bits]
//          Current Stages
// $EF47AA: [Blue Sphere]
//          Current Cursor Location
//          0x00 = Level
//          0x01 = Start
//          0x02 = Code
// $EF47AC: [Blue Sphere]
//          Difficulty in results screen
// $EF47AD: [Blue Sphere]
//          Current Max Difficulty in results screen

// $EF47BB: Sonic 3 & Knuckles: current Special Stage (8-bit)
//          Sonic 3 - 0x00
//          Sonic & Knuckles - 0x01
// $EF47D0: [Sonic the Hedgehog 2, 3] [8-bit] Stage Select
//          0x00 = Disabled
//          0x01 = Enabled
// $EF47D1: [Sonic the Hedgehog 2, 3] [8-bit]Slow / Single Frame Step Mode
//          0x00 = Disabled
//          0x01 = Enabled
// $EF47D2: [Sonic the Hedgehog 2, 3] [8-bit] Debug Mode
//          0x00 = Disabled
//          0x01 = Enabled

// $EF47E2: Sonic 3 & Knuckles: Debug Mode (8-bit)
//          active - 0x01
// $EF47F1: [Sonic the Hedgehog (Genesis), 2, 3] [8-bit]
//          0x00 = Not Demo
//          0x01 = Demo

// $1EC6820: [Any Genesis Game] PS2 Pause Menu Option [8-bit] (See options at 0x1ec69e0)
// $1EC6828: [Any Genesis Game] PS2 Pause Menu Option [8-bit] (See options at 0x1ec69e0)