// ~Hack~ GameTap, Cup Noodles, and Bitter Tears
// #ID = 31958

// $9C6C: Player X-Position [16-bit]
//        0x1e2b = Level 1 End
// $9C70: Player Y-Position [16-bit]
// $CF5E: Bitflags
//        Bit0 = Take soda
//        Bit1 = Return home from 7-Eleven
//        Bit2 = Microwave noodles
//        Bit3 = Use body spray
//        Bit4 = Pass out
//        Bit5 = Look at Sonic CulT
//        Bit6 = Begin boss 1
//        Bit7 = Exit car
// $CF5F: Bitflags
//        Bit0 = First dialogue
//        Bit1 = Adventure begins
//        Bit2 = Examine computer
//        Bit4 = Move couch
//        Bit5 = Enter 7-Eleven
//        Bit6 = Take Cup Noodles
//        Bit7 = Take Axe Body Spray
// $CF60: Bitflags
//        Bit0 = Choose suspect
//        Bit1 = Run from hospital room
//        Bit2 = Begin boss 3
//        Bit3 = Return home from hospital
//        Bit4 = Answer door
//        Bit5 = Begin boss 4
//        Bit6 = Punch the warden
//        Bit7 = Murdered by cultists
// $CF61: Bitflags
//        Bit1 = Take glass
//        Bit2 = Take tools
//        Bit3 = Repair bathroom window
//        Bit4 = Repair kitchen window
//        Bit6 = Hear noise in living room
//        Bit7 = Begin boss 2
// $CF63: Bitflags
//        Bit0 = Survive cultists
//        Bit1 = Survive cultists
//        Bit3 = Meet cousin
// $CF66: Adventure Map [8-bit]
//        0x00 = Bedroom, Special Background
//        0x01 = Bathroom
//        0x02 = Living Room
//        0x03 = Kitchen
//        0x04 = Outside House
//        0x05 = Garage
//        0x06 = Outside 7-Eleven
//        0x07 = 7-Eleven
//        0x08 = Hospital Room
//        0x09 = Hospital Maze
//        0x0a = Outside Hospital
//        0x0b = Jail
//        0x0c = Square 1
//        0x0d = Square 2
//        0x0e = Square 3
// $CF67: Action Map [8-bit]
//        0x00 = Green Hill 1
//        0x01 = Boss 1, Credits after 0x0b
//        0x02 = Green Hill 2
//        0x03 = Boss 2
//        0x04 = Green Hill 3
//        0x05 = Boss 3
//        0x06 = Green Hill 4
//        0x07 = Boss 4
//        0x08 = Green Hill 5
//        0x09 = Green Hill 6 (Real)
//        0x0a = Green Hill 6 (Jail)
//        0x0b = Green Hill 6 (Ollie)
// $CF6E: Health [8-bit]
// $CFD5: 0x00 = Adventure Map, Title Screen, briefly after dying in Action Map
//        0x03 = Action Map
// $CFDA: Yu-Gi-Oh Cards
//        Each byte is one card
//        0x00 -> 0xff when collected
// $D1E0: 0x00 = Adventure Map, Title Screen, briefly after dying in Action Map
//        0x12 = Action Map

display = byte(0xffff)
in_adv_map = byte(0xcfd5) == 0
in_act_map = byte(0xcfd5) == 3
adv_map = byte(0xcf66)
act_map = byte(0xcf67)
x_position = word(0x9c6c)
health = byte(0xcf6e)
reach_boss_1 = bit6(0xcf5e) == 1
reach_boss_2 = bit7(0xcf61) == 1
reach_boss_3 = bit2(0xcf60) == 1
reach_boss_4 = bit5(0xcf60) == 1

good_end_flags =
    bit4(0xcf60) == 0 &&
    bit3(0xcf63) == 1

bad_end_flags =
    bit4(0xcf60) == 1 &&
    bit6(0xcf60) == 0

worst_end_flags =
    bit4(0xcf60) == 1 &&
    bit6(0xcf60) == 1

// ------------
// Achievements
// ------------

achievement(
    title = "Movie Night",
    description = "Retrieve a video tape from Blockbuster",
    points = 1,
    type = "PROGRESSION",
    trigger =
        adv_map == 0 &&
        act_map == 0 &&
        prev(x_position) < 0x1900 &&
        x_position >= 0x1900
)

function achievement_boss(title_param, desc_param, bitflag_param, act_map_param) {
    achievement(
        title = title_param,
        description =
            format(
                "Defeat the {0} boss",
                desc_param
            ),
        points = 2,
        type = "PROGRESSION",
        trigger =
            bitflag_param &&
            prev(act_map) == act_map_param &&
            act_map == act_map_param + 1
    )
}

function achievement_damageless(title_param, desc_param, bitflag_param, act_map_param) {
    achievement(
        title = title_param,
        description =
            format(
                "Defeat the {0} boss without being harmed",
                desc_param
            ),
        points = 3,
        trigger =
            bitflag_param &&
            prev(health) == 5 &&
            prev(act_map) == act_map_param &&
            trigger_when(act_map == act_map_param + 1)
    )
}

achievement_boss("A Different Kind of Ring", "first", reach_boss_1, 1)

// Additional condition needed to prevent trigger icon displaying during credits
achievement_damageless("Clean Curse", "first", display != 0x61 && reach_boss_1, 1)

achievement_boss("Merely a Flesh Wound", "second", reach_boss_2, 3)
achievement_damageless("Mask Off", "second", reach_boss_2, 3)
achievement_boss("Turning the Page", "third", reach_boss_3, 5)
achievement_damageless("Suit Yourself", "third", reach_boss_3, 5)
achievement_boss("Fried Mushrooms", "fourth", reach_boss_4, 7)
achievement_damageless("Mirror Moves", "fourth", reach_boss_4, 7)

achievement(
    title = "Dawn of a New Day",
    description = "Ollie had a revelation!",
    points = 5,
    type = "WIN_CONDITION",
    trigger =
        good_end_flags &&
        prev(act_map) == 0xb &&
        prev(display) != 0x61 &&
        display == 0x61
)

achievement(
    title = "At Least I Have Cup Noodles",
    description = "Ollie continued his miserable life",
    points = 5,
    type = "WIN_CONDITION",
    trigger =
        bad_end_flags &&
        act_map == 9 &&
        prev(display) != 0x61 &&
        display == 0x61
)

achievement(
    title = "No More Green Hill Zone",
    description = "Ollie went insane",
    points = 5,
    type = "WIN_CONDITION",
    trigger =
        worst_end_flags &&
        act_map == 0xa &&
        prev(display) != 0x61 &&
        display == 0x61
)

// -------------
// Rich Presence
// -------------

act_map_dict = {
    0: "Green Hill Zone",
    1: "a nightmare",
    2: "Green Hill Zone",
    3: "a nightmare",
    4: "Green Hill Zone",
    5: "a nightmare",
    6: "Green Hill Zone",
    7: "a nightmare",
    8: "Green Hill Zone",
    9: "Green Hill Zone",
    0xa: "Green Hill Zone",
    0xb: "Green Hill Zone"
}

adv_map_dict = {
    0: "in his bedroom",
    1: "in his bathroom",
    2: "in his living room",
    3: "in his kitchen",
    4: "outside his house",
    5: "in his garage",
    6: "outside a 7-Eleven",
    7: "in a 7-Eleven",
    8: "in a hospital room",
    9: "in a hospital",
    0xa: "outside a hospital",
    0xb: "in a jail"
}

rich_presence_conditional_display(
    repeated(30, display == 0x61 && never(in_act_map)),
    "Completed the game"
)

rich_presence_conditional_display(
    in_act_map,
    "GameTap is in {0}",
    rich_presence_lookup("ActionMap", act_map, act_map_dict)
)

rich_presence_conditional_display(
    repeated(45, in_adv_map && never(in_act_map)) && health != 0 && adv_map >= 0xc,
    "A square navigates a maze"
)

rich_presence_conditional_display(
    repeated(45, in_adv_map && never(in_act_map)) && health != 0 && worst_end_flags && act_map == 0xa,
    "Ollie is in a padded cell"
)

rich_presence_conditional_display(
    repeated(45, in_adv_map && never(in_act_map)) && health != 0,
    "Ollie is {0}",
    rich_presence_lookup("AdventureMap", adv_map, adv_map_dict)
)

rich_presence_display(
    "Playing GameTap and eating Cup Noodles"
)

// -------------
// Formerly Used
// -------------

// achievement(
//     title = "Clean Curse",
//     description = "Defeat the first boss without being harmed",
//     points = 3,
//     trigger =
//         display != 0x61 &&
//         reach_boss_1 &&
//         prev(health) == 5 &&
//         prev(act_map) == 1 &&
//         trigger_when(act_map == 2)
// )