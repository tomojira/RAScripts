// Game & Watch Gallery 4
// #ID = 766

// $00115F: Possible value of 3 for gameover DK modern?
// $001178: Possible gamestate for DKmodern? 05 = gameover, 0a = ingame
// $0012FC: Game Select 1? Works with Classics
// $0012FE: Game Select 2? Works with Classics
// $001300: Pointer [32-bit]
//          +0xfe008344 = Current Score [16-bit]
//          .. Used for all games except Boxing and Donkey Kong 3
// $001314: Game/Screen [8-bit]
//          0x03 = Fire Classic
//          0x04 = Fire Modern
//          0x05 = Octopus Modern
//          0x06 = Octopus Classic
//          0x07 = Main Game Select
//          0x08 = Title Screen
//          0x09 = Game Variation/Difficulty
//          0x0a = Notice
//          0x0b = Rain Shower Classic
//          0x0c = Rain Shower Modern
//          0x0d = Chef Classic
//          0x0e = Chef Modern
//          0x0f = Donkey Kong Classic
//          0x10 = Donkey Kong Modern
//          0x11 = Mario Bros. Classic
//          0x12 = Mario Bros. Modern
//          0x13 = Donkey Kong Jr. Classic
//          0x14 = Donkey Kong Jr. Modern
//          0x15 = Boxing Classic
//          0x16 = Boxing Modern
//          0x17 = Fire Attack Classic
//          0x18 = Fire Attack Modern
//          0x19 = Mario's Cement Factory Classic
//          0x1a = Mario's Cement Factory Modern
//          0x1b = Donkey Kong 3 Classic
//          0x1c = Donkey Kong 3 Classic Multiplayer
//          0x1d = Donkey Kong 3 Modern
//          0x1e = Donkey Kong 3 Modern Multiplayer
//          0x1f = Boxing Classic Multiplayer
//          0x20 = Boxing Modern Multiplayer
//          0x21 = Manhole
//          0x22 = Parachute
//          0x23 = Zelda
//          0x24 = Climber
//          0x25 = Tropical Fish
//          0x26 = Life Boat
//          0x27 = Mario's Bombs Away
//          0x28 = Safe Buster
//          0x29 = Bomb Sweeper
//          0x2a = Gallery Corner
//          0x2b = Museum
//          0x2c = Music Room
//          0x2d = G&W History
//          0x2e = Message Board
//          0x2f = Present
//          0x30 = Credits
//          [Credit: LordAndrew]
// $001318: Difficulty 0= Easy 1=Hard 2=Very Hard
// $0014A8: Difficulty (Again)
// $00430C: Current Game 1 [Modern]
// $00430E: Current Game 2 [Modern] / Cycle Modifier
// $007CD0: Current Score Display when Paused
// $007D06: 16-bit = ffff when paused
// $00822C: [Modern] Boxing - Game Over Score
//          Hi Score Displayed when paused (Dec.)
//          
//          Octopus High Score - 16-bit - BCD
// $00A298: Game mode options
//          00 - Top Middle
//          01/0d - Top left
//          02/0e - Top RIght
//          03/0f - Bottom Left
//          04/10 - Bottom Right
// $00A2FA: 00 - Modern Selected
//          01 - Classic Selected
// $00ACC8: Fire Classic Easy Stars [8-bit]
//          These values only appear when on the Main Game Select
// $00ACC9: Fire Classic Hard Stars [8-bit]
// $00ACCA: Fire Modern Easy Stars [8-bit]
// $00ACCB: Fire Modern Hard Stars [8-bit]
// $00AF1C: Game Select Menu
// $00AF1E: [2 Byte] Game Select Idle timer
// $042026: Pause/Game Over - Option Selected [8-bit]
//          0x00 = Continue/Retry
//          0x01 = Exit
// $042027: Pause/Game Over - Star Cursor Position [8-bit]
//          0x27 = Continue (Paused). Lingers after unpausing
//          0x28 = Retry (Game Over)
//          0x33 = Exit
// $042030: Pointer [32-bit]
//          +0xfe008344 = Current Score [16-bit]
//          .. Used for all games except Boxing and Donkey Kong 3
//          +0xfe0084b4 = Current Score: Donkey Kong 3 [16-bit]
//          +0xfe008bf2 = Current Score: Boxing Classic [8-bit]
//          +0xfe00940c = Current Score: Boxing Modern [8-bit]
// $0421E4: Miss Count: Climber [8-bit]
// $0421F0: Miss Counter (8 bit, Fire classic)
// $0421F8: Lives Remaining (Donkey Kong Modern)
// $0421FC: Number of misses (Cement Factory C/M, DKJ C/M, Chef Modern, Mario Bros C/M Fire Attack C/M, Manhole)
// $04221E: (DK) Current Score Display 1s?
// $042224: Miss counter on Octopus classic? 4 on gameover.
// $042228: Number of misses (Chef Classic, Octopus Modern)
// $04222C: Number of misses (Rain Shower Classic)
// $042230: Miss Counter (8 bit, Fire Modern)
// $04224D: Octopus Score 8-bit
//          
//          10's place
// $04224E: Octopus Score 8-bit
//          
//          1's place
// $042384: DK3 Score in 10s
// $042388: Climber Current Score
// $042394: Fire Classic Current Total Score
// $042398: Fire Classic Score Display 1s
// $04239C: (DK) Parachute Current Total Score
// $0423A0: [CemFac(M/C)] [DKJr(M/C)] [(Chef (M)] (Mario Bros.(M/C)] [FirAtk(M/C)] (Manhole) (Fish) (Bombs) (Safe) (Zelda) Current Total Score
// $0423A4: (Cement Factory)(DKJr.)(Chef): Current Score 1s
// $0423C8: DK(C) Octopus(C) Current Total Score
// $0423CC: Octopus(M) Chef(C) Current Total Score
// $0423D0: Classic: (RainShwr) Current Total Score
// $0423D4: Fire Modern Current Total Score (0-FF)
// $0423D5: Fire Modern Current Total Score 10Hex(?)
// $0423D8: Fire Modern: Current Score ones
// $0423DC: Fire Modern: Current Score tens
// $0423DD: Fire Modern: Current Score hundreds?
// $0424F0: (DK3) Current Score 10s and 1s
// $0424F2: (DK3) Current Score 100s
// $0424F4: DK3 (M/C) Current Total Score
// $0424F8: (DK3) Current Score again?
// $042C14: Classic Boxing - Enemy HP? (8bit)
// $042C15: [Classic] Boxing - Player HP
// $042C17: [Classic] Boxing - Player Total HP
// $042C2C: Classic boxing position? 2 - left, 1 middle, 0 right
// $042C32: Classic [Boxing] Current Score Total
// $042CC4: Miss Counter (Donkey Kong Classic)
// $043330: Miss Count: Donkey Kong 3 Classic [8-bit]
// $0433C9: Miss Count: Donkey Kong 3 Modern [8-bit]
// $04341C: [Modern] Boxing - Position: 0=Left, 1=Middle, 2=Right
// $04342E: [Modern] Boxing - Enemy HP
// $04342F: [Modern] Boxing - Player HP
// $043450: [Modern] Boxing - Current Score
// $043452: [Modern] Boxing - Opponent: 0=Wiggler, 1=Boo, 2=Waluigi, 3=Wiggler, etc.
// $043E38: Rain Shower Modern Misses
// $043E5C: (Rain Shower) Current Score ones?
// $043E5E: (Rain Shower) Current ones Score (again?)
// $043FDC: Rain Shower Current Score
// $044138: Alternate possible score? DKJr tested.
//          DKJr. Modern Player Position
// $044153: Zelda: Hearts Remaining [8-bit]
// $0441F2: Octopus Held Value in Bag
// $044412: Animation Mario
// $044424: Animation Mario
// $04448E: Rope Position (Fire)
// $0480C0: Fire Classic Easy Hi Score [16-bit BCD]
// $0480C4: Fire Classic Hard Hi Score [16-bit BCD]
// $0480C8: Fire Modern Easy Hi Score [16-bit BCD]
// $0480CC: Fire Modern Hard Hi Score [16-bit BCD]
// $0480D4: Fire Classic Easy Stars [8-bit]
// $0480D5: Fire Classic Hard Stars [8-bit]
// $0480D6: Fire Modern Easy Stars [8-bit]
// $0480D7: Fire Modern Hard Stars [8-bit]

screen = byte(0x1314)
fire_c = 3
fire_m = 4
octopus_m = 5
octopus_c = 6
game_select = 7
title_screen = 8
game_options = 9
message = 0xa
rain_shower_c = 0xb
rain_shower_m = 0xc
chef_c = 0xd
chef_m = 0xe
donkey_kong_c = 0xf
donkey_kong_m = 0x10
mario_bros_c = 0x11
mario_bros_m = 0x12
donkey_kong_jr_c = 0x13
donkey_kong_jr_m = 0x14
boxing_c = 0x15
boxing_m = 0x16
fire_attack_c = 0x17
fire_attack_m = 0x18
cement_factory_c = 0x19
cement_factory_m = 0x1a
donkey_kong_3_c = 0x1b
donkey_kong_3_c_mp = 0x1c
donkey_kong_3_m = 0x1d
donkey_kong_3_m_mp = 0x1e
boxing_c_mp = 0x1f
boxing_m_mp = 0x20
manhole = 0x21
parachute = 0x22
zelda = 0x23
climber = 0x24
tropical_fish = 0x25
life_boat = 0x26
bombs_away = 0x27
safe_buster = 0x28
bomb_sweeper = 0x29
gallery_corner = 0x2a
museum = 0x2b
music_room = 0x2c
gw_history = 0x2d
message_board = 0x2e
present = 0x2f
credits = 0x30

difficulty = byte(0x1318)

score_fire_m = word(0x423d4)
score_fire_c = word(0x42394)
score_boxing_m = byte(0x43450)
score_boxing_c = byte(0x42c32)
score_rain_shower_m = word(0x43fdc)
score_rain_shower_c = word(0x423d0)
score_cement_factory_m = word(0x423a0)
score_cement_factory_c = score_cement_factory_m
score_donkey_kong_jr_m = score_cement_factory_m
score_donkey_kong_jr_c = score_cement_factory_m
score_donkey_kong_3_m = word(0x424f4)
score_donkey_kong_3_c = score_donkey_kong_3_m
score_chef_m = score_cement_factory_m
score_chef_c = word(0x423cc)
score_mario_bros_m = score_cement_factory_m
score_mario_bros_c = score_cement_factory_m
score_donkey_kong_m = word(0x4239c)
score_donkey_kong_c = word(0x423c8)
score_octopus_m = score_chef_c
score_octopus_c = score_donkey_kong_c
score_fire_attack_m = score_cement_factory_m
score_fire_attack_c = score_cement_factory_m
score_manhole = score_cement_factory_m
score_tropical_fish = score_cement_factory_m
score_bombs_away = score_cement_factory_m
score_parachute = score_donkey_kong_m
score_bomb_sweeper = word(0x42388)
score_climber = score_bomb_sweeper
score_safe_buster = score_cement_factory_m
score_life_boat = score_cement_factory_m
score_zelda = score_cement_factory_m

miss_fire_m = byte(0x42230)
miss_fire_c = byte(0x421f0)
health_boxing_m = byte(0x4342f)
health_boxing_c = byte(0x42c17)
miss_rain_shower_m = byte(0x43e38)
miss_rain_shower_c = byte(0x4222c)
miss_cement_factory_m = byte(0x421fc)
miss_cement_factory_c = miss_cement_factory_m
miss_donkey_kong_jr_m = miss_cement_factory_m
miss_donkey_kong_jr_c = miss_cement_factory_m
miss_donkey_kong_3_m = byte(0x433c9)
miss_donkey_kong_3_c = byte(0x43330)
miss_chef_m = miss_cement_factory_m
miss_chef_c = byte(0x42228)
miss_mario_bros_m = miss_cement_factory_m
miss_mario_bros_c = miss_cement_factory_m
lives_donkey_kong_m = byte(0x421f8)
miss_donkey_kong_c = byte(0x42cc4)
miss_octopus_m = miss_chef_c
miss_octopus_c = byte(0x42224)
miss_fire_attack_m = miss_cement_factory_m
miss_fire_attack_c = miss_cement_factory_m
miss_manhole = miss_cement_factory_m
miss_tropical_fish = miss_cement_factory_m
miss_bombs_away = miss_cement_factory_m
miss_parachute = lives_donkey_kong_m
lives_bomb_sweeper = byte(0x44111)
miss_climber = byte(0x421e4)
miss_safe_buster = miss_cement_factory_m
miss_life_boat = miss_cement_factory_m
health_zelda = byte(0x44152)

game_dict = {
    fire_m: "Fire Modern",
    fire_c: "Fire Classic",
    boxing_m: "Boxing Modern",
    boxing_c: "Boxing Classic",
    rain_shower_m: "Rain Shower Modern",
    rain_shower_c: "Rain Shower Classic",
    cement_factory_m: "Mario's Cement Factory Modern",
    cement_factory_c: "Mario's Cement Factory Classic",
    donkey_kong_jr_m: "Donkey Kong Jr. Modern",
    donkey_kong_jr_c: "Donkey Kong Jr. Classic",
    donkey_kong_3_m: "Donkey Kong 3 Modern",
    donkey_kong_3_c: "Donkey Kong 3 Classic",
    chef_m: "Chef Modern",
    chef_c: "Chef Classic",
    mario_bros_m: "Mario Bros. Modern",
    mario_bros_c: "Mario Bros. Classic",
    donkey_kong_m: "Donkey Kong Modern",
    donkey_kong_c: "Donkey Kong Classic",
    octopus_m: "Octopus Modern",
    octopus_c: "Octopus Classic",
    fire_attack_m: "Fire Attack Modern",
    fire_attack_c: "Fire Attack Classic",
    manhole: "Manhole",
    tropical_fish: "Tropical Fish",
    bombs_away: "Mario's Bombs Away",
    parachute: "Parachute",
    bomb_sweeper: "Bomb Sweeper",
    climber: "Climber",
    safe_buster: "Safe Buster",
    life_boat: "Life Boat",
    zelda: "Zelda"
}

difficulty_dict = {
    0: "Easy",
    1: "Hard",
    2: "Very Hard"
}

score_dict = {
    fire_m: score_fire_m,
    fire_c: score_fire_c,
    boxing_m: score_boxing_m,
    boxing_c: score_boxing_c,
    rain_shower_m: score_rain_shower_m,
    rain_shower_c: score_rain_shower_c,
    cement_factory_m: score_cement_factory_m,
    cement_factory_c: score_cement_factory_c,
    donkey_kong_jr_m: score_donkey_kong_jr_m,
    donkey_kong_jr_c: score_donkey_kong_jr_c,
    donkey_kong_3_m: score_donkey_kong_3_m,
    donkey_kong_3_c: score_donkey_kong_3_c,
    chef_m: score_chef_m,
    chef_c: score_chef_c,
    mario_bros_m: score_mario_bros_m,
    mario_bros_c: score_mario_bros_c,
    donkey_kong_m: score_donkey_kong_m,
    donkey_kong_c: score_donkey_kong_c,
    octopus_m: score_octopus_m,
    octopus_c: score_octopus_c,
    fire_attack_m: score_fire_attack_m,
    fire_attack_c: score_fire_attack_c,
    manhole: score_manhole,
    tropical_fish: score_tropical_fish,
    bombs_away: score_bombs_away,
    parachute: score_parachute,
    bomb_sweeper: score_bomb_sweeper,
    climber: score_climber,
    safe_buster: score_safe_buster,
    life_boat: score_life_boat,
    zelda: score_zelda
}

miss_dict = {
    fire_m: miss_fire_m,
    fire_c: miss_fire_c,
    boxing_m: health_boxing_m,
    boxing_c: health_boxing_c,
    rain_shower_m: miss_rain_shower_m,
    rain_shower_c: miss_rain_shower_c,
    cement_factory_m: miss_cement_factory_m,
    cement_factory_c: miss_cement_factory_c,
    donkey_kong_jr_m: miss_donkey_kong_jr_m,
    donkey_kong_jr_c: miss_donkey_kong_jr_c,
    donkey_kong_3_m: miss_donkey_kong_3_m,
    donkey_kong_3_c: miss_donkey_kong_3_c,
    chef_m: miss_chef_m,
    chef_c: miss_chef_c,
    mario_bros_m: miss_mario_bros_m,
    mario_bros_c: miss_mario_bros_c,
    donkey_kong_m: lives_donkey_kong_m,
    donkey_kong_c: miss_donkey_kong_c,
    octopus_m: miss_octopus_m,
    octopus_c: miss_octopus_c,
    fire_attack_m: miss_fire_attack_m,
    fire_attack_c: miss_fire_attack_c,
    manhole: miss_manhole,
    tropical_fish: miss_tropical_fish,
    bombs_away: miss_bombs_away,
    parachute: miss_parachute,
    bomb_sweeper: lives_bomb_sweeper,
    climber: miss_climber,
    safe_buster: miss_safe_buster,
    life_boat: miss_life_boat,
    zelda: health_zelda
}

dkc_lives_dict = {
    0: "2",
    1: "2",
    2: "1",
    3: "0"
}

bs_lives_dict = {
    0: "0",
    1: "1",
    2: "2",
    3: "2"
}

string_dict = {
    game_select: "Selecting a Game",
    title_screen: "Viewing the Title Screen",
    game_options: "Selecting Game Options",
    message: "Reading a Message",
    gallery_corner: "Visiting the Gallery Corner",
    museum: "Viewing works of art in the Museum",
    music_room: "Jamming in the Music Room",
    gw_history: "Studying G&W History",
    message_board: "Reading the Message Board",
    credits: "Viewing the Credits",
    present: "Chatting with Mario and Mr. Game & Watch",
    boxing_m_mp: "Playing Boxing Modern Multiplayer",
    boxing_c_mp: "Playing Boxing Classic Multiplayer",
    donkey_kong_3_m_mp: "Playing Donkey Kong 3 Modern Multiplayer",
    donkey_kong_3_c_mp: "Playing Donkey Kong 3 Classic Multiplayer"
}

// ------------
// Achievements
// ------------

achievement(
    title = "First Star", points = 5, type="progression",
    description = "Get 200 points in any game on any difficulty",
    id = 41294, badge = "42463", published = "2016-10-19 4:23:38 AM", modified = "2024-12-17 1:37:34 AM",
    trigger = ((byte(0x001314) == 4 && prev(word(0x0423D4)) < 200 && word(0x0423D4) >= 200) ||
               (byte(0x001314) == 3 && prev(word(0x042394)) < 200 && word(0x042394) >= 200) ||
               (byte(0x001314) == 22 && prev(byte(0x043450)) == 2 && byte(0x043450) == 3) ||
               (byte(0x001314) == 21 && prev(byte(0x042C32)) == 2 && byte(0x042C32) == 3) ||
               (byte(0x001314) == 12 && prev(word(0x043FDC)) < 200 && word(0x043FDC) >= 200) ||
               (byte(0x001314) == 11 && prev(word(0x0423D0)) < 200 && word(0x0423D0) >= 200) ||
               ((byte(0x001314) == 26 || byte(0x001314) == 25 || byte(0x001314) == 20 || byte(0x001314) == 19) &&
                prev(word(0x0423A0)) < 200 && word(0x0423A0) >= 200) ||
               ((byte(0x001314) == 29 || byte(0x001314) == 27) && prev(word(0x0424F4)) < 200 && word(0x0424F4) >= 200))
)

achievement(
    title = "Fire Hose", points = 10,
    description = "Get 1,000 points in Modern Fire on Easy",
    id = 41228, badge = "42259", published = "2016-10-19 12:12:52 AM", modified = "2024-12-16 12:57:46 AM",
    trigger = byte(0x001314) == 4 && byte(0x001318) == 0 && prev(word(0x0423D4)) < 1000 && word(0x0423D4) >= 1000
)

achievement(
    title = "Firefighter", points = 10,
    description = "Get 1,000 points in Modern Fire on Hard",
    id = 41229, badge = "42260", published = "2016-10-19 12:12:59 AM", modified = "2024-12-16 12:57:49 AM",
    trigger = byte(0x001314) == 4 && byte(0x001318) == 1 && prev(word(0x0423D4)) < 1000 && word(0x0423D4) >= 1000
)

achievement(
    title = "Fire Master", points = 25,
    description = "Get 1,000 points in Modern Fire on Very Hard",
    id = 41268, badge = "42437", published = "2016-10-19 12:15:17 AM", modified = "2024-12-16 1:23:34 AM",
    trigger = byte(0x001314) == 4 && byte(0x001318) == 2 && prev(word(0x0423D4)) < 1000 && word(0x0423D4) >= 1000
)

achievement(
    title = "Garden Hose", points = 10,
    description = "Get 1,000 points in Classic Fire on Easy",
    id = 41248, badge = "42298", published = "2016-10-19 12:14:00 AM", modified = "2024-12-16 12:58:27 AM",
    trigger = byte(0x001314) == 3 && byte(0x001318) == 0 && prev(word(0x042394)) < 1000 && word(0x042394) >= 1000
)

achievement(
    title = "Fireman", points = 10,
    description = "Get 1,000 points in Classic Fire on Hard",
    id = 41249, badge = "42299", published = "2016-10-19 12:14:03 AM", modified = "2024-12-16 12:58:32 AM",
    trigger = byte(0x001314) == 3 && byte(0x001318) == 1 && prev(word(0x042394)) < 1000 && word(0x042394) >= 1000
)

achievement(
    title = "Heavyweight Champ", points = 10,
    description = "Get 15 KOs in Modern Boxing.",
    id = 41230, badge = "42261", published = "2016-10-19 12:13:02 AM", modified = "2024-12-17 2:28:27 AM",
    trigger = byte(0x001314) == 22 && prev(byte(0x043450)) == 14 && byte(0x043450) == 15
)

achievement(
    title = "Lightweight Champ", points = 5,
    description = "Get 15 KO's in Classic Boxing",
    id = 41250, badge = "42300", published = "2016-10-19 12:14:07 AM", modified = "2024-12-16 1:05:20 AM",
    trigger = byte(0x001314) == 21 && prev(byte(0x042C32)) == 14 && byte(0x042C32) == 15
)

achievement(
    title = "Washer", points = 10,
    description = "Get 1,000 points in Modern Rain Shower on Easy",
    id = 41231, badge = "42262", published = "2016-10-19 12:13:05 AM", modified = "2024-12-15 11:31:36 PM",
    trigger = byte(0x001314) == 12 && byte(0x001318) == 0 && prev(word(0x043FDC)) < 1000 && word(0x043FDC) >= 1000
)

achievement(
    title = "Dryer", points = 10,
    description = "Get 1,000 points in Modern Rain Shower on Hard",
    id = 41232, badge = "42263", published = "2016-10-19 12:13:08 AM", modified = "2024-12-16 1:13:32 AM",
    trigger = byte(0x001314) == 12 && byte(0x001318) == 1 && prev(word(0x043FDC)) < 1000 && word(0x043FDC) >= 1000
)

achievement(
    title = "Rain Shower Master", points = 25,
    description = "Get 1,000 points in Modern Rain Shower on Very Hard",
    id = 41269, badge = "42440", published = "2016-10-19 12:15:20 AM", modified = "2024-12-16 1:23:54 AM",
    trigger = byte(0x001314) == 12 && byte(0x001318) == 2 && prev(word(0x043FDC)) < 1000 && word(0x043FDC) >= 1000
)

achievement(
    title = "Washboard", points = 10,
    description = "Get 1,000 points in Classic Rain Shower on Easy",
    id = 41251, badge = "42301", published = "2016-10-19 12:14:10 AM", modified = "2024-12-16 1:13:56 AM",
    trigger = byte(0x001314) == 11 && byte(0x001318) == 0 && prev(word(0x0423D0)) < 1000 && word(0x0423D0) >= 1000
)

achievement(
    title = "Clothesline", points = 10,
    description = "Get 1,000 points in Classic Rain Shower on Hard",
    id = 41252, badge = "42302", published = "2016-10-19 12:14:14 AM", modified = "2024-12-16 1:14:00 AM",
    trigger = byte(0x001314) == 11 && byte(0x001318) == 1 && prev(word(0x0423D0)) < 1000 && word(0x0423D0) >= 1000
)

achievement(
    title = "Dough Mixer", points = 10,
    description = "Get 1,000 points in Modern Mario's Cement Factory on Easy",
    id = 41233, badge = "42268", published = "2016-10-19 12:13:12 AM", modified = "2024-12-16 1:21:01 AM",
    trigger = byte(0x001314) == 26 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "CEO", points = 10,
    description = "Get 1,000 points in Modern Mario's Cement Factory on Hard",
    id = 41234, badge = "42269", published = "2016-10-19 12:13:15 AM", modified = "2024-12-16 1:21:04 AM",
    trigger = byte(0x001314) == 26 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Mario's Cement Factory Master", points = 25,
    description = "Get 1,000 points in Modern Mario's Cement Factory on Very Hard",
    id = 41270, badge = "42441", published = "2016-10-19 12:15:24 AM", modified = "2024-12-16 1:24:10 AM",
    trigger = byte(0x001314) == 26 && byte(0x001318) == 2 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Cement Mixer", points = 10,
    description = "Get 1,000 points in Classic Mario's Cement Factory on Easy",
    id = 41253, badge = "42303", published = "2016-10-19 12:14:17 AM", modified = "2024-12-16 1:22:51 AM",
    trigger = byte(0x001314) == 25 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Factory Head", points = 10,
    description = "Get 1,000 points in Classic Mario's Cement Factory on Hard",
    id = 41254, badge = "42304", published = "2016-10-19 12:14:20 AM", modified = "2024-12-16 1:22:54 AM",
    trigger = byte(0x001314) == 25 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Deadbolt", points = 10,
    description = "Get 1,000 points in Modern Donkey Kong Jr. on Easy.",
    id = 41235, badge = "42270", published = "2016-10-19 12:13:18 AM", modified = "2024-12-16 1:25:18 AM",
    trigger = byte(0x001314) == 20 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Keycard", points = 10,
    description = "Get 1,000 points in Modern Donkey Kong Jr. on Hard.",
    id = 41236, badge = "42271", published = "2016-10-19 12:13:21 AM", modified = "2024-12-16 1:25:22 AM",
    trigger = byte(0x001314) == 20 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "DK Jr. Master", points = 25,
    description = "Get 1,000 points in Modern Donkey Kong Jr. on Very Hard",
    id = 41271, badge = "42442", published = "2016-10-19 12:15:27 AM", modified = "2024-12-16 1:27:35 AM",
    trigger = byte(0x001314) == 20 && byte(0x001318) == 2 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Latch", points = 10,
    description = "Get 1,000 points in Classic Donkey Kong Jr. on Easy",
    id = 41255, badge = "42305", published = "2016-10-19 12:14:24 AM", modified = "2024-12-16 1:26:48 AM",
    trigger = byte(0x001314) == 19 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Pin and Tumbler", points = 10,
    description = "Get 1,000 points in Classic Donkey Kong Jr. on Hard",
    id = 41256, badge = "42306", published = "2016-10-19 12:14:27 AM", modified = "2024-12-16 1:26:51 AM",
    trigger = byte(0x001314) == 19 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Boo Bubbler", points = 10,
    description = "Get 1,000 points in Modern Donkey Kong 3.",
    id = 41237, badge = "42272", published = "2016-10-19 12:13:24 AM", modified = "2024-12-16 1:32:59 AM",
    trigger = byte(0x001314) == 29 && prev(word(0x0424F4)) < 1000 && word(0x0424F4) >= 1000
)

achievement(
    title = "Bug Buster", points = 10,
    description = "Get 1,000 points in Classic Donkey Kong 3.",
    id = 41257, badge = "42307", published = "2016-10-19 12:14:31 AM", modified = "2024-12-16 1:33:26 AM",
    trigger = byte(0x001314) == 27 && prev(word(0x0424F4)) < 1000 && word(0x0424F4) >= 1000
)

achievement(
    title = "Fried Eggs", points = 10,
    description = "Get 1,000 points in Modern Chef on Easy",
    id = 41238, badge = "42273", published = "2016-10-19 12:13:28 AM", modified = "2024-12-16 1:39:55 AM",
    trigger = byte(0x001314) == 14 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Grilled Lobster", points = 10,
    description = "Get 1,000 points in Modern Chef on Hard",
    id = 41239, badge = "42274", published = "2016-10-19 12:13:32 AM", modified = "2024-12-16 1:39:59 AM",
    trigger = byte(0x001314) == 14 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Chef Master", points = 25,
    description = "Get 1,000 points in Modern Chef on Very Hard",
    id = 41272, badge = "42443", published = "2016-10-19 12:15:30 AM", modified = "2024-12-16 1:42:00 AM",
    trigger = byte(0x001314) == 14 && byte(0x001318) == 2 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Bacon", points = 10,
    description = "Get 1,000 points in Classic Chef on Easy",
    id = 41258, badge = "42310", published = "2016-10-19 12:14:34 AM", modified = "2024-12-16 1:41:30 AM",
    trigger = byte(0x001314) == 13 && byte(0x001318) == 0 && prev(word(0x0423CC)) < 1000 && word(0x0423CC) >= 1000
)

achievement(
    title = "Chicken", points = 10,
    description = "Get 1,000 points in Classic Chef on Hard",
    id = 41259, badge = "42312", published = "2016-10-19 12:14:37 AM", modified = "2024-12-16 1:41:34 AM",
    trigger = byte(0x001314) == 13 && byte(0x001318) == 1 && prev(word(0x0423CC)) < 1000 && word(0x0423CC) >= 1000
)

achievement(
    title = "Red Shirt", points = 10,
    description = "Get 1,000 points in Mario Bros. Modern on Easy",
    id = 41240, badge = "42276", published = "2016-10-19 12:13:35 AM", modified = "2024-12-16 1:46:22 AM",
    trigger = byte(0x001314) == 18 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Blue Overalls", points = 10,
    description = "Get 1,000 points in Modern Mario Bros. on Hard",
    id = 41241, badge = "42277", published = "2016-10-19 12:13:38 AM", modified = "2024-12-16 1:46:27 AM",
    trigger = byte(0x001314) == 18 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Mario Bros. Master", points = 25,
    description = "Get 1,000 points in Modern Mario Bros. on Very Hard",
    id = 41273, badge = "42444", published = "2016-10-19 12:15:33 AM", modified = "2024-12-16 1:48:33 AM",
    trigger = byte(0x001314) == 18 && byte(0x001318) == 2 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Blue Shirt", points = 10,
    description = "Get 1,000 points in Classic Mario Bros. on Easy",
    id = 41260, badge = "42324", published = "2016-10-19 12:14:40 AM", modified = "2024-12-16 1:48:05 AM",
    trigger = byte(0x001314) == 17 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Red Overalls", points = 10,
    description = "Get 1,000 points in Classic Mario Bros. on Hard",
    id = 41261, badge = "42325", published = "2016-10-19 12:14:43 AM", modified = "2024-12-16 1:48:09 AM",
    trigger = byte(0x001314) == 17 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Koopa Stomper", points = 10,
    description = "Get 1,000 points in Modern Donkey Kong on Easy",
    id = 41242, badge = "42278", published = "2016-10-19 12:13:41 AM", modified = "2024-12-16 2:16:25 AM",
    trigger = byte(0x001314) == 16 && byte(0x001318) == 0 && prev(word(0x04239C)) < 1000 && word(0x04239C) >= 1000
)

achievement(
    title = "Mario vs. Cranky Kong", points = 10,
    description = "Get 1,000 points in Modern Donkey Kong on Hard",
    id = 41243, badge = "42279", published = "2016-10-19 12:13:44 AM", modified = "2024-12-16 2:16:30 AM",
    trigger = byte(0x001314) == 16 && byte(0x001318) == 1 && prev(word(0x04239C)) < 1000 && word(0x04239C) >= 1000
)

achievement(
    title = "DK Master", points = 25,
    description = "Get 1,000 points in Modern Donkey Kong on Very Hard",
    id = 41274, badge = "42445", published = "2016-10-19 12:15:36 AM", modified = "2024-12-16 2:18:55 AM",
    trigger = byte(0x001314) == 16 && byte(0x001318) == 2 && prev(word(0x04239C)) < 1000 && word(0x04239C) >= 1000
)

achievement(
    title = "Barrel Hopper", points = 10,
    description = "Get 1,000 points in Classic Donkey Kong on Easy",
    id = 41262, badge = "42326", published = "2016-10-19 12:14:46 AM", modified = "2024-12-16 2:18:18 AM",
    trigger = byte(0x001314) == 15 && byte(0x001318) == 0 && prev(word(0x0423C8)) < 1000 && word(0x0423C8) >= 1000
)

achievement(
    title = "Mario vs. Donkey Kong", points = 10,
    description = "Get 1,000 points in Classic Donkey Kong on Hard",
    id = 41263, badge = "42327", published = "2016-10-19 12:14:49 AM", modified = "2024-12-16 2:18:22 AM",
    trigger = byte(0x001314) == 15 && byte(0x001318) == 1 && prev(word(0x0423C8)) < 1000 && word(0x0423C8) >= 1000
)

achievement(
    title = "Wetsuit", points = 10,
    description = "Get 1,000 points in Modern Octopus on Easy",
    id = 41244, badge = "42280", published = "2016-10-19 12:13:47 AM", modified = "2024-12-16 2:19:45 AM",
    trigger = byte(0x001314) == 5 && byte(0x001318) == 0 && prev(word(0x0423CC)) < 1000 && word(0x0423CC) >= 1000
)

achievement(
    title = "Submarine", points = 10,
    description = "Get 1,000 points in Modern Octopus on Hard",
    id = 41245, badge = "42281", published = "2016-10-19 12:13:50 AM", modified = "2024-12-16 2:19:49 AM",
    trigger = byte(0x001314) == 5 && byte(0x001318) == 1 && prev(word(0x0423CC)) < 1000 && word(0x0423CC) >= 1000
)

achievement(
    title = "Octopus Master", points = 25,
    description = "Get 1,000 points in Modern Octopus on Very Hard",
    id = 41275, badge = "42446", published = "2016-10-19 12:15:39 AM", modified = "2024-12-15 11:27:35 PM",
    trigger = byte(0x001314) == 5 && byte(0x001318) == 2 && prev(word(0x0423CC)) < 1000 && word(0x0423CC) >= 1000
)

achievement(
    title = "Atmospheric Diving Suit", points = 10,
    description = "Get 1,000 points in Classic Octopus on Easy",
    id = 41264, badge = "42328", published = "2016-10-19 12:14:52 AM", modified = "2024-12-16 2:21:34 AM",
    trigger = byte(0x001314) == 6 && byte(0x001318) == 0 && prev(word(0x0423C8)) < 1000 && word(0x0423C8) >= 1000
)

achievement(
    title = "U-Boat", points = 10,
    description = "Get 1,000 points in Classic Octopus on Hard",
    id = 41265, badge = "42329", published = "2016-10-19 12:14:55 AM", modified = "2024-12-15 11:29:48 PM",
    trigger = byte(0x001314) == 6 && byte(0x001318) == 1 && prev(word(0x0423C8)) < 1000 && word(0x0423C8) >= 1000
)

achievement(
    title = "Slash-and-Burn", points = 10,
    description = "Get 1,000 points in Modern Fire Attack on Easy",
    id = 41246, badge = "42282", published = "2016-10-19 12:13:53 AM", modified = "2024-12-16 2:41:41 AM",
    trigger = byte(0x001314) == 24 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Wario's Woods", points = 10,
    description = "Get 1,000 points in Modern Fire Attack on Hard",
    id = 41247, badge = "42283", published = "2016-10-19 12:13:56 AM", modified = "2024-12-15 11:23:06 PM",
    trigger = byte(0x001314) == 24 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Fire Attack Master", points = 25,
    description = "Get 1,000 points in Modern Fire Attack on Very Hard",
    id = 41276, badge = "42447", published = "2016-10-19 12:15:42 AM", modified = "2024-12-15 11:23:57 PM",
    trigger = byte(0x001314) == 24 && byte(0x001318) == 2 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Fort Fire", points = 10,
    description = "Get 1,000 points in Classic Fire Attack on Easy",
    id = 41266, badge = "42330", published = "2016-10-19 12:15:05 AM", modified = "2024-12-16 2:43:29 AM",
    trigger = byte(0x001314) == 23 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Bandit Bonker", points = 10,
    description = "Get 1,000 points in Classic Fire Attack on Hard",
    id = 41267, badge = "42331", published = "2016-10-19 12:15:13 AM", modified = "2024-12-16 2:43:32 AM",
    trigger = byte(0x001314) == 23 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Drain", points = 10,
    description = "Get 1,000 points in Manhole on Easy",
    id = 41277, badge = "42255", published = "2016-10-19 12:15:45 AM", modified = "2024-12-16 8:46:11 PM",
    trigger = byte(0x001314) == 33 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Gutter", points = 10,
    description = "Get 1,000 points in Manhole on Hard",
    id = 41278, badge = "42332", published = "2016-10-19 12:15:48 AM", modified = "2024-12-16 8:46:14 PM",
    trigger = byte(0x001314) == 33 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Goldfish", points = 10,
    description = "Get 1,000 points in Tropical Fish on Easy",
    id = 41279, badge = "42448", published = "2016-10-19 12:15:53 AM", modified = "2024-12-16 8:49:34 PM",
    trigger = byte(0x001314) == 37 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Koi", points = 10,
    description = "Get 1,000 points in Tropical Fish on Hard",
    id = 41280, badge = "42449", published = "2016-10-19 12:15:56 AM", modified = "2024-12-16 8:49:38 PM",
    trigger = byte(0x001314) == 37 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Prepare for the Boom", points = 10,
    description = "Get 1,000 points in Mario's Bombs Away on Easy",
    id = 41281, badge = "42450", published = "2016-10-19 12:16:00 AM", modified = "2024-12-16 8:59:58 PM",
    trigger = byte(0x001314) == 39 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "BAM", points = 10,
    description = "Get 1,000 points in Mario's Bombs Away on Hard",
    id = 41282, badge = "42451", published = "2016-10-19 12:16:04 AM", modified = "2024-12-16 9:00:01 PM",
    trigger = byte(0x001314) == 39 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Kite", points = 10,
    description = "Get 1,000 points in Parachute on Easy",
    id = 41283, badge = "42452", published = "2016-10-19 12:16:08 AM", modified = "2024-12-16 9:04:22 PM",
    trigger = byte(0x001314) == 34 && byte(0x001318) == 0 && prev(word(0x04239C)) < 1000 && word(0x04239C) >= 1000
)

achievement(
    title = "Glider", points = 10,
    description = "Get 1,000 points in Parachute on Hard",
    id = 41284, badge = "42453", published = "2016-10-19 12:16:11 AM", modified = "2024-12-16 9:04:25 PM",
    trigger = byte(0x001314) == 34 && byte(0x001318) == 1 && prev(word(0x04239C)) < 1000 && word(0x04239C) >= 1000
)

achievement(
    title = "Spilt Lego", points = 10,
    description = "Get 1,000 points in Bomb Sweeper on Easy",
    id = 41285, badge = "42454", published = "2016-10-19 12:16:15 AM", modified = "2024-12-16 9:09:44 PM",
    trigger = byte(0x001314) == 41 && byte(0x001318) == 0 && prev(word(0x042388)) < 1000 && word(0x042388) >= 1000
)

achievement(
    title = "Minefield", points = 10,
    description = "Get 1,000 points in Bomb Sweeper on Hard",
    id = 41286, badge = "42455", published = "2016-10-19 12:16:18 AM", modified = "2024-12-16 9:09:48 PM",
    trigger = byte(0x001314) == 41 && byte(0x001318) == 1 && prev(word(0x042388)) < 1000 && word(0x042388) >= 1000
)

achievement(
    title = "Hold the Ice", points = 10,
    description = "Get 1,000 points in Climber",
    id = 41287, badge = "42456", published = "2016-10-19 12:16:21 AM", modified = "2024-12-16 9:14:45 PM",
    trigger = byte(0x001314) == 36 && prev(word(0x042388)) < 1000 && word(0x042388) >= 1000
)

achievement(
    title = "Bobby Pin", points = 10,
    description = "Get 1,000 points in Safe Buster on Easy",
    id = 41288, badge = "42457", published = "2016-10-19 12:16:24 AM", modified = "2024-12-16 9:18:06 PM",
    trigger = byte(0x001314) == 40 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Stethoscope", points = 10,
    description = "Get 1,000 points in Safe Buster on Hard",
    id = 41289, badge = "42458", published = "2016-10-19 12:16:27 AM", modified = "2024-12-16 9:18:09 PM",
    trigger = byte(0x001314) == 40 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Life Ring", points = 10,
    description = "Get 1,000 points in Life Boat on Easy",
    id = 41290, badge = "42459", published = "2016-10-19 12:16:30 AM", modified = "2024-12-16 9:23:47 PM",
    trigger = byte(0x001314) == 38 && byte(0x001318) == 0 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Dinghy", points = 10,
    description = "Get 1,000 points in Life Boat on Hard",
    id = 41291, badge = "42460", published = "2016-10-19 12:16:33 AM", modified = "2024-12-16 9:23:50 PM",
    trigger = byte(0x001314) == 38 && byte(0x001318) == 1 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Legendary in its Own Right", points = 10,
    description = "Get 1,000 points in Zelda",
    id = 41292, badge = "42461", published = "2016-10-19 12:16:36 AM", modified = "2024-12-16 9:25:12 PM",
    trigger = byte(0x001314) == 35 && prev(word(0x0423A0)) < 1000 && word(0x0423A0) >= 1000
)

achievement(
    title = "Credits", points = 5, type="win_condition",
    description = "Earn 170 stars and view the credits",
    id = 41293, badge = "42462", published = "2016-10-19 12:16:39 AM", modified = "2024-12-17 1:00:28 AM",
    trigger = prev(byte(0x001314)) != 47 && prev(byte(0x001314)) != 48 && byte(0x001314) == 48
)

// ------------
// Leaderboards
// ------------

leaderboard(
    id = 1888, title = "Fire Modern Easy",
    description = "Score as high as you can in Fire Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 4 && byte(0x001318) == 0 && word(0x0423D4) != 0 && prev(byte(0x042230)) == 2 &&
             byte(0x042230) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423D4),
    format = "VALUE"
)

leaderboard(
    id = 1889, title = "Fire Modern Hard",
    description = "Score as high as you can in Fire Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 4 && byte(0x001318) == 1 && word(0x0423D4) != 0 && prev(byte(0x042230)) == 2 &&
             byte(0x042230) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423D4),
    format = "VALUE"
)

leaderboard(
    id = 1890, title = "Fire Modern Very Hard",
    description = "Score as high as you can in Fire Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 4 && byte(0x001318) == 2 && word(0x0423D4) != 0 && prev(byte(0x042230)) == 2 &&
             byte(0x042230) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423D4),
    format = "VALUE"
)

leaderboard(
    id = 1886, title = "Fire Classic Easy",
    description = "Score as high as you can in Fire Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 3 && byte(0x001318) == 0 && word(0x042394) != 0 && prev(byte(0x0421F0)) == 2 &&
             byte(0x0421F0) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x042394),
    format = "VALUE"
)

leaderboard(
    id = 1887, title = "Fire Classic Hard",
    description = "Score as high as you can in Fire Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 3 && byte(0x001318) == 1 && word(0x042394) != 0 && prev(byte(0x0421F0)) == 2 &&
             byte(0x0421F0) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x042394),
    format = "VALUE"
)

leaderboard(
    id = 1893, title = "Boxing Modern",
    description = "Score as many KOs as you can in Boxing Modern. Submits at Game Over",
    start  = byte(0x001314) == 22 && byte(0x043450) != 0 && byte(0x04341C) == 2 && prev(byte(0x04342F)) != 0 &&
             byte(0x04342F) == 0,
    cancel = always_false(),
    submit = always_true(),
    value = measured(byte(0x043450)),
    format = "VALUE"
)

leaderboard(
    id = 1894, title = "Boxing Classic",
    description = "Score as many KOs as you can in Boxing Classic. Submits at Game Over",
    start  = byte(0x001314) == 21 && byte(0x042C32) != 0 && byte(0x042C15) == 0 && byte(0x042C17) == 0 &&
             prev(byte(0x042027)) < 40 && byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = measured(byte(0x042C32)),
    format = "VALUE"
)

leaderboard(
    id = 1897, title = "Rain Shower Modern Easy",
    description = "Score as high as you can in Rain Shower Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 12 && byte(0x001318) == 0 && word(0x043FDC) != 0 && prev(byte(0x043E38)) == 2 &&
             byte(0x043E38) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x043FDC),
    format = "VALUE"
)

leaderboard(
    id = 1898, title = "Rain Shower Modern Hard",
    description = "Score as high as you can in Rain Shower Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 12 && byte(0x001318) == 1 && word(0x043FDC) != 0 && prev(byte(0x043E38)) == 2 &&
             byte(0x043E38) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x043FDC),
    format = "VALUE"
)

leaderboard(
    id = 1899, title = "Rain Shower Modern Very Hard",
    description = "Score as high as you can in Rain Shower Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 12 && byte(0x001318) == 2 && word(0x043FDC) != 0 && prev(byte(0x043E38)) == 2 &&
             byte(0x043E38) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x043FDC),
    format = "VALUE"
)

leaderboard(
    id = 1895, title = "Rain Shower Classic Easy",
    description = "Score as high as you can in Rain Shower Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 11 && byte(0x001318) == 0 && word(0x0423D0) != 0 && prev(byte(0x04222C)) == 2 &&
             byte(0x04222C) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423D0),
    format = "VALUE"
)

leaderboard(
    id = 1896, title = "Rain Shower Classic Hard",
    description = "Score as high as you can in Rain Shower Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 11 && byte(0x001318) == 1 && word(0x0423D0) != 0 && prev(byte(0x04222C)) == 2 &&
             byte(0x04222C) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423D0),
    format = "VALUE"
)

leaderboard(
    id = 1902, title = "Cement Factory Modern Easy",
    description = "Score as high as you can in Cement Factory Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 26 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1903, title = "Cement Factory Modern Hard",
    description = "Score as high as you can in Cement Factory Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 26 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1904, title = "Cement Factory Modern Very Hard",
    description = "Score as high as you can in Cement Factory Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 26 && byte(0x001318) == 2 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1900, title = "Cement Factory Classic Easy",
    description = "Score as high as you can in Cement Factory Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 25 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1901, title = "Cement Factory Classic Hard",
    description = "Score as high as you can in Cement Factory Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 25 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1907, title = "Donkey Kong Jr. Modern Easy",
    description = "Score as high as you can in Donkey Kong Jr. Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 20 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1908, title = "Donkey Kong Jr. Modern Hard",
    description = "Score as high as you can in Donkey Kong Jr. Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 20 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1909, title = "Donkey Kong Jr. Modern Very Hard",
    description = "Score as high as you can in Donkey Kong Jr. Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 20 && byte(0x001318) == 2 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1905, title = "Donkey Kong Jr. Classic Easy",
    description = "Score as high as you can in Donkey Kong Jr. Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 19 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1906, title = "Donkey Kong Jr. Classic Hard",
    description = "Score as high as you can in Donkey Kong Jr. Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 19 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122927, title = "Donkey Kong 3 Modern",
    description = "Score as high as you can in Donkey Kong 3 Modern. Submits at Game Over",
    start  = byte(0x001314) == 29 && word(0x0424F4) != 0 && prev(byte(0x0433C9)) == 2 && byte(0x0433C9) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0424F4)),
    format = "VALUE"
)

leaderboard(
    id = 122928, title = "Donkey Kong 3 Classic",
    description = "Score as high as you can in Donkey Kong 3 Classic. Submits at Game Over",
    start  = byte(0x001314) == 27 && word(0x0424F4) != 0 && prev(byte(0x043330)) == 2 && byte(0x043330) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0424F4)),
    format = "VALUE"
)

leaderboard(
    id = 1914, title = "Chef Modern Easy",
    description = "Score as high as you can in Chef Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 14 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1915, title = "Chef Modern Hard",
    description = "Score as high as you can in Chef Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 14 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1916, title = "Chef Modern Very Hard",
    description = "Score as high as you can in Chef Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 14 && byte(0x001318) == 2 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1912, title = "Chef Classic Easy",
    description = "Score as high as you can in Chef Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 13 && byte(0x001318) == 0 && word(0x0423CC) != 0 && prev(byte(0x042228)) == 2 &&
             byte(0x042228) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423CC),
    format = "VALUE"
)

leaderboard(
    id = 1913, title = "Chef Classic Hard",
    description = "Score as high as you can in Chef Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 13 && byte(0x001318) == 1 && word(0x0423CC) != 0 && prev(byte(0x042228)) == 2 &&
             byte(0x042228) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423CC),
    format = "VALUE"
)

leaderboard(
    id = 1919, title = "Mario Bros. Modern Easy",
    description = "Score as high as you can in Mario Bros. Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 18 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1920, title = "Mario Bros. Modern Hard",
    description = "Score as high as you can in Mario Bros. Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 18 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1921, title = "Mario Bros. Modern Very Hard",
    description = "Score as high as you can in Mario Bros. Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 18 && byte(0x001318) == 2 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1917, title = "Mario Bros. Classic Easy",
    description = "Score as high as you can in Mario Bros. Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 17 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1918, title = "Mario Bros. Classic Hard",
    description = "Score as high as you can in Mario Bros. Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 17 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1925, title = "Donkey Kong Modern Easy",
    description = "Score as high as you can in Donkey Kong Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 16 && byte(0x001318) == 0 && word(0x04239C) != 0 && prev(byte(0x042027)) < 40 &&
             byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x04239C),
    format = "VALUE"
)

leaderboard(
    id = 1926, title = "Donkey Kong Modern Hard",
    description = "Score as high as you can in Donkey Kong Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 16 && byte(0x001318) == 1 && word(0x04239C) != 0 && prev(byte(0x042027)) < 40 &&
             byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x04239C),
    format = "VALUE"
)

leaderboard(
    id = 1927, title = "Donkey Kong Modern Very Hard",
    description = "Score as high as you can in Donkey Kong Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 16 && byte(0x001318) == 2 && word(0x04239C) != 0 && prev(byte(0x042027)) < 40 &&
             byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x04239C),
    format = "VALUE"
)

leaderboard(
    id = 1922, title = "Donkey Kong Classic Easy",
    description = "Score as high as you can in Donkey Kong Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 15 && byte(0x001318) == 0 && word(0x0423C8) != 0 && byte(0x042CC4) == 3 &&
             prev(byte(0x042027)) < 40 && byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423C8),
    format = "VALUE"
)

leaderboard(
    id = 1923, title = "Donkey Kong Classic Hard",
    description = "Score as high as you can in Donkey Kong Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 15 && byte(0x001318) == 1 && word(0x0423C8) != 0 && byte(0x042CC4) == 3 &&
             prev(byte(0x042027)) < 40 && byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423C8),
    format = "VALUE"
)

leaderboard(
    id = 1930, title = "Octopus Modern Easy",
    description = "Score as high as you can in Octopus Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 5 && byte(0x001318) == 0 && word(0x0423CC) != 0 && prev(byte(0x042228)) == 2 &&
             byte(0x042228) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423CC),
    format = "VALUE"
)

leaderboard(
    id = 1931, title = "Octopus Modern Hard",
    description = "Score as high as you can in Octopus Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 5 && byte(0x001318) == 1 && word(0x0423CC) != 0 && prev(byte(0x042228)) == 2 &&
             byte(0x042228) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423CC),
    format = "VALUE"
)

leaderboard(
    id = 1932, title = "Octopus Modern Very Hard",
    description = "Score as high as you can in Octopus Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 5 && byte(0x001318) == 2 && word(0x0423CC) != 0 && prev(byte(0x042228)) == 2 &&
             byte(0x042228) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423CC),
    format = "VALUE"
)

leaderboard(
    id = 1928, title = "Octopus Classic Easy",
    description = "Score as high as you can in Octopus Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 6 && byte(0x001318) == 0 && word(0x0423C8) != 0 && prev(byte(0x042224)) == 2 &&
             byte(0x042224) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423C8),
    format = "VALUE"
)

leaderboard(
    id = 1929, title = "Octopus Classic Hard",
    description = "Score as high as you can in Octopus Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 6 && byte(0x001318) == 1 && word(0x0423C8) != 0 && prev(byte(0x042224)) == 2 &&
             byte(0x042224) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423C8),
    format = "VALUE"
)

leaderboard(
    id = 1935, title = "Fire Attack Modern Easy",
    description = "Score as high as you can in Fire Attack Modern Easy. Submits at Game Over",
    start  = byte(0x001314) == 24 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1936, title = "Fire Attack Modern Hard",
    description = "Score as high as you can in Fire Attack Modern Hard. Submits at Game Over",
    start  = byte(0x001314) == 24 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1937, title = "Fire Attack Modern Very Hard",
    description = "Score as high as you can in Fire Attack Modern Very Hard. Submits at Game Over",
    start  = byte(0x001314) == 24 && byte(0x001318) == 2 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1933, title = "Fire Attack Classic Easy",
    description = "Score as high as you can in Fire Attack Classic Easy. Submits at Game Over",
    start  = byte(0x001314) == 23 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1934, title = "Fire Attack Classic Hard",
    description = "Score as high as you can in Fire Attack Classic Hard. Submits at Game Over",
    start  = byte(0x001314) == 23 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1938, title = "Manhole Easy",
    description = "Score as high as you can in Manhole Easy. Submits at Game Over",
    start  = byte(0x001314) == 33 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 1939, title = "Manhole Hard",
    description = "Score as high as you can in Manhole Hard. Submits at Game Over",
    start  = byte(0x001314) == 33 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122929, title = "Tropical Fish Easy",
    description = "Score as high as you can in Tropical Fish Easy. Submits at Game Over",
    start  = byte(0x001314) == 37 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122930, title = "Tropical Fish Hard",
    description = "Score as high as you can in Tropical Fish Hard. Submits at Game Over",
    start  = byte(0x001314) == 37 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122931, title = "Mario's Bombs Away Easy",
    description = "Score as high as you can in Mario's Bombs Away Easy. Submits at Game Over",
    start  = byte(0x001314) == 39 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122932, title = "Mario's Bombs Away Hard",
    description = "Score as high as you can in Mario's Bombs Away Hard. Submits at Game Over",
    start  = byte(0x001314) == 39 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = word(0x0423A0),
    format = "VALUE"
)

leaderboard(
    id = 122933, title = "Parachute Easy",
    description = "Score as high as you can in Parachute Easy. Submits at Game Over",
    start  = byte(0x001314) == 34 && byte(0x001318) == 0 && word(0x04239C) != 0 && prev(byte(0x0421F8)) == 2 &&
             byte(0x0421F8) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x04239C)),
    format = "VALUE"
)

leaderboard(
    id = 122934, title = "Parachute Hard",
    description = "Score as high as you can in Parachute Hard. Submits at Game Over",
    start  = byte(0x001314) == 34 && byte(0x001318) == 1 && word(0x04239C) != 0 && prev(byte(0x0421F8)) == 2 &&
             byte(0x0421F8) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x04239C)),
    format = "VALUE"
)

leaderboard(
    id = 122935, title = "Bomb Sweeper Easy",
    description = "Score as high as you can in Bomb Sweeper Easy. Submits at Game Over",
    start  = byte(0x001314) == 41 && byte(0x001318) == 0 && word(0x042388) != 0 && prev(byte(0x042027)) < 40 &&
             byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x042388)),
    format = "VALUE"
)

leaderboard(
    id = 122936, title = "Bomb Sweeper Hard",
    description = "Score as high as you can in Bomb Sweeper Hard. Submits at Game Over",
    start  = byte(0x001314) == 41 && byte(0x001318) == 1 && word(0x042388) != 0 && prev(byte(0x042027)) < 40 &&
             byte(0x042027) == 40,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x042388)),
    format = "VALUE"
)

leaderboard(
    id = 122937, title = "Climber",
    description = "Score as high as you can in Climber. Submits at Game Over",
    start  = byte(0x001314) == 36 && word(0x042388) != 0 && prev(byte(0x0421E4)) == 2 && byte(0x0421E4) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x042388)),
    format = "VALUE"
)

leaderboard(
    id = 122938, title = "Safe Buster Easy",
    description = "Score as high as you can in Safe Buster Easy. Submits at Game Over",
    start  = byte(0x001314) == 40 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0423A0)),
    format = "VALUE"
)

leaderboard(
    id = 122939, title = "Safe Buster Hard",
    description = "Score as high as you can in Safe Buster Hard. Submits at Game Over",
    start  = byte(0x001314) == 40 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0423A0)),
    format = "VALUE"
)

leaderboard(
    id = 122940, title = "Life Boat Easy",
    description = "Score as high as you can in Life Boat Easy. Submits at Game Over",
    start  = byte(0x001314) == 38 && byte(0x001318) == 0 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0423A0)),
    format = "VALUE"
)

leaderboard(
    id = 122941, title = "Life Boat Hard",
    description = "Score as high as you can in Life Boat Hard. Submits at Game Over",
    start  = byte(0x001314) == 38 && byte(0x001318) == 1 && word(0x0423A0) != 0 && prev(byte(0x0421FC)) == 2 &&
             byte(0x0421FC) == 3,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0423A0)),
    format = "VALUE"
)

leaderboard(
    id = 122942, title = "Zelda",
    description = "Score as high as you can in Zelda. Submits at Game Over",
    start  = byte(0x001314) == 35 && word(0x0423A0) != 0 && prev(byte(0x044153)) == 1 && byte(0x044153) == 0,
    cancel = always_false(),
    submit = always_true(),
    value = measured(word(0x0423A0)),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    screen == fire_m,
    "Playing Fire Modern on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_fire_m),
    rich_presence_value("Misses", miss_fire_m)
)

rich_presence_conditional_display(
    screen == fire_c,
    "Playing Fire Classic on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_fire_c),
    rich_presence_value("Misses", miss_fire_c)
)

rich_presence_conditional_display(
    screen == boxing_m,
    "Playing Boxing Modern • Score: {0} • Health: {1}/5",
    rich_presence_value("Score", score_boxing_m),
    rich_presence_value("Health", health_boxing_m)
)

rich_presence_conditional_display(
    screen == boxing_c,
    "Playing Boxing Classic • Score: {0} • Health: {1}/50",
    rich_presence_value("Score", score_boxing_c),
    rich_presence_value("Health", health_boxing_c)
)

rich_presence_conditional_display(
    screen == rain_shower_m,
    "Playing Rain Shower Modern on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_rain_shower_m),
    rich_presence_value("Misses", miss_rain_shower_m)
)

rich_presence_conditional_display(
    screen == rain_shower_c,
    "Playing Rain Shower Classic on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_rain_shower_c),
    rich_presence_value("Misses", miss_rain_shower_c)
)

rich_presence_conditional_display(
    screen == donkey_kong_3_m,
    "Playing Donkey Kong 3 Modern • Score: {0} • Misses: {1}/3",
    rich_presence_value("Score", score_donkey_kong_3_m),
    rich_presence_value("Misses", miss_donkey_kong_3_m)
)

rich_presence_conditional_display(
    screen == donkey_kong_3_c,
    "Playing Donkey Kong 3 Classic • Score: {0} • Misses: {1}/3",
    rich_presence_value("Score", score_donkey_kong_3_c),
    rich_presence_value("Misses", miss_donkey_kong_3_c)
)

// Chef C and Octopus M use the same addresses
rich_presence_conditional_display(
    screen == chef_c ||
    screen == octopus_m,
    "Playing {0} on {1} • Score: {2} • Misses: {3}/3",
    rich_presence_lookup("Game", screen, game_dict),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_chef_c),
    rich_presence_value("Misses", miss_chef_c)
)

rich_presence_conditional_display(
    screen == donkey_kong_m,
    "Playing Donkey Kong Modern on {0} • Score: {1} • Lives: {2}/2",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_donkey_kong_m),
    rich_presence_value("Lives", lives_donkey_kong_m)
)

rich_presence_conditional_display(
    screen == donkey_kong_c,
    "Playing Donkey Kong Classic on {0} • Score: {1} • Lives: {2}/2",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_donkey_kong_c),
    rich_presence_lookup("DKCLives", miss_donkey_kong_c, dkc_lives_dict)
)

rich_presence_conditional_display(
    screen == octopus_c,
    "Playing Octopus Classic on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_octopus_c),
    rich_presence_value("Misses", miss_octopus_c)
)

rich_presence_conditional_display(
    screen == parachute,
    "Playing Parachute on {0} • Score: {1} • Misses: {2}/3",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_parachute),
    rich_presence_value("Misses", miss_parachute)
)

rich_presence_conditional_display(
    screen == bomb_sweeper,
    "Playing Bomb Sweeper on {0} • Score: {1} • Lives: {2}/2",
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_bomb_sweeper),
    rich_presence_lookup("BSLives", lives_bomb_sweeper, bs_lives_dict)
)

rich_presence_conditional_display(
    screen == climber,
    "Playing Climber • Score: {0} • Misses: {1}/3",
    rich_presence_value("Score", score_climber),
    rich_presence_value("Misses", miss_climber)
)

rich_presence_conditional_display(
    screen == zelda,
    "Playing Zelda • Score: {0} • Health: {1}",
    rich_presence_value("Score", score_zelda),
    rich_presence_value("Health", health_zelda)
)

rich_presence_conditional_display(
    always_true() &&
    (
        (
            screen >= 7 &&
            screen <= 0xa
        ) ||
        (
            screen >= 0x2a &&
            screen <= 0x30
        ) ||
        (
            __ornext(
                screen == boxing_m_mp ||
                screen == boxing_c_mp ||
                screen == donkey_kong_3_m_mp ||
                screen == donkey_kong_3_c_mp
            )
        )
    ),
    "{0}",
    rich_presence_lookup("String", screen, string_dict)
)

// Cement Factory M/C, DK Jr. M/C, Chef M, Mario Bros. M/C, Fire Attack M/C, Manhole, Tropical Fish, Bombs Away, Safe Buster, Life Boat use the same addresses
rich_presence_conditional_display(
    screen >= 3 && screen <= 0x29,
    "Playing {0} on {1} • Score: {2} • Misses: {3}/3",
    rich_presence_lookup("Game", screen, game_dict),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_value("Score", score_cement_factory_m),
    rich_presence_value("Misses", miss_cement_factory_m)
)

rich_presence_display(
    "Ready to play some Game & Watch!"
)