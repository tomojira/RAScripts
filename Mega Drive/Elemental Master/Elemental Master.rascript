// Elemental Master
// #ID = 4247

// $2F1C: 00=demo
// $A002: Mirror upgrade
// $A004: Shield - not always clean
// $A010: Time position on stage - don't stop at the boss
// $F104: 00=game activated
// $F13B: Position on stage 3c= Boss
// $F1B7: 0x00 = In Game (or briefly after reset)
//        0xff = Stage Select/Cutscenes/Otherwise not in a level.
// $F2E2: Stage
// $F2E4: Stage completion bitmask
// $F2E6: Score * 65536 + 0xf2e6 * 1
// $F2E8: Score * 1 + 0xf2e6 * 65536
// $F2F6: Remained credits
// $F2F8: Health
// $F2FA: Max health
// $F2FC: Weapon chosen
// $F2FE: Owned weapons bitmask
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
// $F388: 02=boss killed
// $F3A2: Difficulty
// $FFFE: 0x44=Opening Introduction at start of game.
//        0x70=Stage
//        0xf8=Ending

StageLookup = {
    0x0: "1 (Flame)",
    0x1: "2 (Wind)",
    0x2: "3 (Earth)",
    0x3: "4 (Water)",
    0x4: "5 (Ice)",
    0x5: "6 (Aether)",
    0x6: "7 (Darkness)",
}

PowerLookup = {
    0x0: "Light",
    0x1: "Flame",
    0x2: "Wind",
    0x3: "Earth",
    0x4: "Water",
}

LevelLookup = {
    0x0: "Normal",
    0x1: "Difficult",
    0x2: "Expert",
    0x3: "Practice",
}

achievement(
    title = "Flame", points = 1,
    description = "Obtain Flame power (Normal or Higher)",
    id = 25343, badge = "25778", published = "2015-07-16 10:59:00 PM", modified = "2020-11-22 9:12:52 PM",
    trigger = bit1(0x00F2FE) == 1 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && byte(0x00FFFE) == 112
)

achievement(
    title = "Wind", points = 1,
    description = "Obtain Wind power (Normal or Higher)",
    id = 25344, badge = "25779", published = "2015-07-16 10:59:03 PM", modified = "2020-11-22 9:12:54 PM",
    trigger = bit2(0x00F2FE) == 1 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && byte(0x00FFFE) == 112
)

achievement(
    title = "Earth", points = 1,
    description = "Obtain Earth power (Normal or Higher)",
    id = 25345, badge = "25780", published = "2015-07-16 10:59:06 PM", modified = "2020-11-22 9:12:56 PM",
    trigger = bit3(0x00F2FE) == 1 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && byte(0x00FFFE) == 112
)

achievement(
    title = "Water", points = 1,
    description = "Obtain Water power (Normal or Higher)",
    id = 25346, badge = "25781", published = "2015-07-16 10:59:10 PM", modified = "2020-11-22 9:12:57 PM",
    trigger = bit4(0x00F2FE) == 1 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0) && byte(0x00FFFE) == 112
)

achievement(
    title = "A Fairy Companion", points = 2,
    description = "Rescue Neena and gain her assistance (Normal or Higher)",
    id = 25347, badge = "25782", published = "2015-07-16 10:59:13 PM", modified = "2021-02-11 2:07:54 AM",
    trigger = once(byte(0x00F2E4) > prev(byte(0x00F2E4))) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Elemental Master", points = 5,
    description = "Gather all 4 elements and enchance the Light power (Normal or Higher)",
    id = 25351, badge = "25788", published = "2015-07-16 10:59:46 PM", modified = "2021-02-11 2:07:56 AM",
    trigger = bit5(0x00F2FE) == 1 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Magic Mirror", points = 3,
    description = "Obtain Magic Mirror (Normal or Higher)",
    id = 25348, badge = "25789", published = "2015-07-16 10:59:19 PM", modified = "2021-02-11 2:07:58 AM",
    trigger = once(byte(0x00A002) == 2) && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Crystal Ball", points = 3,
    description = "Obtain Crystal Ball (Normal or Higher)",
    id = 25349, badge = "25790", published = "2015-07-16 10:59:23 PM", modified = "2021-02-11 2:08:00 AM",
    trigger = byte(0x00A004) == 3 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
)

achievement(
    title = "Seven Chakras", points = 3,
    description = "Upgrade your health to the maximum (Normal or Higher)",
    id = 25350, badge = "25812", published = "2015-07-16 10:59:33 PM", modified = "2021-02-11 2:08:02 AM",
    trigger = byte(0x00F2FA) == 7 && never(byte(0x00F3A2) == 3) && never(byte(0x002F1C) == 0)
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
    title = "Liberator of Lorelei", points = 25,
    description = "Finish the game on Difficult level",
    id = 25357, badge = "25791", published = "2015-07-16 11:00:18 PM", modified = "2021-02-11 2:08:21 AM",
    trigger = never(bit5(0x00F2E4) != 1) && byte(0x00FFFE) == 248 && never(byte(0x00F3A2) != 1)
)

achievement(
    title = "Elemental Genius", points = 50,
    description = "Finish the game on Expert level",
    id = 25358, badge = "25792", published = "2015-07-16 11:00:22 PM", modified = "2021-02-11 2:08:23 AM",
    trigger = never(bit5(0x00F2E4) != 1) && once(byte(0x00FFFE) == 248) && never(byte(0x00F3A2) != 2)
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

rich_presence_display("On Stage {0}, using {1} power, with {2} units of energy left, Score: {3} ({4})",
    rich_presence_lookup("Stage", byte(0x00F2E2), StageLookup),
    rich_presence_lookup("Power", byte(0x00F2FC), PowerLookup),
    rich_presence_value("Life", byte(0x00F2F8)),
    rich_presence_value("Score", byte(0x00F2E6) * 65535 + word(0x00F2E8)),
    rich_presence_lookup("Level", byte(0x00F3A2), LevelLookup)
)
