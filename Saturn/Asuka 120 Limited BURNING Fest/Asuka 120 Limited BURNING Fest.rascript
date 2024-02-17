// Asuka 120% Limited BURNING Fest.
// #ID = 24912

// $073B3C: 0x00 = LimitOver
//          0xc4 = Limited
// $07FFFF: 0x00 = LimitOver
//          0xe1 = Limited
// $100250: 0x07 = LimitOver
//          0x05 = Limited
// $177794: Playtime - Seconds & Frames [16-bit BE]
// $177796: Playtime - Hours & Minutes [16-bit BE]
// $17779E: Game Level/Difficulty Setting [8-bit]
//          0x00 = 1 Star
//          0x01 = 2 Stars (Default)
//          0x02 = 3 Stars
//          0x03 = Ranking Mode (can't be changed)
// $1777A2: Game Speed Setting [8-bit]
//          0x00 = 1 Star
//          0x01 = 2 Stars (Default)
//          0x02 = 3 Stars
//          0x03 = 4 Stars
// $1777A6: Time Limit Setting [8-bit]
//          0x00 = 30
//          0x01 = 60
//          0x02 = 80 (Default)
//          0x03 = Infinite
//          Always 80 in Ranking Mode
// $1777AA: Win Count Setting [8-bit]
//          0x01 = 1
//          0x02 = 2 (Default)
//          Always 1 in Ranking Mode
// $1777AD: Characters Unlocked [8-bit]
//          0x01 = Tetsuko
//          0x02 = Tetsuko & Gen'ichirou
// $1777B8: Option - P2 Controller Type [8-bit]
// $1777B9: Option - P1 Controller Type [8-bit]
//          0x00 = Type A (Default)
//          0x01 = Type B
//          0x02 = Type C
//          0x03 = Type D
// $1777BC: VS Option - Visual Skip [8-bit]
//          0x00 = Off (Default)
//          0x01 = On
// $1777BD: Option - Auto Cursor [8-bit]
//          0x00 = Off (Default)
//          0x01 = On
// $1777BE: VS Option - P2 Handicap [8-bit]
// $1777BF: VS Option - P1 Handicap [8-bit]
//          0x00 to 0x07
//          0x04 = Default
// $1777C0: VS Option - P2 Guard Type [8-bit]
// $1777C1: VS Option - P1 Guard Type [8-bit]
//          0x00 = Auto (Default)
//          0x01 = Manual
//          0x02 = No Guard
// $1777C2: VS Option - P2 Burning Gauge [8-bit]
// $1777C3: VS Option - P1 Burning Gauge [8-bit]
//          0x00 = Normal (Default)
//          0x01 = Full
// $17A920: VS Results - P1 Ryuuko Rush [8-bit]
// $17A921: VS Results - P1 Asuka Rush [8-bit]
// $17A922: VS Results - P1 Megumi Rush [8-bit]
// $17A923: VS Results - P1 Torami Rush [8-bit]
// $17A924: VS Results - P1 Tamaki Rush [8-bit]
// $17A925: VS Results - P1 Kumi Rush [8-bit]
// $17A926: VS Results - P1 Nana Rush [8-bit]
// $17A927: VS Results - P1 Karina Rush [8-bit]
// $17A928: VS Results - P1 Cathy Rush [8-bit]
// $17A929: VS Results - P1 Kiyoko Rush [8-bit]
// $17A92B: VS Results - P1 Shinobu Rush [8-bit]
// $17A932: 0x00 = Character select screen in any mode
//          0x01 to 0x0d = P1 character chosen
// $17A936: P2 Max Rush [8-bit]
// $17A940: VS Results - P2 Ryuuko Losses [8-bit]
// $17A941: VS Results - P2 Asuka Losses [8-bit]
// $17A942: VS Results - P2 Megumi Losses [8-bit]
// $17A943: VS Results - P2 Torami Losses [8-bit]
// $17A944: VS Results - P2 Tamaki Losses [8-bit]
// $17A945: VS Results - P2 Kumi Losses [8-bit]
// $17A946: VS Results - P2 Nana Losses [8-bit]
// $17A947: VS Results - P2 Karina Losses [8-bit]
// $17A948: VS Results - P2 Cathy Losses [8-bit]
// $17A949: VS Results - P2 Kiyoko Losses [8-bit]
// $17A94B: VS Results - P2 Shinobu Losses [8-bit]
// $17A950: VS Results - P2 Ryuuko Wins [8-bit]
// $17A951: VS Results - P2 Asuka Wins [8-bit]
// $17A952: VS Results - P2 Megumi Wins [8-bit]
// $17A953: VS Results - P2 Torami Wins [8-bit]
// $17A954: VS Results - P2 Tamaki Wins [8-bit]
// $17A955: VS Results - P2 Kumi Wins [8-bit]
// $17A956: VS Results - P2 Nana Wins [8-bit]
// $17A957: VS Results - P2 Karina Wins [8-bit]
// $17A958: VS Results - P2 Cathy Wins [8-bit]
// $17A959: VS Results - P2 Kiyoko Wins [8-bit]
// $17A95B: VS Results - P2 Shinobu Wins [8-bit]
// $17A971: Ranking Mode - Opponents Defeated [8-bit]
// $17A982: Game Mode [8-bit]
//          0x0a = Story Mode
//          0x14 = VS Game
//          0x1e = Ranking Mode
//          0x28 = Config Mode
// $17A986: P1 Max Rush [8-bit]
//          Resets to 0 when starting Ranking Mode or VS Game, but not Story Mode
// $17A990: VS Results - P2 Ryuuko Rush [8-bit]
// $17A991: VS Results - P2 Asuka Rush [8-bit]
// $17A992: VS Results - P2 Megumi Rush [8-bit]
// $17A993: VS Results - P2 Torami Rush [8-bit]
// $17A994: VS Results - P2 Tamaki Rush [8-bit]
// $17A995: VS Results - P2 Kumi Rush [8-bit]
// $17A996: VS Results - P2 Nana Rush [8-bit]
// $17A997: VS Results - P2 Karina Rush [8-bit]
// $17A998: VS Results - P2 Cathy Rush [8-bit]
// $17A999: VS Results - P2 Kiyoko Rush [8-bit]
// $17A99B: VS Results - P2 Shinobu Rush [8-bit]
// $17A9A0: VS Results - P1 Ryuuko Wins [8-bit]
// $17A9A1: VS Results - P1 Asuka Wins [8-bit]
// $17A9A2: VS Results - P1 Megumi Wins [8-bit]
// $17A9A3: VS Results - P1 Torami Wins [8-bit]
// $17A9A4: VS Results - P1 Tamaki Wins [8-bit]
// $17A9A5: VS Results - P1 Kumi Wins [8-bit]
// $17A9A6: VS Results - P1 Nana Wins [8-bit]
// $17A9A7: VS Results - P1 Karina Wins [8-bit]
// $17A9A8: VS Results - P1 Cathy Wins [8-bit]
// $17A9A9: VS Results - P1 Kiyoko Wins [8-bit]
// $17A9AB: VS Results - P1 Shinobu Wins [8-bit]
// $17A9BE: Sound Mode [8-bit]
//          0x00 = Stereo (Default)
//          0x01 = Mono
// $17A9C0: VS Results - P1 Ryuuko Losses [8-bit]
// $17A9C1: VS Results - P1 Asuka Losses [8-bit]
// $17A9C2: VS Results - P1 Megumi Losses [8-bit]
// $17A9C3: VS Results - P1 Torami Losses [8-bit]
// $17A9C4: VS Results - P1 Tamaki Losses [8-bit]
// $17A9C5: VS Results - P1 Kumi Losses [8-bit]
// $17A9C6: VS Results - P1 Nana Losses [8-bit]
// $17A9C7: VS Results - P1 Karina Losses [8-bit]
// $17A9C8: VS Results - P1 Cathy Losses [8-bit]
// $17A9C9: VS Results - P1 Kiyoko Losses [8-bit]
// $17A9CB: VS Results - P1 Shinobu Losses [8-bit]
// $17AA82: 0x00 = Character select screen in any mode
//          0x01 to 0x0d = P2 character chosen
// $17DBFE: 0x07 = In-game
// $183D56: P1 Input [8-bit]
//          Bit3 = L
//          Bit4 = Z
//          Bit5 = Y
//          Bit6 = X
//          Bit7 = R
// $183D57: P1 Input [8-bit]
//          Bit0 = B
//          Bit1 = C
//          Bit2 = A
//          Bit3 = Start
//          Bit4 = Up
//          Bit5 = Down
//          Bit6 = Left
//          Bit7 = Right
// $183D5A: P2 Input [8-bit]
// $183D5B: P2 Input [8-bit]
// $183DA8: Character Select Screen - P2 Character [8-bit]
// $183DA9: Character Select Screen - P1 Character [8-bit]
//          0x00 = Asuka
//          0x01 = Ryuuko
//          0x02 = Torami
//          0x03 = Megumi
//          0x04 = Kumi
//          0x05 = Shinobu
//          0x06 = Tamaki
//          0x07 = Karina
//          0x08 = Nana
//          0x09 = Kiyoko
//          0x0a = Cathy
//          0x0b = Tetsuko
//          0x0c = Gen'ichirou
// $188A60: Ranking Mode Score [32-bit BE Swizzled]
// $189D40: P1 Character [8-bit]
//          0x01 = Asuka
//          0x02 = Ryuuko
//          0x03 = Torami
//          0x04 = Megumi
//          0x05 = Kumi
//          0x06 = Tamaki
//          0x07 = Karina
//          0x08 = Nana
//          0x09 = Kiyoko
//          0x0a = Cathy
//          0x0b = Shinobu
//          0x0c = Tetsuko
//          0x0d = Gen'ichirou
// $189D42: P1 Move [8-bit]
//          Refer to GameFAQs guide
//          Asuka
//          0x00 = Idle
//          0x04 -> 0x01 = Crouch
//          0x04 -> 0x08 -> 0x0a -> 0x0b -> = Jump forward
//          0x04 -> 0x08 -> 0x0b = Jump up
//          0x04 -> 0x08 -> 0x0b = Jump back
//          0x05 = Land from jump or rise from crouch
//          0x06 = Walk forward
//          0x07 = Walk back
//          0x20 = 5A
//          0x21 = 6A
//          0x22 = 5B
//          0x23 = 6B
//          0x24 = 2A
//          0x25 = 3A
//          0x26 = 2B
//          0x27 = 6A -> A
//          0x28 = 6A -> A -> A
//          0x2c = j.A
//          0x2d = j.6B
//          0x2e = j.B
//          0x32 = c.4/6B
//          0x33 = jc.4/6B
//          0x36 = 5AB
//          0x37 = j.AB
//          0x38 -> 0x39 -> 0x3a -> 0x3b -> 0x3c -> 0x3d = High jump
//          0x3a -> 0x3b -> 0x3c -> 0x3d = Double jump
//          0x40 -> 0x42 = 6[6]A
//          0x41 -> 0x43 = 6[6]B
//          0x46 -> 0x04 = Dash forward
//          0x47 -> 0x04 = Dash back
//          0x51 -> 0x53 = {{A}} or {{B}}
//          0x54 -> 0x56 = 22A
//          0x55 -> 0x57 = 22B
//          0x5a = 236A
//          0x5b = 236B
//          0x5c = 214A
//          0x5d = 214B
//          0x5e = j.214A
//          0x5f = j.214B
//          0x78 = Saishuu ougi 236AB
//          0x79 = Saishuu ougi 214AB
//          
//          Cathy
//          0x78 -> 0x79 -> 0x7a -> 0x7b -> 0x7c = Saishuu ougi 22AB
//          
//          Gen'ichirou
//          0x78 = 236AB
//          0x79 -> 0x7a -> 0x7b -> 0x05 = 22AB
//          
//          Karina
//          0x78 = Saishuu ougi 236AB
//          0x79 = Saishuu ougi 214AB
//          
//          Kiyoko
//          0x78 -> 0x79 -> 0x7a -> 0x7b -> 0x47 = Saishuu ougi 236AB
//          
//          Kumi
//          0x78 -> 0x79 -> 0x5f -> 0x60 = Saishuu ougi 22AB
//          
//          Megumi
//          0x78 -> 0x79 -> 0x7a -> 0x7b -> 0x7c -> 0x7d -> 0x59 = Saishuu ougi 22AB
//          
//          Nana
//          0x78 -> 0x79 -> 0x7a = Saishuu ougi 22AB
//          0x78 -> 0x7b -> 0x7a = Saishuu ougi 22AB88A, 22AB88B, or 22AB88AB
//          
//          Ryuuko
//          0x78 -> 0x79 = Saishuu ougi 236AB
//          
//          Shinobu
//          0x78 = Saishuu ougi 236AB
//          0x79 -> 0x7a -> 0x59 = Saishuu ougi 22AB
//          
//          Tamaki
//          0x78 = Saishuu ougi 236AB
//          
//          Tetsuko
//          0x78 -> 0x79 = 214AB
//          0x7a = 236AB
//          
//          Torami
//          0x78 = Saishuu ougi 22AB
//          0x79 -> 0x7a = Saishuu ougi 236AB
//          0x7a = Saishuu ougi j.236AB
// $189DB2: P1 CPU or Player [8-bit]
//          Bit3 = CPU
//          If Bit3 is 0:
//          Bit0 off = P1 input accepted
//          Bit0 on = P2 input accepted
// $189DC2: P1 Dizzy Gauge [8-bit]
//          0x14 = Nana max
//          0x15 = Megumi
//          0x16 = Asuka, Karina, Kumi, Tamaki, Tetsuko
//          0x17 = Kiyoko
//          0x18 = Shinobu
//          0x1a = Cathy, Ryuuko, Torami
//          0x1c = Gen'ichirou
// $189EE2: P1 Rush [8-bit]
// $18A044: P1 Health [8-bit]
//          0xc0 = Max
//          0x00 is still fighting, negative is loss
// $18A04C: P1 Burning Gauge [8-bit]
//          0xa0 = 100%
//          0xc0 = 120%
// $18A052: P1 Burning Gauge - 120% Timer [16-bit]
// $18A056: P1 Dizzy Graphics Active [8-bit]
//          0x07
// $18A064: P1 Rounds Won [8-bit]
// $18A390: P2 Character [8-bit]
// $18A392: P2 Move [8-bit]
// $18A402: P2 CPU or Player [8-bit]
//          Bit3 = CPU
//          If Bit3 is 0:
//          Bit0 on = P2 input accepted
//          Bit0 off = P1 input accepted
// $18A412: P2 Dizzy Gauge [8-bit]
// $18A532: P2 Rush [8-bit]
// $18A694: P2 Health [8-bit]
// $18A69C: P2 Burning Gauge [8-bit]
// $18A6A2: P2 Burning Gauge - 120% Timer [16-bit]
// $18A6A6: P2 Dizzy Graphics Active [8-bit]
// $18A6B4: P2 Rounds Won [8-bit]
// $1934C2: Timer [8-bit]
// $1AF526: 0x06 = In-game
// $1FFBAE: Progression in Story Mode and Ranking Mode [8-bit]
//          Story Mode - Asuka, Karina
//          0x01 = Fight 1
//          0x0a = Fight 10
//          0x0b = End Dialogue
//          0x0c = End CG/Credits
//          
//          Story Mode - Ryuuko, Torami, Megumi, Kumi, Tamaki, Nana, Kiyoko, Cathy
//          0x09 = Fight 9
//          0x0a = Fight 9 End Dialogue
//          0x0b = Fight 10/End Dialogue if no continues used yet, otherwise End CG/Credits
//          0x0c = End CG/Credits if Fight 10 happened
//          
//          Story Mode - Shinobu
//          0x0a = Fight 10
//          0x0b = Fight 10 End Dialogue
//          0x0c = Fight 11/End Dialogue if no continues used yet, otherwise End CG/Credits
//          0x0d = End CG/Credits if Fight 11 happened
//          
//          Ranking Mode
//          0x00 = Fight 1
//          0x0c = Fight 13
//          0x0d = End
//          
//          0x34 = VS Game
// $1FFBBE: Story Mode - Continues Used [8-bit]
// $1FFFCF: 0xea = LimitOver
//          0xcc = Limited

game_version = byte(0x100250)
limited = 5
limitover = 7

game_state = byte(0x17dbfe)
in_game = 7

game_mode = byte(0x17a982)
story_mode = 0xa
ranking_mode = 0x1e
vs_game = 0x14

difficulty = byte(0x17779e)
speed = byte(0x1777a2)
time_limit = byte(0x1777a6)
win_count = byte(0x1777aa)
p2_guard_type = byte(0x1777c0)

progression = byte(0x1ffbae)
story_continues_used = byte(0x1ffbbe)

ranking_mode_score =
    word(0x188a60) * 0x10000 +
    word(0x188a62)

p1_max_rush = byte(0x17a986)

timer = byte(0x1934c2)

p1_controller = 0x189db2
p1_cpu = bit3(p1_controller) == 1
p1_player = bit3(p1_controller) == 0 && bit0(p1_controller) == 0

p2_controller = 0x18a402
p2_cpu = bit3(p2_controller) == 1
p2_player = bit3(p2_controller) == 0 && bit0(p2_controller) == 1

p1_character = byte(0x17a932)
// p1_character = byte(0x189d40)
p1_health = byte(0x18a044)
p1_burning_gauge = byte(0x18a04c)
p1_move = byte(0x189d42)
p1_rush = byte(0x189ee2)
p1_rounds_won = byte(0x18a064)

p2_character = byte(0x17aa82)
// p2_character = byte(0x18a390)
p2_health = byte(0x18a694)
p2_rounds_won = byte(0x18a6b4)

asuka = 1
ryuko = 2
torami = 3
megumi = 4
kumi = 5
tamaki = 6
karina = 7
nana = 8
kiyoko = 9
cathy = 0xa
shinobu = 0xb
tetsuko = 0xc
genichirou = 0xd

difficulty_2_or_3 = difficulty >= 1
difficulty_2 = difficulty == 1
difficulty_3 = difficulty == 2

allowed_settings_story =
    game_version == limited &&
    game_mode == story_mode &&
    speed == 1 &&
    time_limit == 2 &&
    win_count == 2

allowed_settings_ranking =
    game_version == limited &&
    game_mode == ranking_mode &&
    speed == 1

allowed_settings_either_mode =
    game_version == limited &&
    __ornext(
        game_mode == story_mode ||
        game_mode == ranking_mode
    ) &&
    difficulty >= 1 &&
    speed == 1 &&
    time_limit == 2

allowed_settings_speed =
    game_version == limited &&
    __ornext(
        game_mode == story_mode ||
        game_mode == ranking_mode
    ) &&
    difficulty >= 1 &&
    time_limit == 2

allowed_settings_rush =
    game_version == limited &&
    speed == 1 &&
    p2_guard_type <= 1

complete_story_mode =
    (
        __ornext(
            p1_character == asuka ||
            p1_character == karina
        ) &&
        prev(progression) == 0xb &&
        progression == 0xc
    ) ||
    (
        p1_character == shinobu &&
        story_continues_used > 0 &&
        prev(progression) == 0xb &&
        progression == 0xc
    ) ||
    (
        p1_character == shinobu &&
        story_continues_used == 0 &&
        prev(progression) == 0xc &&
        progression == 0xd
    ) ||
    (
        p1_character > asuka &&
        p1_character != karina &&
        p1_character < shinobu &&
        story_continues_used > 0 &&
        prev(progression) == 0xa &&
        progression == 0xb
    ) ||
    (
        p1_character > asuka &&
        p1_character != karina &&
        p1_character < shinobu &&
        story_continues_used == 0 &&
        prev(progression) == 0xb &&
        progression == 0xc
    )

complete_ranking_mode =
    prev(progression) == 0xc &&
    progression == 0xd

// story_mode_start =
//     game_mode == story_mode &&
//     progression == 1 &&
//     p1_rounds_won == 0 &&
//     p2_rounds_won == 0 &&
//     timer == 80

story_mode_start =
    game_mode == story_mode &&
    prev(p1_character) == 0 &&
    p1_character > 0

p1_lose_round =
    prev(p1_health) <= 0xc0 &&
    p1_health > 0xc0

p1_lose_round_2 =
    p2_rounds_won == 1 &&
    p1_lose_round

p2_lose_round =
    prev(p2_health) <= 0xc0 &&
    p2_health > 0xc0

p2_lose_round_2 =
    p1_rounds_won == 1 &&
    p2_lose_round

p1_perfect_round =
    p1_health == 0xc0 &&
    p2_lose_round

character_array = range(1, 13)

character_string_array = [
    "Asuka",
    "Ryuko",
    "Torami",
    "Megumi",
    "Kumi",
    "Tamaki",
    "Karina",
    "Nana",
    "Kiyoko",
    "Cathy",
    "Shinobu",
    "Tetsuko",
    "Genichirou"
]

character_dict = {}

for i in range(0, 12) {
    character_dict[character_array[i]] = character_string_array[i]
}

asuka_super = __ornext(p1_move == 0x78 || p1_move == 0x79)
ryuko_super = p1_move == 0x78
torami_super = __ornext(p1_move == 0x78 || p1_move == 0x79 || p1_move == 0x7a)
megumi_super = p1_move == 0x78
kumi_super = p1_move == 0x78
tamaki_super = p1_move == 0x78
karina_super = __ornext(p1_move == 0x78 || p1_move == 0x79)
nana_super = p1_move == 0x78
kiyoko_super = p1_move == 0x78
cathy_super = p1_move == 0x78
shinobu_super = __ornext(p1_move == 0x78 || p1_move == 0x79)
tetsuko_super = __ornext(p1_move == 0x78 || p1_move == 0x7a)
genichirou_super = __ornext(p1_move == 0x78 || p1_move == 0x79)

super_array = [
    asuka_super,
    ryuko_super,
    torami_super,
    megumi_super,
    kumi_super,
    tamaki_super,
    karina_super,
    nana_super,
    kiyoko_super,
    cathy_super,
    shinobu_super,
    tetsuko_super,
    genichirou_super
]

rush_array = [
    35,
    23,
    15,
    29,
    24,
    25,
    19,
    17,
    18,
    21,
    15,
    30,
    11
]

// ------------
// Achievements
// ------------

story_title_array = [
    "Asuka Honda",
    "Ryuko Yamasaki",
    "Torami Hojyo",
    "Megumi Suzuki",
    "Kumi Okubo",
    "Tamaki Shindo",
    "Karina Toyota",
    "Nana Owada",
    "Kiyoko Mitarai",
    "Cathy Wild",
    "Shinobu Kawasaki"
]

function achievement_story() {
    for i in range(0, 10) {
        if (i == 0 || i == 6) {
            complete_story_logic =
                prev(progression) == 0xb &&
                progression == 0xc
        }
        else if (i == 10) {
            complete_story_logic =
                (
                    story_continues_used > 0 &&
                    prev(progression) == 0xb &&
                    progression == 0xc
                ) ||
                (
                    story_continues_used == 0 &&
                    prev(progression) == 0xc &&
                    progression == 0xd
                )
        }
        else {
            complete_story_logic =
                (
                    story_continues_used > 0 &&
                    prev(progression) == 0xa &&
                    progression == 0xb
                ) ||
                (
                    story_continues_used == 0 &&
                    prev(progression) == 0xb &&
                    progression == 0xc
                )
        }
        achievement(
            title = story_title_array[i],
            description =
                format(
                    "Complete Story Mode as {0} on difficulty 2 or 3 (other settings default)",
                    character_string_array[i]
                ),
            points = 10,
            trigger =
                allowed_settings_story &&
                difficulty_2_or_3 &&
                p1_character == character_array[i] &&
                complete_story_logic
        )
    }
}

achievement_story()

achievement(
    title = "Queen of the Clubs",
    description = "Complete Story Mode on difficulty 3 (other settings default)",
    points = 10,
    trigger =
        allowed_settings_story &&
        difficulty_3 &&
        complete_story_mode
)

story_1cc_title_array = [
    "Chemistry Prodigy",
    "Volleyball Victory",
    "Karate Queen",
    "Cheering Champion",
    "Elegant Gymnast",
    "Princess of Tennis",
    "Biology Rival",
    "Triumph of Traditional Dance",
    "Softball Star",
    "Wrestling Champion",
    "Vengeful Fighter"
]

function achievement_story_1cc() {
    for i in range(0, 10) {
        if (i == 0 || i == 6) {
            description_param =
                format(
                    "Complete Story Mode as {0} without losing a fight on difficulty 2 or 3 (other settings default)",
                    character_string_array[i]
                )
            progression_logic =
                progression == 0xa &&
                p2_character == tamaki
        }
        else if (i == 7) {
            description_param = "Defeat Genichirou as Nana in Story Mode on difficulty 2 or 3 (other settings default)"
            progression_logic =
                progression == 0xb &&
                p2_character == genichirou
        }
        else if (i == 10) {
            description_param = "Defeat Genichirou as Shinobu in Story Mode on difficulty 2 or 3 (other settings default)"
            progression_logic =
                progression == 0xc &&
                p2_character == genichirou
        }
        else {
            description_param =
                format(
                    "Defeat Shinobu as {0} in Story Mode on difficulty 2 or 3 (other settings default)",
                    character_string_array[i]
                )
            progression_logic =
                progression == 0xb &&
                p2_character == shinobu
        }
        achievement(
            title = story_1cc_title_array[i],
            description = description_param,
            points = 10,
            trigger =
                allowed_settings_story &&
                difficulty_2_or_3 &&
                p1_character == character_array[i] &&
                once(story_mode_start) &&
                story_continues_used == 0 &&
                trigger_when(progression_logic) &&
                trigger_when(p2_lose_round_2) &&
                never(p1_lose_round_2) &&
                never(p1_character == 0)
        )
    }
}

achievement_story_1cc()

ranking_title_array = [
    "Master Chemist",
    "Ruthless Rally",
    "Queen of Fighters",
    "Cheerful Challenge",
    "Keeping a Rhythm",
    "Aim for the Ace!",
    "Frog Commander",
    "Nana's Last Stand",
    "Home Run",
    "World Champion",
    "Unstoppable",
    "Senpai",
    "Headmaster"
]

function achievement_ranking() {
    for i in range(0, 12) {
        achievement(
            title = ranking_title_array[i],
            description =
                format(
                    "Complete Ranking Mode as {0} (default speed)",
                    character_string_array[i]
                ),
            points = 25,
            trigger =
                allowed_settings_ranking &&
                p1_character == character_array[i] &&
                complete_ranking_mode
        )
    }
}

achievement_ranking()

achievement(
    title = "Perfect Victory",
    description = "Win a round with full health in Story Mode or Ranking Mode on difficulty 2 or 3 (other settings default)",
    points = 10,
    trigger =
        allowed_settings_either_mode &&
        p1_perfect_round
)

speed_title_array = [
    "Slow and Steady",
    "Kick It Up a Notch"
]

function achievement_speed() {
        for i in range(0, 1) {
        achievement(
            title = speed_title_array[i],
            description =
                format(
                    "Win a round at game speed {0} in Story Mode or Ranking Mode on difficulty 2 or 3 (other settings default)",
                    i * 3
                ),
            points = 5,
            trigger =
                allowed_settings_speed &&
                speed == i * 3 &&
                p2_lose_round
        )
    }
}

achievement_speed()

super_title_array = [
    "Enshin Ren Satsu Ken",
    "Hyper Tackle",
    "Rairyuu Shougeki Ken",
    "Megumi Kerikeri Dance",
    "Ribbon Slicer",
    "Dynamite Serve",
    "Kerokero Mega Heat",
    "Butou Souenjin",
    "Illusion Out",
    "Itekomashi Special",
    "Hissatsu Megaton Dynamite",
    "Chou Phenomenon Crash",
    "Taizanmeidou"
]

function achievement_super() {
    for i in range(0, 12) {
        achievement(
            title = super_title_array[i],
            description =
                format(
                    "Use {0}'s Saishuu Ougi and defeat an opponent with your Burning Gauge at 120% in Story Mode or Ranking Mode on difficulty 2 or 3 (other settings default)",
                    character_string_array[i]
                ),
            points = 5,
            trigger =
                allowed_settings_either_mode &&
                p1_character == character_array[i] &&
                once(
                    p1_burning_gauge == 0xc0 &&
                    super_array[i]
                ) &&
                trigger_when(p2_lose_round) &&
                never(p1_burning_gauge < 0xc0)
        )
    }
}

achievement_super()

rush_title_array = [
    "Ganbare!",
    "Yay!",
    "Faito!",
    "Rushdown",
    "Kumi Combo",
    "Racket Riot",
    "Kero-pyon Unleashed",
    "Old-Fashioned Beatdown",
    "Slugger",
    "Ichiban!",
    "Relentless",
    "Inferno",
    "Punishment"
]

rush_points_array = [
    10,
    10,
    10,
    5,
    5,
    10,
    5,
    10,
    10,
    5,
    10,
    10,
    5
]

function achievement_rush() {
    for i in range(0, 12) {
        achievement(
            title = rush_title_array[i],
            description =
                format(
                    "Get a {0} RUSH as {1} (default speed)",
                    rush_array[i],
                    character_string_array[i]
                ),
            points = rush_points_array[i],
            trigger =
                allowed_settings_rush &&
                p1_character == character_array[i] &&
                prev(p1_rush) < rush_array[i] &&
                p1_rush >= rush_array[i]
        )
    }
}

achievement_rush()

// ------------
// Leaderboards
// ------------

function leaderboards() {
    for i in range(0, 12) {
        for t in range(0, 1) {
            if (t == 0) {
                title_param = "Score"
                value_param = ranking_mode_score
            }
            else {
                title_param = "RUSH"
                value_param = p1_max_rush
            }
            leaderboard(
                title =
                    format(
                        "Ranking Mode {0}: {1}",
                        title_param,
                        character_string_array[i]
                    ),
                description = "Submits after losing or completing Ranking Mode (default speed)",
                start =
                    allowed_settings_ranking &&
                    p1_character == character_array[i] &&
                    value_param > 0 &&
                    (
                        p1_lose_round ||
                        complete_ranking_mode
                    ),
                cancel = always_false(),
                submit = always_true(),
                value = measured(value_param),
                format = "VALUE"
            )
        }
    }
}

function leaderboards_vs() {
    for i in range(0, 12) {
        leaderboard(
            title =
                format(
                    "VS Game RUSH: {0}",
                    character_string_array[i]
                ),
            description = "Submits after ending a VS Game (default speed)",
            start =
                allowed_settings_rush &&
                p1_character == character_array[i] &&
                p1_max_rush > 0 &&
                (
                    (
                        game_mode == vs_game &&
                        prev(game_state) == in_game &&
                        game_state != in_game
                    ) ||
                    (
                        game_state == in_game &&
                        prev(game_mode) == vs_game &&
                        game_mode == 0
                    )
                ),
            cancel = always_false(),
            submit = always_true(),
            value = measured(p1_max_rush),
            format = "VALUE"
        )
    }
}

leaderboards()
leaderboards_vs()

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    game_version == limitover,
    "Playing LimitOver"
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character == shinobu &&
        never(p1_character == 0)
    ) &&
    progression == 0xd,
    "Shinobu completed Story Mode! Difficulty {0}/3 • Speed {1}/4 • Continues Used: {2}",
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character == shinobu &&
        never(p1_character == 0)
    ) &&
    story_continues_used > 0 && progression >= 0xb,
    "Shinobu completed Story Mode! Difficulty {0}/3 • Speed {1}/4 • Continues Used: {2}",
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character == shinobu &&
        never(p1_character == 0)
    ) &&
    story_continues_used == 0 &&
    progression == 0xc,
    "Story Mode 11/10: Shinobu vs. {0} • Difficulty {1}/3 • Speed {2}/4 • Continues Used: {3}",
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character == shinobu &&
        never(p1_character == 0)
    ) &&
    story_continues_used == 0 &&
    progression == 0xb,
    "Story Mode 11/10: Shinobu vs. ? • Difficulty {0}/3 • Speed {1}/4 • Continues Used: {2}",
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        (
            p1_character == asuka ||
            p1_character == karina
        ) &&
        never(p1_character == 0)
    ) &&
    progression >= 0xb,
    "{0} completed Story Mode! Difficulty {1}/3 • Speed {2}/4 • Continues Used: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        (
            p1_character == asuka ||
            p1_character == karina ||
            p1_character == shinobu
        ) &&
        never(p1_character == 0)
    ),
    "Story Mode {0}/10: {1} vs. {2} • Difficulty {3}/3 • Speed {4}/4 • Continues Used: {5}",
    rich_presence_value("Progression", progression),
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ) &&
    progression == 0xc,
    "{0} completed Story Mode! Difficulty {1}/3 • Speed {2}/4 • Continues Used: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ) &&
    story_continues_used > 0 &&
    progression >= 0xa,
    "{0} completed Story Mode! Difficulty {1}/3 • Speed {2}/4 • Continues Used: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ) &&
    story_continues_used == 0 &&
    progression == 0xb,
    "Story Mode 10/9: {0} vs. {1} • Difficulty {2}/3 • Speed {3}/4 • Continues Used: {4}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ) &&
    story_continues_used == 0 &&
    progression == 0xa,
    "Story Mode 10/9: {0} vs. ? • Difficulty {1}/3 • Speed {2}/4 • Continues Used: {3}",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == story_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ),
    "Story Mode {0}/9: {1} vs. {2} • Difficulty {3}/3 • Speed {4}/4 • Continues Used: {5}",
    rich_presence_value("Progression", progression),
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1),
    rich_presence_value("ContinuesUsed", story_continues_used)
)

rich_presence_conditional_display(
    game_mode == ranking_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ) &&
    progression == 0xd,
    "{0} completed Ranking Mode! Score: {1} • Best RUSH: {2} • Speed {3}/4",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_value("Score", ranking_mode_score),
    rich_presence_value("RUSH", p1_max_rush),
    rich_presence_value("Speed", speed + 1)
)

rich_presence_conditional_display(
    game_mode == ranking_mode &&
    repeated(60,
        p1_character > 0 &&
        never(p1_character == 0)
    ),
    "Ranking Mode {0}/13: {1} vs. {2} • Score: {3} • Best RUSH: {4} • Speed {5}/4",
    rich_presence_value("Progression", progression + 1),
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("Score", ranking_mode_score),
    rich_presence_value("RUSH", p1_max_rush),
    rich_presence_value("Speed", speed + 1)
)

rich_presence_conditional_display(
    game_mode == vs_game &&
    repeated(60,
        game_state == in_game &&
        never(game_state != in_game)
    ) &&
    p1_player &&
    p2_cpu &&
    p1_character > 0 &&
    p2_character > 0,
    "VS Game: P1 {0} vs. CPU {1} • Best RUSH: {2} • Difficulty {3}/3 • Speed {4}/4",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("RUSH", p1_max_rush),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1)
)

rich_presence_conditional_display(
    game_mode == vs_game &&
    repeated(60,
        game_state == in_game &&
        never(game_state != in_game)
    ) &&
    p1_player &&
    p2_player &&
    p1_character > 0 &&
    p2_character > 0,
    "VS Game: P1 {0} vs. P2 {1} • Best RUSH: {2} • Speed {3}/4",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("RUSH", p1_max_rush),
    rich_presence_value("Speed", speed + 1)
)

rich_presence_conditional_display(
    game_mode == vs_game &&
    repeated(60,
        game_state == in_game &&
        never(game_state != in_game)
    ) &&
    p1_cpu && p2_cpu &&
    p1_character > 0 &&
    p2_character > 0,
    "VS Game: CPU {0} vs. CPU {1} • Difficulty {2}/3 • Speed {3}/4",
    rich_presence_lookup("Character", p1_character, character_dict),
    rich_presence_lookup("Character", p2_character, character_dict),
    rich_presence_value("RUSH", p1_max_rush),
    rich_presence_value("Difficulty", difficulty + 1),
    rich_presence_value("Speed", speed + 1)
)

rich_presence_display(
    "Preparing for the Mega Fight Tournament!"
)