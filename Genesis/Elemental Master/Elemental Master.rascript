// Elemental Master
// #ID = 4247
// MD5: 9b04970a603ace521c7cca2acaf69804 - Elemental Master (USA).md
// MD5: 32e1a15161ef1f070b023738353bde51 - Elemental Master (Japan).md

// ------------------------------------
// Code notes, variables, and functions
// ------------------------------------

// $2F1C: 00=demo

function demo() => byte(0x2f1c) == 0

// $FFFE: 0x44=Opening Introduction at start of game.
//        0x70=Stage
//        0xf8=Ending
//        0x6c = Stage Select
//        0xa0 = Game Over
//        0x24 = Sega logo/Title Screen
//        0x52 = Options
//        0x00 or 0xff or 0x01 sometimes when transitioning

function beat_game() => prev(byte(0xfffe)) == 0 && byte(0xfffe) == 0xf8
function game_over_trans() => prev(byte(0xfffe)) == 0xff && byte(0xfffe) == 0xa0

// $F3A2: Difficulty
//        0x00 = Normal
//        0x01 = Difficult
//        0x02 = Expert
//        0x03 = Practice

function difficulty() => byte(0xf3a2)
function difficulty_normal_or_higher() => difficulty() <= 2
function difficult_mode() => difficulty() == 1
function expert_mode() => difficulty() == 2
function practice_mode() => difficulty() == 3

LevelLookup = {
    0x0: "Normal",
    0x1: "Difficult",
    0x2: "Expert",
    0x3: "Practice",
}

// $F2E2: Stage

function stage() => byte(0xf2e2)

StageLookup = {
    0x0: "1 (Flame)",
    0x1: "2 (Wind)",
    0x2: "3 (Earth)",
    0x3: "4 (Water)",
    0x4: "5 (Ice)",
    0x5: "6 (Aether)",
    0x6: "7 (Darkness)",
}

// $F13B: Position on stage 3c= Boss

function stage_end() => byte(0xf13b) == 0x3c
function reach_stage_end() => prev(byte(0xf13b)) == 0x3b && byte(0xf13b) == 0x3c

// $F2E4: Stage completion bitmask
//        Bit0 = Stage 1 (Fire)
//        Bit1 = Stage 2 (Wind)
//        Bit2 = Stage 3 (Earth)
//        Bit3 = Stage 4 (Water)
//        Bit4 = Stage 5
//        Bit5 = Stage 6

function clear_first_stage() => prev(byte(0xf2e4)) == 0 && byte(0xf2e4) > 0
function clear_stage_6() => prev(bit5(0xf2e4)) == 0 && bit5(0xf2e4) == 1
function stage_6_cleared() => bit5(0xf2e4) == 1

// $F2FE: Owned weapons / Stages cleared bitmask
//        Bit1 = Fire
//        Bit2 = Wind
//        Bit3 = Earth
//        Bit4 = Water
//        Bit5 = Powered-up Light
//        Bit6 = Clear Stage 6 (no weapon given)

function owned_fire() => bit1(0xf2fe)
function owned_wind() => bit2(0xf2fe)
function owned_earth() => bit3(0xf2fe)
function owned_water() => bit4(0xf2fe)
function owned_light_power_up() => bit5(0xf2fe)

function get_fire() => prev(owned_fire()) == 0 && owned_fire() == 1
function get_wind() => prev(owned_wind()) == 0 && owned_wind() == 1
function get_earth() => prev(owned_earth()) == 0 && owned_earth() == 1
function get_water() => prev(owned_water()) == 0 && owned_water() == 1
function get_light_power_up() => prev(owned_light_power_up()) == 0 && owned_light_power_up() == 1

// $F2FC: Weapon chosen

PowerLookup = {
    0x0: "Light",
    0x1: "Flame",
    0x2: "Wind",
    0x3: "Earth",
    0x4: "Water",
}

// $F2E6: Score * 65536 + 0xf2e6 * 1
// $F2E8: Score * 1 + 0xf2e6 * 65536

function calc_score() {
    score = (word(0xf2e6) * 65536) + word(0xf2e8)
    return score
}

// $F2F8: Health

function lost_all_health() => prior(byte(0xf2f8)) == 0 && byte(0xf2f8) == 0xff

// $F2FA: Max health
//        0x07 is max

function get_max_health() => prev(byte(0xf2fa)) == 6 && byte(0xf2fa) == 7

// $A002: Mirror upgrade
//        0x00 -> 0x02
//        Lost after taking damage (without shield)

function get_magic_mirror() => prev(byte(0xa002)) == 0 && byte(0xa002) == 2

// $A004: Shield - not always clean
//        0x00 -> 0x03
//        Ticks down with each hit taken

function get_crystal_ball() => prev(byte(0xa004)) == 0 && byte(0xa004) == 3

// $F388: 02=boss killed

function defeat_boss() => prev(byte(0xf388)) == 1 && byte(0xf388) == 2

// $A010: Time position on stage - don't stop at the boss
// $F104: 00=game activated
// $F1B7: 0x00 = In Game (or briefly after reset)
//        0xff = Stage Select/Cutscenes/Otherwise not in a level.
// $F2F6: Remained credits
// $F300: Power gauge
// $F30E: When in-stage:
//        0x00 = Forward shot
//        0x01 = Back shot
//        
//        Is 0x01 while on Stage Select However
// $F314: Command input 10=front 20=change 40=back
//        Bits0-3=D-Pad
//        Bit 4 = Forward Attack
//        Bit 5 = Change
//        Bit 6 = Back Attack

// ------------
// Achievements
// ------------

achievement(
    id = 25347,
    title = "A Fairy Companion", 
    description = "Rescue Neena and gain her assistance (Normal or Higher)",
    points = 1,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              clear_first_stage()
)

achievement(
    id = 25343,
    title = "Flame",
    description = "Obtain Flame power (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_fire()
)

achievement(
    id = 25344,
    title = "Wind",
    description = "Obtain Wind power (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_wind()
)

achievement(
    id = 25345,
    title = "Earth",
    description = "Obtain Earth power (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_earth()
)

achievement(
    id = 25346,
    title = "Water",
    description = "Obtain Water power (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_water()
)

achievement(
    id = 25351,
    title = "Elemental Master",
    description = "Gather all 4 elements and enchance the Light power (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_light_power_up()
)

achievement(
    title = "Salome Slain",
    description = "Defeat Salome in Stage 6 (Normal or Higher)",
    points = 5,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              clear_stage_6()
)

achievement(
    title = "Fall of Gyra",
    description = "Finish the game on Normal level or higher",
    points = 10,
    trigger = difficulty_normal_or_higher() &&
              stage_6_cleared() &&
              beat_game()
)

achievement(
    id = 25357,
    title = "Liberator of Lorelei",
    description = "Finish the game on Difficult level",
    points = 25,
    trigger = difficult_mode() &&
              stage_6_cleared() &&
              beat_game()
)

achievement(
    id = 25358,
    title = "Elemental Genius",
    description = "Finish the game on Expert level",
    points = 50,
    trigger = expert_mode() &&
              stage_6_cleared() &&
              beat_game()
)

achievement(
    id = 25348,
    title = "Magic Mirror",
    description = "Obtain Magic Mirror (Normal or Higher)",
    points = 3,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_magic_mirror()
)

achievement(
    id = 25349,
    title = "Crystal Ball",
    description = "Obtain Crystal Ball (Normal or Higher)",
    points = 3,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_crystal_ball()
)

achievement(
    id = 25350,
    title = "Seven Chakras",
    description = "Upgrade your health to the maximum (Normal or Higher)",
    points = 3,
    trigger = !demo() &&
              difficulty_normal_or_higher() &&
              get_max_health()
)

achievement(
    title = "Dance of Flame", points = 5,
    description = "Destroy at least 90 foes and objects on Stage 1 (Normal or Higher)",
    id = 25336, badge = "25771", published = "2015-07-16 10:58:34 PM", modified = "2021-10-07 8:35:21 PM",
    trigger = never(byte(0x00F2E2) != 0) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(90, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Like the Wind", points = 5,
    description = "Destroy at least 130 foes and objects on Stage 2 (Normal or Higher)",
    id = 25337, badge = "25772", published = "2015-07-16 10:58:38 PM", modified = "2021-10-07 8:35:22 PM",
    trigger = never(byte(0x00F2E2) != 1) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(130, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Until the End of the Earth", points = 5,
    description = "Destroy at least 130 foes and objects on Stage 3 (Normal or Higher)",
    id = 25338, badge = "25773", published = "2015-07-16 10:58:41 PM", modified = "2021-10-07 8:35:22 PM",
    trigger = never(byte(0x00F2E2) != 2) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(130, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Blood-Stained Lake", points = 5,
    description = "Destroy at least 130 foes and objects on Stage 4 (Normal or Higher)",
    id = 25339, badge = "25774", published = "2015-07-16 10:58:44 PM", modified = "2021-10-07 8:35:22 PM",
    trigger = never(byte(0x00F2E2) != 3) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(130, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Terror of the Glacier", points = 10,
    description = "Destroy at least 130 foes and objects on Stage 5 (Normal or Higher)",
    id = 25340, badge = "25775", published = "2015-07-16 10:58:48 PM", modified = "2021-10-07 8:35:23 PM",
    trigger = never(byte(0x00F2E2) != 4) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(130, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Den of Evil", points = 10,
    description = "Destroy at least 100 foes and objects on Stage 6 (Normal or Higher)",
    id = 25341, badge = "25776", published = "2015-07-16 10:58:52 PM", modified = "2021-10-07 8:35:23 PM",
    trigger = never(byte(0x00F2E2) != 5) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(100, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Shudder of Darkness", points = 25,
    description = "Destroy at least 110 foes and objects on Stage 7 (Normal or Higher)",
    id = 25342, badge = "25777", published = "2015-07-16 10:58:57 PM", modified = "2021-10-07 8:35:23 PM",
    trigger = never(byte(0x00F2E2) != 6) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && 
              measured(repeated(110, prev(word(0x00F2E8)) != word(0x00F2E8)))
)

achievement(
    title = "Crest of the Salamander", points = 10,
    description = "Reach the end of Stage 4, while using only the power of flame (Normal or Higher)",
    id = 25352, badge = "27926", published = "2015-07-16 10:59:57 PM", modified = "2021-12-09 5:05:33 PM",
    trigger = trigger_when(once(byte(0x00F13B) == 60)) && once(byte(0x00F13B) == 1) && never(byte(0x00F2FC) != 1) && 
              never(byte(0x00F2E2) != 3) && never(byte(0x00F3A2) == 3)
)

achievement(
    title = "Crest of the Eagle", points = 10,
    description = "Reach the end of Stage 3, while using only the power of wind (Normal or Higher)",
    id = 25353, badge = "27927", published = "2015-07-16 11:00:01 PM", modified = "2021-12-09 5:05:32 PM",
    trigger = trigger_when(once(byte(0x00F13B) == 60)) && once(byte(0x00F13B) == 1) && never(byte(0x00F2FC) != 2) && 
              never(byte(0x00F2E2) != 2) && never(byte(0x00F3A2) == 3)
)

achievement(
    title = "Crest of the Golem", points = 10,
    description = "Reach the end of Stage 2, while using only the power of earth (Normal or Higher)",
    id = 25354, badge = "27928", published = "2015-07-16 11:00:05 PM", modified = "2021-12-09 5:05:32 PM",
    trigger = trigger_when(once(byte(0x00F13B) == 60)) && once(byte(0x00F13B) == 1) && never(byte(0x00F2FC) != 3) && 
              never(byte(0x00F2E2) != 1) && never(byte(0x00F3A2) == 3)
)

achievement(
    title = "Crest of the Dolphins", points = 10,
    description = "Reach the end of Stage 1, using only the power of water (Normal or Higher)",
    id = 25355, badge = "27929", published = "2015-07-16 11:00:09 PM", modified = "2021-12-09 5:05:32 PM",
    trigger = trigger_when(once(byte(0x00F13B) == 60)) && once(byte(0x00F13B) == 1) && never(byte(0x00F2FC) != 4) && 
              never(byte(0x00F2E2) != 0) && never(byte(0x00F3A2) == 3)
)

achievement(
    title = "Crest of the Unicorn", points = 10,
    description = "Reach the end of Stage 5, while using only the power of light (Normal or Higher)",
    id = 25356, badge = "27930", published = "2015-07-16 11:00:12 PM", modified = "2021-12-09 5:05:34 PM",
    trigger = trigger_when(once(prev(byte(0x00F13B)) != 0 && byte(0x00F13B) == 60)) && once(byte(0x00F13B) == 1) && 
              never(byte(0x00F2FC) != 0) && never(prev(byte(0x00F2E2)) != 4) && never(byte(0x00F3A2) == 3)
)

achievement(
    title = "Lux Dominum", points = 5,
    description = "Destroy at least 250 foes and objects using only the power of light (Normal or Higher)",
    id = 27414, badge = "25787", published = "2015-08-11 4:26:45 PM", modified = "2021-10-07 8:35:24 PM",
    trigger = measured(repeated(250, prev(word(0x00F2E8)) != word(0x00F2E8))) && unless(byte(0x00F2FC) != 0) && 
              never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Ignis Dominum", points = 5,
    description = "Destroy at least 250 foes and objects using only the power of flame (Normal or Higher)",
    id = 27415, badge = "25783", published = "2015-08-11 4:26:51 PM", modified = "2021-10-07 8:35:25 PM",
    trigger = measured(repeated(250, prev(word(0x00F2E8)) != word(0x00F2E8))) && unless(byte(0x00F2FC) != 1) && 
              never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Aer Dominum", points = 5,
    description = "Destroy at least 250 foes and objects using only the power of wind (Normal or Higher)",
    id = 27416, badge = "25784", published = "2015-08-11 4:26:54 PM", modified = "2021-10-07 8:35:25 PM",
    trigger = measured(repeated(250, prev(word(0x00F2E8)) != word(0x00F2E8))) && unless(byte(0x00F2FC) != 2) && 
              never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Terrae Dominum", points = 5,
    description = "Destroy at least 250 foes and objects using only the power of earth (Normal or Higher)",
    id = 27417, badge = "25785", published = "2015-08-11 4:26:57 PM", modified = "2021-10-07 8:35:25 PM",
    trigger = measured(repeated(250, prev(word(0x00F2E8)) != word(0x00F2E8))) && unless(byte(0x00F2FC) != 3) && 
              never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Aqua Dominum", points = 5,
    description = "Destroy at least 250 foes and objects using only the power of water (Normal or Higher)",
    id = 27418, badge = "25786", published = "2015-08-11 4:27:00 PM", modified = "2021-10-07 8:35:26 PM",
    trigger = measured(repeated(250, prev(word(0x00F2E8)) != word(0x00F2E8))) && unless(byte(0x00F2FC) != 4) && 
              never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Solid Score", points = 5,
    description = "Score more than 68000 points (Normal or Higher)",
    id = 25359, badge = "25801", published = "2015-07-16 11:00:39 PM", modified = "2022-12-11 2:02:33 PM",
    trigger = byte(0x00F3A2) != 3 && measured((word(0x00F2E6) * 65536 + word(0x00F2E8) * 1 + 0) >= 68000) && 
              (prev(word(0x00F2E6)) * 65536 + prev(word(0x00F2E8)) * 1 + 0) < 68000 && (prev(word(0x00F2E6)) * 65536 +
               prev(word(0x00F2E8)) * 1 + 0) >= 10000
)

achievement(
    title = "True Score", points = 5,
    description = "Score more than 100000 points (Normal or Higher)",
    id = 25360, badge = "25802", published = "2015-07-16 11:00:42 PM", modified = "2022-12-11 2:02:33 PM",
    trigger = byte(0x00F3A2) != 3 && measured((word(0x00F2E6) * 65536 + word(0x00F2E8) * 1 + 0) >= 100000) && 
              (prev(word(0x00F2E6)) * 65536 + prev(word(0x00F2E8)) * 1 + 0) < 100000 && (prev(word(0x00F2E6)) * 65536 +
               prev(word(0x00F2E8)) * 1 + 0) >= 80000
)

achievement(
    title = "Miracle Score", points = 10,
    description = "Score more than 250000 points (Normal or Higher)",
    id = 25361, badge = "25803", published = "2015-07-16 11:00:46 PM", modified = "2022-12-11 2:02:33 PM",
    trigger = byte(0x00F3A2) != 3 && measured((word(0x00F2E6) * 65536 + word(0x00F2E8) * 1 + 0) >= 250000) && 
              (prev(word(0x00F2E6)) * 65536 + prev(word(0x00F2E8)) * 1 + 0) < 250000 && (prev(word(0x00F2E6)) * 65536 +
               prev(word(0x00F2E8)) * 1 + 0) >= 200000
)

achievement(
    title = "Unreal Score", points = 25,
    description = "Score more than 400000 points (Normal or Higher)",
    id = 25362, badge = "25804", published = "2015-07-16 11:00:49 PM", modified = "2022-12-11 2:02:34 PM",
    trigger = byte(0x00F3A2) != 3 && measured((word(0x00F2E6) * 65536 + word(0x00F2E8) * 1 + 0) >= 400000) && 
              (prev(word(0x00F2E6)) * 65536 + prev(word(0x00F2E8)) * 1 + 0) < 400000 && (prev(word(0x00F2E6)) * 65536 +
               prev(word(0x00F2E8)) * 1 + 0) >= 350000
)

achievement(
    title = "Seal of the Sun", points = 25,
    description = "Reach Stage 6, without using charged attack (Normal or Higher)",
    id = 25363, badge = "25800", published = "2015-07-16 11:01:04 PM", modified = "2022-12-11 1:52:06 PM",
    trigger = byte(0x00F3A2) <= 2 && never(byte(0x00F3A2) == 3) && never(byte(0x00F300) > 143) && 
              trigger_when(once(byte(0x00F2E4) == 3)) && trigger_when(once(byte(0x00F2E4) == 7)) && 
              trigger_when(once(byte(0x00F2E4) == 15)) && trigger_when(once(byte(0x00F2E4) == 31)) && 
              once(byte(0x00FFFE) == 68) && trigger_when(once(byte(0x00F2E4) == 1))
)

achievement(
    title = "Seal of the Moon", points = 25,
    description = "Reach Stage 6, using only rear attack (front is allowed on boss fights) (Normal or Higher)",
    id = 25364, badge = "25799", published = "2015-07-16 11:01:07 PM", modified = "2022-12-10 3:55:36 AM",
    trigger = byte(0x00F3A2) <= 2 && once(byte(0x00FFFE) == 68) && never((byte(0x00F13B) != 60 && byte(0x00F1B7) == 0 &&
               bit4(0x00F314) == 1)) && trigger_when(once(once(prev(byte(0x00F2E4)) == 15) && byte(0x00F2E4) == 31))
)

achievement(
    title = "Magus Indoles (Normal)", points = 25,
    description = "Finish all stages in ascending order, without using continues",
    id = 25365, badge = "25794", published = "2015-07-16 11:01:14 PM", modified = "2021-12-09 5:05:36 PM",
    trigger = once(byte(0x00F2E4) == 0) && trigger_when(once(byte(0x00FFFE) == 248)) && never(once(byte(0x00F3A2) != 0)) && 
              never(byte(0x00F2F6) < prev(byte(0x00F2F6))) && once(byte(0x00FFFE) == 68) && 
              trigger_when(once(byte(0x00F2E4) == 3)) && trigger_when(once(byte(0x00F2E4) == 7)) && 
              trigger_when(once(byte(0x00F2E4) == 15)) && trigger_when(once(byte(0x00F2E4) == 31)) && 
              trigger_when(once(byte(0x00F2E4) == 63))
)

achievement(
    title = "Magus Indoles (Difficult)", points = 25,
    description = "Finish all stages in ascending order, without using continues",
    id = 25366, badge = "25795", published = "2015-07-16 11:01:17 PM", modified = "2021-12-09 5:05:35 PM",
    trigger = once(byte(0x00F2E4) == 0) && trigger_when(once(byte(0x00FFFE) == 248)) && never(once(byte(0x00F3A2) != 1)) && 
              never(byte(0x00F2F6) < prev(byte(0x00F2F6))) && once(byte(0x00FFFE) == 68) && 
              trigger_when(once(byte(0x00F2E4) == 3)) && trigger_when(once(byte(0x00F2E4) == 7)) && 
              trigger_when(once(byte(0x00F2E4) == 15)) && trigger_when(once(byte(0x00F2E4) == 31)) && 
              trigger_when(once(byte(0x00F2E4) == 63))
)

achievement(
    title = "Magus Indoles (Expert)", points = 50,
    description = "Finish all stages in ascending order, without using continues",
    id = 25367, badge = "25796", published = "2015-07-16 11:01:20 PM", modified = "2021-12-09 5:05:35 PM",
    trigger = once(byte(0x00F2E4) == 0) && trigger_when(once(byte(0x00FFFE) == 248)) && never(once(byte(0x00F3A2) != 2)) && 
              never(byte(0x00F2F6) < prev(byte(0x00F2F6))) && once(byte(0x00FFFE) == 68) && 
              trigger_when(once(byte(0x00F2E4) == 3)) && trigger_when(once(byte(0x00F2E4) == 7)) && 
              trigger_when(once(byte(0x00F2E4) == 15)) && trigger_when(once(byte(0x00F2E4) == 31)) && 
              trigger_when(once(byte(0x00F2E4) == 63))
)

achievement(
    title = "Avatar of Flame", points = 10,
    description = "Defeat Flame Demon without being hit (Normal or Higher)",
    id = 25368, badge = "25805", published = "2015-07-16 11:01:31 PM", modified = "2021-12-09 5:05:31 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 0) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Roar of the Monster", points = 10,
    description = "Defeat Thunder Dragon without being hit (Normal or Higher)",
    id = 25369, badge = "25806", published = "2015-07-16 11:01:35 PM", modified = "2021-12-09 5:05:36 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 1) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Evil Beat", points = 10,
    description = "Defeat Earth Porcupine without being hit (Normal or Higher)",
    id = 25370, badge = "25807", published = "2015-07-16 11:01:40 PM", modified = "2021-12-09 5:05:34 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 2) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Specter Living in the Water", points = 10,
    description = "Defeat Water Serpent without being hit (Normal or Higher)",
    id = 25371, badge = "25808", published = "2015-07-16 11:01:44 PM", modified = "2021-12-09 5:05:38 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 3) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Calling on the Dark Dragon King", points = 10,
    description = "Defeat Clauss without being hit (Normal or Higher)",
    id = 25372, badge = "25809", published = "2015-07-16 11:01:48 PM", modified = "2021-12-09 5:05:31 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 4) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Suspicious Beauty", points = 10,
    description = "Defeat Salome without being hit (Normal or Higher)",
    id = 25373, badge = "25810", published = "2015-07-16 11:01:54 PM", modified = "2021-12-09 5:05:39 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 5) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && 
              trigger_when(once(byte(0x00F388) == 2))
)

achievement(
    title = "Fate", points = 10,
    description = "Defeat King Gyra without being hit (Normal or Higher)",
    id = 25374, badge = "25811", published = "2015-07-16 11:01:59 PM", modified = "2021-12-09 5:05:34 PM",
    trigger = never(byte(0x00F3A2) == 3) && never(byte(0x00F2E2) != 6) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && 
              never(byte(0x00A004) < prev(byte(0x00A004))) && once(byte(0x00F13B) == 59) && trigger_when((byte(0x00F13B)
               == 60 && prev(byte(0x00F388)) == 2 && byte(0x00F388) == 3))
)

// -------
// Demoted
// -------

achievement(
    title = "Divine Herald of Godai", points = 50,
    description = "Finish all stages in ascending order, without being harmed",
    id = 25375, badge = "25793", published = "2015-07-16 11:02:02 PM", modified = "2016-08-13 1:32:42 PM",
    trigger = once(byte(0x00F2E4) == 0) && once(byte(0x00FFFE) == 248) && never(byte(0x00F3A2) == 3) && 
              once(byte(0x00F3A2) == 0) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && once(byte(0x00FFFE) == 68) && 
              once(byte(0x00F2E4) == 3) && once(byte(0x00F2E4) == 7) && once(byte(0x00F2E4) == 15) && 
              once(byte(0x00F2E4) == 31) && once(byte(0x00F2E4) == 63)
)

achievement(
    title = "Divine Herald of Godai (Hard)", points = 30,
    description = "Finish all stages in ascending order, without being harmed",
    id = 25376, badge = "25797", published = "2015-07-16 11:02:06 PM", modified = "2016-08-13 1:31:24 PM",
    trigger = once(byte(0x00F2E4) == 0) && once(byte(0x00FFFE) == 248) && never(byte(0x00F3A2) == 3) && 
              never(once(byte(0x00F3A2) < 1)) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && once(byte(0x00FFFE) ==
               68) && once(byte(0x00F2E4) == 3) && once(byte(0x00F2E4) == 7) && once(byte(0x00F2E4) == 15) && 
              once(byte(0x00F2E4) == 31) && once(byte(0x00F2E4) == 63)
)

achievement(
    title = "Divine Herald of Godai (Expert)", points = 40,
    description = "Finish all stages in ascending order, without being harmed",
    id = 25377, badge = "25798", published = "2015-07-16 11:02:10 PM", modified = "2015-08-11 3:17:50 PM",
    trigger = once(byte(0x00F2E4) == 0) && once(byte(0x00FFFE) == 248) && never(byte(0x00F3A2) == 3) && 
              never(once(byte(0x00F3A2) != 2)) && never(byte(0x00F2F8) < prev(byte(0x00F2F8))) && once(byte(0x00FFFE) ==
               68) && once(byte(0x00F2E4) == 3) && once(byte(0x00F2E4) == 7) && once(byte(0x00F2E4) == 15) && 
              once(byte(0x00F2E4) == 31) && once(byte(0x00F2E4) == 63)
)

// ------------
// Leaderboards
// ------------

function leaderboard_score(difficulty_param) {
    leaderboard(
        title = format("High Score: {0}", LevelLookup[difficulty_param]),
        description = "Submits after dying or after beating the game",
        start = !demo() &&
                difficulty() == difficulty_param &&
                calc_score() > 0 &&
                ((lost_all_health() && game_over_trans()) ||
                (stage_6_cleared() && beat_game())),
        cancel = always_false(),
        submit = always_true(),
        value = measured(calc_score()),
        format = "VALUE"
    )
}

leaderboard_score(2)
leaderboard_score(1)
leaderboard_score(0)

function leaderboard_practice(stage_param) {
    leaderboard(
        title = format("High Score: Practice Stage {0}", stage_param + 1),
        description = "Submits after dying or after beating the stage",
        start = !demo() &&
                practice_mode() &&
                stage() == stage_param &&
                calc_score() > 0 &&
                ((lost_all_health() && game_over_trans()) ||
                (stage_end() && defeat_boss())),
        cancel = always_false(),
        submit = always_true(),
        value = measured(calc_score()),
        format = "VALUE"
    )
}

leaderboard_practice(0)
leaderboard_practice(1)
leaderboard_practice(2)
leaderboard_practice(3)

// -------------
// Rich Presence
// -------------

rich_presence_display("On Stage {0}, using {1} power, with {2} units of energy left, Score: {3} ({4})",
    rich_presence_lookup("Stage", byte(0x00F2E2), StageLookup),
    rich_presence_lookup("Power", byte(0x00F2FC), PowerLookup),
    rich_presence_value("Life", byte(0x00F2F8)),
    rich_presence_value("Score", byte(0x00F2E6) * 65535 + word(0x00F2E8)),
    rich_presence_lookup("Level", byte(0x00F3A2), LevelLookup)
)
