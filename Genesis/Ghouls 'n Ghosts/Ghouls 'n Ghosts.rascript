// Ghouls 'n Ghosts
// #ID = 212

// $5F10: Looks to be 'boss health' on last level
// $B078: stage part. 1=part 2 of stage
// $B079: A stage id 0--5, 6=map
// $B109: stage victory and map=ff
// $B200: PLAYER X POSITION - 16BIT
// $B209: player animation
// $B20A: Player Animation [8-bit]
//        0x6e = Stage clear
//        0x6f = Stage clear with Golden Armor
//        [Credit: sirus2000]
// $B210: CHARACTER TYPE. 02 = GOLD ARMOR.
//        01 = NORMAL. 06 = GOLD ARMOR DUCK.
//        05 = ARMOR DUCK. 00 = OLD MAN.
// $B211: has armor =1
// $B212: player lives
// $B22D: Weapon ID [8-bit]
//        0x00 = Lance
//        0x01 = Dagger
//        0x02 = Torch
//        0x03 = Sword
//        0x04 = Axe
//        0x05 = Discus
//        0x06 = Psycho Cannon
//        [Credit: Scott]
// $B22E: 16bit - stage and substage, firts byte=stage, 2nd=substage
//        better than 0xb078 or 0xeec4
// $B22F: Stage ID [8-bit]
//        0x00 to 0x04 = Stage 1 to 5
//        0x05 = Loki
//        Can be frozen to load a certain stage
// $B231: [8-bit] In game
//        
//        0x00 - Not in game/dead
//        0x01 - In game
// $B23A: loop - add   1 each time you get to the door
//        even when getting to loki
// $B258: more score
// $B25A: score / 10  16bit   saves overflow in next variable
// $B312: go to map if lives or game over if no lives=ff
// $B315: continue = 1
// $B316: 0xff = Invincibility active, or death [8-bit]
//        [Credit: kdecks]
// $B318: Invincibility Timer [8-bit]
//        Starts at 0x58 after getting hit
//        [Credit: kdecks]
// $B342: no enemy spawn =ff
// $B343: game over=1
// $B344: magic fully charged=1
// $B345: Magic Enabled = 1
// $B348: map/cutscene=1
// $B349: magic charge lockout
// $B34B: lose contol/victory=1,2=stage transitions
// $DF0E: regulates mid screen text?
//        210: stage loaded /stage victory - take a key
//        111: demo / ready go / key taken
//        012: title, gameplay
//        11-->d: game over
//        30f: continue screen
// $DF0F: 1: just the message
//        2: message and blinking arrow
//        2,3,4,5,6,5: game over
// $DF16: 0=normal
//        e0=map
//        f8=stage victory
//        e8=got key
//        20=continue/part of victory
//        f0=demo, trans to da=loki killed, trans to 12=princess rescued
// $DF1F: which message
//        1 ready go
//        2 take a key for coming in
//        3 clear bonus
//        4 arrow
//        5 nothing
//        6 player one ready
//        7 player two ready
//        b nice catch
//        c press start button
// $DF88: continue countdown timer
// $EEC4: Stage ID
// $F603: input
// $F63A: Set to 01 when paused
// $F767: something
// $F77C: main menu=2, options=4
// $F77D: main menu/options selection
// $F77E: cheat code d-pad trigger.
// $F780: cheat code a button trigger
// $FC2E: screen ID
// $FDBC: current selection option - settings
// $FE94: practice=1, professional=0
// $FEC0: practice only =1
// $FEC1: 1 once play starts. Practice only, 0 on 2nd loop?
// $FEC2: 1=game starts practice or professional
// $FED6: professional=1
// $FED7: practice=1
// $FEE0: 1: 2 player game
// $FEE1: 1: 1 player game
// $FEE3: option selected
// $FFA1: Demo Number
// $FFA2: victory game demo number
// $FFA3: Set to 01 when showing victory game demo
// $FFF0: 1 = debug cheat mode on
// $FFF1: stage select mode on
// $FFF3: debug/cheat mode on = 01

player_activity = byte(0xb045)
player_animation = byte(0xb20a)
weapon = byte(0xb22d)
stage = byte(0xb22f)
stage_5_clear_count = byte(0xb23a)
magic_state = byte(0xb345)

game_state = byte(0xdf16)
continue_timer = byte(0xdf88)

menu_state = byte(0xf77c)
stage_select_state = byte(0xfff1)
debug_mode = byte(0xfff3)

//
//
//

no_demo = player_activity == 1

victory_animation =
    prev(player_animation) != 0x6e &&
    prev(player_animation) != 0x6f &&
    __ornext(
        player_animation == 0x6e ||
        player_animation == 0x6f
    )

torch = weapon == 2
sword = weapon == 3
psycho_cannon = weapon == 6
magic_enabled = magic_state == 1

complete_game =
    once(game_state == 0xda) &&
    game_state == 0x12

main_menu = menu_state == 2

no_stage_select =
    disable_when(
        stage_select_state == 1
    )

no_cheat =
    disable_when(
        debug_mode == 1
    )

//
//
//

WeaponLookup = {
    0: "Lance",
    1: "Dagger",
    2: "Torch",
    3: "Sword",
    4: "Axe",
    5: "Discus",
    6: "Psycho Cannon",
}

StageLookup = {
    0x0: "1-1:Execution Place",
    0x1: "1-2:Floating Island",
    0x100: "2-1:Village of Decay",
    0x101: "2-2:Town of Fire",
    0x200: "3-1:Baron Rankle's Tower",
    0x201: "3-2:Horrible Faced Mountain",
    0x300: "4-1:Crystal Forest",
    0x301: "4-2:Ice Slopes",
    0x400: "5-1:Castle of Evil Demons",
    0x401: "5-2:Castle of Evil Demons",
    0x500: "6 Loki",
}

ArmorLookup = {
    0x101: "Silver Armored",
    0x102: "Magic Armored",
    1: "Naked",
    0: "👴Old Man",
    0x105: "🦆Ducky",
    0x106: "🦆Ducky",
}

ModeLookup = {
    0: "",
    0xe0: "[Map] ",
    0xf8: "[Stage Complete] ",
    0xe8: "[Stage Complete] ",
    0x20: "[Continue?] ",
    0xf0: "[Attract Mode] ",
    0xda: "[Victory!] ",
    0x12: "[💑Princess Rescued!] ",
}

PausedLookup = {
    0: "",
    1: "▌▌ ",
}

MenuLookup = {
    0: "",
    2: "[☰] ",
    4: "[Option] ",
}

DifficultyLookup = {
    1: "Arcade",
    0: "Normal",
}

IntroLookup = {
    0: "[Intro/Title] ",
    0x100: "",
    1: "",
}

// ------------
// Achievements
// ------------

achievement(
    title = "Axe", points = 2,
    description = "Obtain an axe",
    id = 1564, badge = "01804", published = "2013-06-06 10:20:00 AM", modified = "2018-11-21 1:06:05 PM",
    trigger = byte(0x00B22D) == 4 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Dagger", points = 2,
    description = "Obtain a dagger",
    id = 1563, badge = "01803", published = "2013-06-06 10:18:30 AM", modified = "2018-11-21 1:06:11 PM",
    trigger = byte(0x00B22D) == 1 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Discus", points = 2,
    description = "Obtain a discus",
    id = 1565, badge = "01805", published = "2013-06-06 10:22:06 AM", modified = "2018-11-21 1:06:08 PM",
    trigger = byte(0x00B22D) == 5 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Firewater", points = 2,
    description = "Obtain fire water",
    id = 1566, badge = "01806", published = "2013-06-06 10:41:57 AM", modified = "2018-11-21 1:06:02 PM",
    trigger = byte(0x00B22D) == 2 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Sword", points = 2,
    description = "Obtain a sword",
    id = 1569, badge = "01809", published = "2013-06-06 11:58:37 AM", modified = "2018-11-21 1:06:15 PM",
    trigger = byte(0x00B22D) == 3 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Gold Arthur", points = 1,
    description = "Obtain golden armor",
    id = 1568, badge = "01808", published = "2013-06-06 11:25:51 AM", modified = "2021-05-21 5:07:40 PM",
    trigger = byte(0x00B345) == 1 && byte(0x00FFA3) == 0 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Psycho Cannon", points = 5,
    description = "Obtain the Psycho Cannon",
    id = 1570, badge = "01812", published = "2013-06-06 12:06:07 PM", modified = "2021-05-21 5:07:43 PM",
    trigger = byte(0x00B22D) == 6 && byte(0x00DF16) == 0 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    id = 1560,
    title = "Off With His Head",
    description = "Defeat Shielder and complete Stage 1",
    points = 5,
    type = "progression",
    trigger =
        no_demo &&
        stage == 0 &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 1561,
    title = "Infernomo",
    description = "Defeat Cerberus and complete Stage 2",
    points = 10,
    type = "progression",
    trigger =
        no_demo &&
        stage == 1 &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 1562,
    title = "Mistral Winds",
    description = "Defeat Gassuto and complete Stage 3",
    points = 10,
    type = "progression",
    trigger =
        no_demo &&
        stage == 2 &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 1567,
    title = "Curse of the Crystal Caves",
    description = "Defeat Ohme and complete Stage 4",
    points = 10,
    type = "progression",
    trigger =
        no_demo &&
        stage == 3 &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 1571,
    title = "The Giant Fly",
    description = "Defeat Beezlebub and complete Stage 5 with the Psycho Cannon",
    points = 25,
    type = "progression",
    trigger =
        no_demo &&
        stage == 4 &&
        stage_5_clear_count >= 1 &&
        psycho_cannon &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 1572,
    title = "Defeat Lucifer",
    description = "Complete the game",
    points = 25,
    type = "win_condition",
    trigger =
        no_demo &&
        stage == 5 &&
        stage_5_clear_count >= 2 &&
        complete_game &&
        no_cheat
)

achievement(
    title = "Quack Attack", points = 2,
    description = "Get transformed into the duck",
    id = 27032, badge = "27565", published = "2015-08-04 8:32:16 AM", modified = "2021-05-21 5:07:53 PM",
    trigger = byte(0x00B210) >= 5 && word(0x00B25A) > 0 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Old Warrior", points = 2,
    description = "Get transformed into the old man",
    id = 27031, badge = "27566", published = "2015-08-04 8:32:13 AM", modified = "2022-11-24 4:08:22 AM",
    trigger = byte(0x00B210) == 0 && word(0x00B25A) > 0 && byte(0x00B231) == 1 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Seeing Double", points = 5,
    description = "Duplicate yourself using magic",
    id = 27034, badge = "27563", published = "2015-08-04 9:04:02 AM", modified = "2021-05-21 5:07:56 PM",
    trigger = byte(0x00B20A) == 112 && byte(0x00B22D) == 1 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Top Score", points = 5,
    description = "Beat the default top score",
    id = 27033, badge = "27564", published = "2015-08-04 8:45:43 AM", modified = "2021-05-21 5:07:59 PM",
    trigger = word(0x00B25A) >= 1000 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    title = "Great Score", points = 25,
    description = "Score 50,000 points",
    id = 27030, badge = "27593", published = "2015-08-04 7:54:20 AM", modified = "2021-05-21 5:08:00 PM",
    trigger = word(0x00B25A) >= 5000 && unless(once(byte(0x00FFF3) == 1))
)

achievement(
    id = 27026,
    title = "Golden Dominance",
    description = "Defeat Shielder and complete Stage 1 while wearing golden armor",
    points = 10,
    trigger =
        no_demo &&
        stage == 0 &&
        magic_enabled &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 27027,
    title = "Fight Fire with Fire",
    description = "Defeat Cerberus and complete Stage 2 with the blue flame",
    points = 10,
    trigger =
        no_demo &&
        stage == 1 &&
        torch &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 27028,
    title = "Sword Through the Storm",
    description = "Defeat Gassuto and complete Stage 3 with a sword",
    points = 25,
    trigger =
        no_demo &&
        stage == 2 &&
        sword &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 27029,
    title = "The Hardest Battle",
    description = "Defeat Ohme and complete Stage 4 with the Psycho Cannon",
    points = 25,
    trigger =
        no_demo &&
        stage == 3 &&
        psycho_cannon &&
        victory_animation &&
        no_cheat
)

achievement(
    id = 27254,
    title = "Ultimate Victory",
    description = "Defeat Lucifer without using a continue",
    points = 100,
    trigger =
        once(main_menu) &&
        once(
            no_demo &&
            stage == 0
        ) &&
        never(continue_timer == 9) &&
        no_demo &&
        trigger_when(stage == 5) &&
        trigger_when(stage_5_clear_count >= 2) &&
        trigger_when(complete_game) &&
        no_cheat &&
        no_stage_select
)

leaderboard(
    id = 1070, title = "Hi-Score Practice",
    description = "Get the most points before game over",
    start  = byte(0x00FFF3) == 0 && byte(0x00FE94) == 1 && byte(0x00FEE1) == 1 && word(0x00B25A) == 0 &&
             word(0x00B258) == 0 && byte(0x00FEC0) == 1 && byte(0x00B212) == 3 && prev(byte(0x00B348)) == 1 &&
             byte(0x00B348) == 0,
    cancel = byte(0x00FEE1) == 0,
    submit = byte(0x00DF16) == 32,
    value = word(0x00B25A) * 10 + word(0x00B258) * 655360,
    format = "VALUE"
)

leaderboard(
    id = 2586, title = "Hi-Score Professional",
    description = "Get the most points in the arcade mode",
    start  = byte(0x00FFF3) == 0 && byte(0x00FE94) == 0 && byte(0x00FEE1) == 1 && word(0x00B25A) == 0 &&
             word(0x00B258) == 0 && byte(0x00B212) == 3 && prev(byte(0x00B348)) == 1 && byte(0x00B348) == 0,
    cancel = byte(0x00FEE1) == 0,
    submit = byte(0x00DF16) == 32,
    value = word(0x00B25A) * 10 + word(0x00B258) * 655360,
    format = "VALUE"
)

rich_presence_display("{0}{1}{2}{3}{4} Arthur  is in {5} 🗡️:{6}  🚶:{7} 🔁:{8} ⚖:{9}",
    rich_presence_lookup("Paused", byte(0x00F63A), PausedLookup),
    rich_presence_lookup("Intro", word(0x00FEE0), IntroLookup),
    rich_presence_lookup("Mode", byte(0x00DF16), ModeLookup),
    rich_presence_lookup("Menu", byte(0x00F77C), MenuLookup),
    rich_presence_lookup("Armor", word(0x00B210), ArmorLookup),
    rich_presence_lookup("Stage", word(0x00B22E), StageLookup),
    rich_presence_lookup("Weapon", byte(0x00B22D), WeaponLookup),
    rich_presence_value("Lives", byte(0x00B212)),
    rich_presence_value("Loop", byte(0x00B23A) + 1),
    rich_presence_lookup("Difficulty", byte(0x00FED6), DifficultyLookup)
)
