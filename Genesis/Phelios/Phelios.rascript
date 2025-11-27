// Phelios
// #ID = 230

// $0000: {Ending Flag}
//        
//        This address will mantain its value during the final fight and change to 22 once the congratulations phrase appears on screen.
//        
//        Sadly, this value is also shared with the continue screen and all screen transitions. Must be careful when using this value to not false trigger anything.
//        
//        During the final fight = 20
//        Screen Transition = 22
// $F38E: 16-bit related to enemy health
// $F3A6: 16-bit related to enemy health
// $F3CE: 16-bit related to enemy health
// $F3F4: 16-bit related to enemy health.
// $F40C: {Messages}
//        
//        8-Bit value that controls messages that appears on top of screen.
//        
//        00 = No message is being shown.
//        02 = A message is being shown.
//        
//        Note that, for many bosses, a message appears at the start of the fight and another on the end, making it the perfect trigger.
// $F440: {Score high position}
//        
//        16-bit value for score [xxxx0000].
//        Caps at 99999900 and then returns to 0.
//        Potential flaw to delta score based triggers.
// $F442: {Score low position}
//        
//        16-Bit value for score [0000xxx0]. Note that the first digit will always be 0. This value is interactive.
// $F46A: {LVC}
//        
//        Location Value of Choice,
//        
//        Stable, 8-bit value related to in game location. Apparently related to tileset.
//        
//        *** Location List ***
//        
//        *Value = Location Name*
//        
//        00 = Namco Logo,
//        00 = Story,
//        00 = Title Screen,
//        01 = Ch. 1 [Also used in Demo Mode],
//        02 = Ch. 1 Temple,
//        03 = Ch. 2 [1st part],
//        04 = Ch. 2 [2nd part] [Also used in Demo Mode],
//        05 = Ch. 2 Temple,
//        06 = Ch. 3 [Also used in Demo Mode],
//        07 = Ch. 3 Temple,
//        08 = Ch. 4,
//        09 = Ch. 4 Temple,
//        0a = Ch. 5.
//        
//        * Continues on 0x00f45b *
// $F46B: * Address used only for notes
//        
//        *** Continuation of location list ***
//        
//        0b = Ch. 5 Temple,
//        0c = Ch. 6,
//        0d = Ch. 6 Temple,
//        0e = Ch. 7,
//        0f = Ch. 7 Temple,
//        11 = Start Screen and Options Menu.
//        
//        *** Observations ***
//        
//        "0f" is also used all throughout the ending sequence.
//        Continue and Game Over screen mantains the last location value stored.
//        At the end of each chapter, the value changes before Artemis animation.
// $F46C: {Difficulty}
//        
//        8-Bit value used to store difficulty settings.
//        00 = Novice,
//        01 = Advanced,
//        02 = Expert.
//        
//        Can be interacted with and will modify the energy after each new life.
// $F46E: {Demo Flag}
//        
//        8-Bit value for Demo Mode [can't believe I've finally found it].
//        
//        00 = Demo Mode,
//        01 = Can control Apollo.
//        
//        It's interactive and is linked to the Game Over apearing on screen.
// $F470: {Credits}
//        
//        8-Bit value indicating the number of credits left. The default number is 03 but the player can increase it to 09 in the 1st chapter intro screen by pressing the combination CABACABA.
// $F472: {Lives}
//        
//        8-bit value for number of lives.
//        Only shows 0 - 8 in game but can exceed that.
// $F474: {Energy}
//        
//        8-bit value for energy. Doesn't have a cap but will only show 0 - 4 in the HUD.
// $F47E: {Sword Charge}
//        
//        8-Bit value used for charging shot. As you hold fire buton, it goes up. Caps at 40.
// $F482: {Chapter}
//        
//        In game 8-bit value indicating current chapter on screen.
//        
//        00 = 1CH
//        01 = 2CH...
// $F484: {Phelios Sword}
//        
//        8-Bit value detailing the Phelios Sword parts Apollo has collected during chapter 7. When all pieces are collected, this value is set to 7f. It is interactive.
// $F4A8: {Y-pos n1}
//        
//        16-Bit Value for the sprites - screen Y position. Can be used for all the temples but will return to 0 after "ffff" or after death. Use [Y-pos n2] that have 32-bit value to flag chekpoints in longer stages.
//        
//        Position of the bosses in temple is f000 with some exeptions [Ch.6], [Ch7]. For those, use [Y-pos n2].
// $F4B0: {Y-pos n2}
//        
//        32-Bit value for the screen Y position. This adress show the "true complete position" of the screen. In opposition to [Y-pos n1], it will not go back to 0 after death and rebirth at a checkpoint in midlevel.
//        
//        *** Observation ***
//        
//        For stages that have animated background [Ch2, cave], [Ch4] and [Ch6] only the higher 4 digits [XXXX0000] will be used to keep progression as the lower ones [0000xxxx] will stay at 0. This is very important for the no-death cheevos.
// $F4B2: {Higher Y-pos n2}
//        
//        This is the higher 16-bits of the 32-bit value [Y-pos n2]. Very important to stages with animated backgrounds. See note in [Y-pos n2] for more details.
// $F4C0: {Apollo's Speed}
//        
//        16-Bit value for speed. Each "Speed Up" item will increase this value by 2.
// $F4C2: {Apollo's Options}
//        
//        8-Bit value for number of options with Apollo. This value caps at 02.
// $F4C4: {Beam Ammo}
//        
//        16-Bit value used to store "Beam" ammo.
// $F4C6: {Homming Ammo}
//        
//        16-Bit value used to store "Homing" ammo.
// $F4C8: {Across Ammo}
//        
//        16-Bit value used to store "Across" ammo.
// $F536: {Game Over Countdown}
//        
//        8-bit value used to store the remaining time to chose between "Yes" or "No" during the continue screen. Can be interacted with.
// $F548: {Y-pos n3}
//        
//        32-bit value associated with y position of the screen. As the scenery moves, this number rises
// $F5A2: {Opt. Menu Cursor}
//        
//        8-bit value for cursor position in the options menu.
// $FCBC: {Demo Flag}
//        
//        8-Bit value related to Apollo sprite. In Demo Mode, this value is set to 47 so that the sprite can exibit the correct symbols to form the on screen word "Game Over".

StageLookup = {
    0x1: "Delos Hills",
    0x2: "Medusa's Temple",
    0x3: "Emmuza's Hall",
    0x4: "Caves of Death",
    0x5: "Graiae's Temple",
    0x6: "Sky City",
    0x7: "Siren's Temple",
    0x8: "Fire River",
    0x9: "Antaeus' Temple",
    0xa: "Ice World",
    0xb: "Scylla's Temple",
    0xc: "Flooded Ruins",
    0xd: "Cerberus' Temple",
    0xe: "World's End",
    0xf: "Typhon's Temple",
}

ModeLookup = {
    0x0: "Novice",
    0x1: "Advanced",
    0x2: "Expert",
}

achievement(
    title = "Delos Hill", points = 5, type="progression",
    description = "Guide Pegasus through the skies of your homeland and defeat the guardian gorgon, Medusa",
    id = 71749, badge = "76860", published = "2019-02-11 2:50:13 AM", modified = "2019-11-19 6:06:06 PM",
    trigger = never(byte(0x00F482) != 0) && never(byte(0x00F46A) != 2) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "Caves of Death", points = 5, type="progression",
    description = "Explore the underworld caves and defeat the guardian sisters, Graiae",
    id = 71750, badge = "76867", published = "2019-02-11 2:50:27 AM", modified = "2019-11-19 6:06:09 PM",
    trigger = never(byte(0x00F482) != 1) && never(byte(0x00F46A) != 5) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "Skies of Perboleos", points = 5, type="progression",
    description = "Assault the Griffon Knights of the flying city and defeat the guardian sorceress, Siren",
    id = 71751, badge = "76873", published = "2019-02-11 2:50:34 AM", modified = "2019-11-19 6:06:12 PM",
    trigger = never(byte(0x00F482) != 2) && never(byte(0x00F46A) != 7) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "Rivers of Fire", points = 5, type="progression",
    description = "Fly above the fiery domain of Gaia and defeat her giant son, Antaeus",
    id = 71752, badge = "76879", published = "2019-02-11 2:50:40 AM", modified = "2019-11-19 6:06:14 PM",
    trigger = never(byte(0x00F482) != 3) && never(byte(0x00F46A) != 9) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "Frozen Plains", points = 5, type="progression",
    description = "Withstand the cold winds of the Ice World and defeat the guardian aberration, Scylla",
    id = 71753, badge = "76882", published = "2019-02-11 2:50:46 AM", modified = "2019-11-19 6:06:17 PM",
    trigger = never(byte(0x00F482) != 4) && never(byte(0x00F46A) != 11) && never(word(0x00F4A8) != 61440) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "Water Ruins", points = 5, type="progression",
    description = "Dodge the attacks of the flooded ruins' monsters and defeat the guardian dog, Cerberus",
    id = 71754, badge = "76886", published = "2019-02-11 2:50:51 AM", modified = "2019-11-19 6:06:20 PM",
    trigger = never(byte(0x00F482) != 5) && never(byte(0x00F46A) != 13) && never(word(0x00F4A8) == 0) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C))
)

achievement(
    title = "World's End", points = 10, type="win_condition",
    description = "Ride Pegasus beyond the end of space time to defeat the false god, Typhon",
    id = 71755, badge = "76889", published = "2019-02-11 2:50:57 AM", modified = "2019-11-19 6:06:22 PM",
    trigger = never(byte(0x00F474) == 0) && never(byte(0x00F482) != 6) && never(byte(0x00F46A) != 15) &&
              never(word(0x00F4A8) == 0) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) && once(byte(0x000000) == 34)
)

achievement(
    title = "The Way of a God", points = 2,
    description = "Begin a new journey in the \"Expert\" difficulty setting [finish the game on \"Advanced\" difficulty to unlock this option]",
    id = 71756, badge = "76893", published = "2019-02-11 2:51:03 AM", modified = "2019-11-19 6:06:25 PM",
    trigger = byte(0x00F46C) == 2 && byte(0x00F482) == 0 && byte(0x00F46A) == 1 && dword(0x00F4B0) == 0
)

achievement(
    title = "Eternal Sun", points = 25,
    description = "Complete the story in the \"Expert\" difficulty setting",
    id = 71757, badge = "76894", published = "2019-02-11 2:51:08 AM", modified = "2019-11-19 6:06:27 PM",
    trigger = never(byte(0x00F474) == 0) && never(byte(0x00F482) != 6) && never(byte(0x00F46A) != 15) &&
              never(word(0x00F4A8) == 0) && never(byte(0x00F46C) != 2) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              once(byte(0x000000) == 34)
)

achievement(
    title = "Legend of Perseus", points = 5,
    description = "Explore the gorgon Medusa's temple in Chapter 1 and leave unscathed",
    id = 71758, badge = "76866", published = "2019-02-11 2:51:13 AM", modified = "2019-02-12 3:02:45 AM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 0) && never(byte(0x00F46A) != 2) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "Emmuza's Defeat", points = 5,
    description = "Destroy the guardians of the Glass Portal in Chapter 2 without taking damage in the fight",
    id = 71759, badge = "76868", published = "2019-02-11 2:51:19 AM", modified = "2019-02-12 4:48:52 AM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && never(dword(0x00F4B0) != 389120) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 1) && never(byte(0x00F46A) != 3) && never(dword(0x00F4B0) < 389120)))
)

achievement(
    title = "Past, Present and Future", points = 10,
    description = "Enter the temple of the Graiae in Chapter 2 and exit unscathed",
    id = 71760, badge = "76870", published = "2019-02-11 2:51:22 AM", modified = "2019-11-19 6:06:31 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 1) && never(byte(0x00F46A) != 5) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "End of Enchantment", points = 10,
    description = "Assault the sorceress Siren's temple in Chapter 3 and leave unscathed",
    id = 71761, badge = "76878", published = "2019-02-11 2:51:27 AM", modified = "2019-11-19 6:06:34 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 2) && never(byte(0x00F46A) != 7) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "A Giant's Demise", points = 10,
    description = "Venture into the house of Antaeus in Chapter 4 and leave unscathed ",
    id = 71762, badge = "76880", published = "2019-02-11 2:51:31 AM", modified = "2019-11-19 6:06:36 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 3) && never(byte(0x00F46A) != 9) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "A Nymph Subjugation", points = 10,
    description = "Defeat Scylla inside her temple in Chapter 5 and leave unscathed",
    id = 71763, badge = "76885", published = "2019-02-11 2:51:36 AM", modified = "2019-11-19 6:06:38 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 4) && never(byte(0x00F46A) != 11) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "Taming a Beast", points = 10,
    description = "Kill the guardian dog Cerberus inside its temple taking no damage ",
    id = 71764, badge = "76888", published = "2019-02-11 2:51:40 AM", modified = "2021-11-21 10:08:26 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 5) && never(byte(0x00F46A) != 13) &&
                never(byte(0x00F472) < prev(byte(0x00F472))) && never(byte(0x00F470) < prev(byte(0x00F470)))))
)

achievement(
    title = "Fall of a False God", points = 10,
    description = "Reach the final temple and end the battle inside untouched",
    id = 71765, badge = "76891", published = "2019-02-11 2:51:45 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              once(byte(0x000000) == 34) &&
              (always_false() || (never(byte(0x00F482) != 6) && never(byte(0x00F46A) != 15) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "A Single Silver Coin", points = 25,
    description = "Complete the story without using any credits [Advanced or Expert]",
    id = 71766, badge = "76895", published = "2019-02-11 2:51:49 AM", modified = "2019-11-19 6:06:44 PM",
    trigger = unless(once(prev(byte(0x00F470)) > byte(0x00F470))) && never(byte(0x00F474) == 0) &&
              never(byte(0x00F482) != 6) && never(byte(0x00F46A) != 15) && never(word(0x00F4A8) == 0) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C)) && once(byte(0x000000) == 34) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 1)))
)

achievement(
    title = "A Single Golden Coin", points = 50,
    description = "Complete the story without using any credits [Expert only]",
    id = 71767, badge = "76896", published = "2019-02-11 2:51:53 AM", modified = "2019-11-19 6:06:47 PM",
    trigger = unless(once(prev(byte(0x00F470)) > byte(0x00F470))) && never(byte(0x00F474) == 0) &&
              never(byte(0x00F46C) != 2) && never(byte(0x00F482) != 6) && never(byte(0x00F46A) != 15) &&
              never(word(0x00F4A8) == 0) && once(prev(byte(0x00F40C)) < byte(0x00F40C)) && once(byte(0x000000) == 34) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 1)))
)

achievement(
    title = "Hero of Delos", points = 10,
    description = "Complete Chapter 1 deathless",
    id = 71768, badge = "76897", published = "2019-02-11 2:51:56 AM", modified = "2019-11-19 6:06:49 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 0)) &&
              never(byte(0x00F46A) != 2) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 1)))
)

achievement(
    title = "Hero of Death", points = 10,
    description = "Complete Chapter 2 deathless",
    id = 71769, badge = "76898", published = "2019-02-11 2:52:00 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 1)) &&
              never(byte(0x00F46A) != 5) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 3)))
)

achievement(
    title = "Hero of the Skies", points = 10,
    description = "Complete Chapter 3 deathless",
    id = 71770, badge = "76899", published = "2019-02-11 2:52:04 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 2)) &&
              never(byte(0x00F46A) != 7) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 6)))
)

achievement(
    title = "Hero of the Fire", points = 10,
    description = "Complete Chapter 4 deathless",
    id = 71771, badge = "76900", published = "2019-02-11 2:52:07 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 3)) &&
              never(byte(0x00F46A) != 9) && never(word(0x00F4A8) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + word(0x00F4B2)) == 8)))
)

achievement(
    title = "Hero of the Ice", points = 10,
    description = "Complete Chapter 5 deathless",
    id = 71772, badge = "76901", published = "2019-02-11 2:52:10 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 4)) &&
              never(byte(0x00F46A) != 11) && never(word(0x00F4A8) != 61440) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 10)))
)

achievement(
    title = "Hero of the Ruins", points = 10,
    description = "Complete Chapter 6 deathless",
    id = 71773, badge = "76902", published = "2019-02-11 2:52:17 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 5)) &&
              never(byte(0x00F46A) != 13) && never(dword(0x00F4B0) != 61440) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never((byte(0x00F46A) + word(0x00F4B2)) == 12)))
)

achievement(
    title = "Hero of the Sun", points = 10,
    description = "Complete Chapter 7 deathless",
    id = 71774, badge = "76903", published = "2019-02-11 2:52:22 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(once(prev(byte(0x00F472)) > byte(0x00F472))) && unless(once(byte(0x00F482) != 6)) &&
              never(byte(0x00F474) == 0) && never(byte(0x00F46A) != 15) && never(dword(0x00F4B0) != 61440) &&
              once(prev(byte(0x00F40C)) < byte(0x00F40C)) && once(byte(0x000000) == 34) &&
              (always_false() || (never((byte(0x00F46A) + dword(0x00F4B0)) == 14)))
)

achievement(
    title = "The Power of Beam", points = 1,
    description = "Acquire the Beam power up",
    id = 71775, badge = "76865", published = "2019-02-11 2:52:25 AM", modified = "2019-03-17 7:44:16 PM",
    trigger = unless(byte(0x00F46E) == 0) && never(byte(0x00F46E) == 0) && word(0x00F4C4) > 16
)

achievement(
    title = "The Power of Homming", points = 1,
    description = "Acquire the Homming power up",
    id = 71776, badge = "76864", published = "2019-02-11 2:52:29 AM", modified = "2019-03-17 7:44:21 PM",
    trigger = unless(byte(0x00F46E) == 0) && never(byte(0x00F46E) == 0) && word(0x00F4C6) > 16
)

achievement(
    title = "The Power of Across", points = 1,
    description = "Acquire the Across power up",
    id = 71777, badge = "76869", published = "2019-02-11 2:52:33 AM", modified = "2019-03-17 7:44:26 PM",
    trigger = unless(byte(0x00F46E) == 0) && never(byte(0x00F46E) == 0) && word(0x00F4C8) > 16
)

achievement(
    title = "Phelios, The Sword of Light", points = 5,
    description = "Unite all the scattered parts of the Sword of Light in Chapter 7",
    id = 71778, badge = "76890", published = "2019-02-11 2:52:37 AM", modified = "2019-11-19 6:06:53 PM",
    trigger = unless(byte(0x00F482) != 6) && byte(0x00F484) == 127
)

achievement(
    title = "Blazing Sun", points = 5,
    description = "Have all 4 life energy bars [Advanced or Expert]",
    id = 71779, badge = "76904", published = "2019-02-11 2:52:40 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(byte(0x00F46C) == 0) && byte(0x00F474) == 4
)

achievement(
    title = "A Golden Thread", points = 5,
    description = "Have 9 lives with you [Advanced or Expert]",
    id = 71780, badge = "76905", published = "2019-02-11 2:52:44 AM", modified = "2020-05-13 7:40:09 PM",
    trigger = byte(0x00F46C) > 0 && byte(0x00F472) == 9 && prev(byte(0x00F472)) == 8
)

achievement(
    title = "A Gift From the Gods", points = 5,
    description = "C, A, B, A, C, A, B ,A  on the first chapter intro screen",
    id = 71781, badge = "76906", published = "2019-02-11 2:52:48 AM", modified = "2022-11-22 10:07:22 AM",
    trigger = trigger_when((prev(byte(0x00F470)) + 6) == byte(0x00F470)) && (byte(0x00F46A) + dword(0x00F4B0)) == 1
)

achievement(
    title = "Sword of Vendetta", points = 5,
    description = "Score 500.000 points or more [Advanced or Expert]",
    id = 71782, badge = "76928", published = "2019-02-11 2:52:52 AM", modified = "2019-10-11 12:05:01 PM",
    trigger = unless(byte(0x00F46C) == 0) && unless(byte(0x00FCBC) == 71) && unless(byte(0x00F46A) == 0) &&
              unless(byte(0x00F46A) == 17) && word(0x00F440) >= 80
)

achievement(
    title = "Sword of Valor", points = 10,
    description = "Score 700.000 points or more [Advanced or Expert]",
    id = 71783, badge = "76941", published = "2019-02-11 2:52:55 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(byte(0x00F46C) == 0) && unless(byte(0x00FCBC) == 71) && unless(byte(0x00F46A) == 0) &&
              unless(byte(0x00F46A) == 17) && word(0x00F440) >= 112
)

achievement(
    title = "Sword of Justice", points = 25,
    description = "Score 1.500.000 points or more [Advanced or Expert]",
    id = 71784, badge = "76942", published = "2019-02-11 2:52:59 AM", modified = "2019-11-19 6:06:58 PM",
    trigger = unless(byte(0x00F46C) == 0) && unless(byte(0x00FCBC) == 71) && unless(byte(0x00F46A) == 0) &&
              unless(byte(0x00F46A) == 17) && word(0x00F440) >= 336
)

achievement(
    title = "The Sky Chase", points = 10,
    description = "Reach Siren's temple from the checkpoint of Chapter 3 unscathed",
    id = 71785, badge = "76877", published = "2019-02-11 2:53:03 AM", modified = "2019-11-19 6:07:01 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once(dword(0x00F4B0) < 589824) &&
              once(dword(0x00F4B0) > 3900928) &&
              (always_false() || (never(byte(0x00FCBC) == 71) && never(byte(0x00F482) != 2) && never(byte(0x00F46A) != 6) &&
                never(dword(0x00F4B0) < 532480)))
)

achievement(
    title = "The Cold Steel", points = 10,
    description = "Reach Scylla's temple from the checkpoint of Chapter 5 unscathed",
    id = 71786, badge = "76884", published = "2019-02-11 2:53:07 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once(dword(0x00F4B0) < 405504) &&
              once(dword(0x00F4B0) == 786432) &&
              (always_false() || (never(byte(0x00F482) != 4) && never(byte(0x00F46A) != 10) && never(dword(0x00F4B0) < 397312)))
)

achievement(
    title = "The Gauntlet", points = 10,
    description = "Reach the temple of Cerberus from the checkpoint of Chapter 6 unscathed",
    id = 71787, badge = "76887", published = "2019-02-11 2:53:10 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) && once((word(0x00F4A8) + dword(0x00F4B0)) < 397312) &&
              once(dword(0x00F4B0) == 720896) &&
              (always_false() || (never(byte(0x00F482) != 5) && never(byte(0x00F46A) != 12) &&
                never((word(0x00F4A8) + dword(0x00F4B0)) <= 393216)))
)

achievement(
    title = "Promethean Curse I", points = 10,
    description = "Destroy 50 parts of the Graiae in succession without being damaged in Chapter 2",
    id = 71788, badge = "76872", published = "2019-02-11 2:53:14 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = never(prev(byte(0x00F474)) > byte(0x00F474)) && never(byte(0x00F482) != 1) && never(byte(0x00F46A) != 5) &&
              never(dword(0x00F4B0) != 61440) && repeated(50, prev(dword(0x00F440)) != dword(0x00F440))
)

achievement(
    title = "Promethean Curse II", points = 10,
    description = "Earn at least 2 lives inside Antaeus temple by increasing your score in Chapter 4",
    id = 71789, badge = "76881", published = "2019-02-11 2:53:17 AM", modified = "2019-11-19 6:07:04 PM",
    trigger = never(byte(0x00F482) != 3) && never(byte(0x00F46A) != 9) &&
              repeated(2, prev(byte(0x00F472)) < byte(0x00F472))
)

achievement(
    title = "Gaia's Challenge", points = 10,
    description = "Defeat Antaeus without destroying anything else inside his temple (including during the fight) in Chapter 4 and without taking any damage",
    id = 71790, badge = "76936", published = "2019-02-11 2:53:21 AM", modified = "2019-11-19 6:07:07 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) &&
              unless(repeated(2, prev(dword(0x00F440)) != dword(0x00F440))) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) &&
              (always_false() || (never(byte(0x00F482) != 3) && never(byte(0x00F46A) != 9) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "Amphitrite's Challenge", points = 10,
    description = "Increase your score 50 times inside Chapter 5 temple (including during the boss) without being damaged",
    id = 71791, badge = "76932", published = "2019-02-11 2:53:25 AM", modified = "2019-11-19 6:07:09 PM",
    trigger = unless(once(prev(byte(0x00F474)) > byte(0x00F474))) &&
              measured(repeated(50, prev(dword(0x00F440)) != dword(0x00F440))) &&
              (always_false() || (never(byte(0x00F46A) != 11) && never(byte(0x00F482) != 4) &&
                never((byte(0x00F46A) + dword(0x00F4B0)) == 11)))
)

achievement(
    title = "Ares' Challenge", points = 10,
    description = "Complete Chapter 1 deathless and with a score of, at least, 57.000 points [Advanced only]",
    id = 71792, badge = "76933", published = "2019-02-11 2:53:29 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(byte(0x00F46C) != 1) && unless(once(prev(byte(0x00F472)) > byte(0x00F472))) &&
              never(byte(0x00F482) != 0) && never(byte(0x00F46A) != 2) && never(dword(0x00F4B0) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) && word(0x00F440) >= 5 && word(0x00F442) >= 28672 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Athena's Challenge", points = 10,
    description = "Complete Chapter 1 deathless scoring less than 23.000 points [Advanced only]",
    id = 71793, badge = "76935", published = "2019-02-11 2:53:32 AM", modified = "2019-11-19 6:07:12 PM",
    trigger = unless(byte(0x00F46C) != 1) && unless(once(prev(byte(0x00F472)) > byte(0x00F472))) &&
              never(byte(0x00F482) != 0) && never(byte(0x00F46A) != 2) && never(dword(0x00F4B0) != 61440) &&
              repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C)) && word(0x00F440) == 2 && word(0x00F442) <= 12288 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Artemis' Challenge", points = 10,
    description = "Finish the story on \"Novice\" difficulty setting without increasing Apollo's options or losing a credit",
    id = 71794, badge = "76939", published = "2019-02-11 2:53:36 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(byte(0x00F46C) != 0) && unless(once(prev(byte(0x00F470)) > byte(0x00F470))) &&
              unless(once(prev(byte(0x00F4C2)) < byte(0x00F4C2))) && unless(byte(0x00F474) == 0) &&
              repeated(3, prev(byte(0x00F482)) < byte(0x00F482)) && repeated(8, prev(byte(0x00F46A)) < byte(0x00F46A)) &&
              byte(0x00F46A) == 10 && byte(0x000000) == 34 && dword(0x00F4B0) == 61440 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Hermes' Challenge", points = 10,
    description = "Finish the story on \"Novice\" difficulty setting without increasing Apollo's speed or losing a credit",
    id = 71795, badge = "76940", published = "2019-02-11 2:53:40 AM", modified = "2019-10-20 2:35:02 PM",
    trigger = unless(byte(0x00F46C) != 0) && unless(once(prev(byte(0x00F470)) > byte(0x00F470))) &&
              unless(once(prev(word(0x00F4C0)) < word(0x00F4C0))) && unless(byte(0x00F474) == 0) &&
              repeated(3, prev(byte(0x00F482)) < byte(0x00F482)) && repeated(8, prev(byte(0x00F46A)) < byte(0x00F46A)) &&
              byte(0x00F46A) == 10 && byte(0x000000) == 34 && dword(0x00F4B0) == 61440 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Hephaestus' Challenge", points = 10,
    description = "Finish the story on \"Novice\" difficulty setting without charging the sword, using secondary powers or losing a credit",
    id = 71796, badge = "76938", published = "2019-02-11 2:53:43 AM", modified = "2019-10-23 3:31:01 PM",
    trigger = unless(byte(0x00F46C) != 0) && unless(once(prev(byte(0x00F470)) > byte(0x00F470))) &&
              unless(once(word(0x00F4C4) > 16)) && unless(once(word(0x00F4C6) > 16)) &&
              unless(once(word(0x00F4C8) > 16)) && unless(once(byte(0x00F47E) > 19)) && unless(byte(0x00F474) == 0) &&
              repeated(3, prev(byte(0x00F482)) < byte(0x00F482)) && repeated(8, prev(byte(0x00F46A)) < byte(0x00F46A)) &&
              byte(0x00F46A) == 10 && byte(0x000000) == 34 && dword(0x00F4B0) == 61440 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Hera's Challenge", points = 10,
    description = "Finish the story on \"Novice\" difficulty setting deathless",
    id = 71797, badge = "76937", published = "2019-02-11 2:53:47 AM", modified = "2019-11-19 6:07:15 PM",
    trigger = unless(byte(0x00F46C) != 0) && unless(once(prev(byte(0x00F472)) > byte(0x00F472))) &&
              never(byte(0x00F474) == 0) && repeated(3, prev(byte(0x00F482)) < byte(0x00F482)) &&
              repeated(8, prev(byte(0x00F46A)) < byte(0x00F46A)) && byte(0x00F46A) == 10 && byte(0x000000) == 34 &&
              dword(0x00F4B0) == 61440 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Zeus' Challenge", points = 25,
    description = "Finish the story on \"Novice\" difficulty setting without ever being with less than 2 life energy bars",
    id = 71798, badge = "76934", published = "2019-02-11 2:53:51 AM", modified = "2019-11-19 6:07:19 PM",
    trigger = unless(byte(0x00F46C) != 0) && unless(once(byte(0x00F474) < 2)) && never(byte(0x00F474) == 0) &&
              repeated(3, prev(byte(0x00F482)) < byte(0x00F482)) && repeated(8, prev(byte(0x00F46A)) < byte(0x00F46A)) &&
              byte(0x00F46A) == 10 && byte(0x000000) == 34 && dword(0x00F4B0) == 61440 &&
              (always_false() || (never(byte(0x00F46A) == 17)))
)

achievement(
    title = "Gaia's Challenge (copy)", points = 10,
    description = "Defeat Antaeus without destroying anything else inside his temple in Chapter 4 and without taking any damage",
    trigger = unless(repeated(2, prev(dword(0x00F440)) != dword(0x00F440))) &&
              trigger_when(repeated(2, prev(byte(0x00F40C)) < byte(0x00F40C))) &&
              (always_false() || (never(byte(0x00F482) != 3) && never(byte(0x00F46A) != 9) && never(word(0x00F4A8) == 0)))
)

achievement(
    title = "Amphitrite's Challenge (copy)", points = 10,
    description = "Increase your score 50 times inside Chapter 5 temple without being damaged",
    trigger = measured(repeated(50, prev(dword(0x00F440)) != dword(0x00F440))) &&
              (always_false() || (never(byte(0x00F46A) != 11) && never(byte(0x00F482) != 4) &&
                never((byte(0x00F46A) + dword(0x00F4B0)) == 11)))
)

rich_presence_conditional_display(byte(0x00F46E) == 0, "Starting a new adventure!")

rich_presence_display("Apollo is flying in {0} ({1} mode), Lives: {2}, Credits: {3}, Score: {4} Points",
    rich_presence_lookup("Stage", byte(0x00F46A), StageLookup),
    rich_presence_lookup("Mode", byte(0x00F46C), ModeLookup),
    rich_presence_value("Lives", byte(0x00F472)),
    rich_presence_value("Credits", byte(0x00F470)),
    rich_presence_value("Score", bcd(byte(0x00F440)) * 10000 + bcd(byte(0x00F441)) * 1000000 + bcd(byte(0x00F442)) * 1 + bcd(byte(0x00F443)) * 100)
)
