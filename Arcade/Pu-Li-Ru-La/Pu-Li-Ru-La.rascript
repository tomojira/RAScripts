// Pu-Li-Ru-La
// #ID = 12348

// $15D2: Pink Elephant Freed [8-bit]
//        0x04 -> 0x01
// $202A: Round [8-bit]
//        0x00 to 0x05 = Round 1 to 6
// $20BC: Demo Timer [16-bit]
// $20EA: Continue Timer [16-bit]
//        Starts at 0x0258 and counts down
//        0x021b = 8
//        0x01df = 7
// $22B8: Attract Mode [16-bit]
//        0x00
// $22F2: Attract Mode [8-bit]
//        0x04 = Attract Mode
//        0x08 = In-game
// $2C0E: P2 Input [Inverted Bitflags]
// $2C0F: P1 Input [Inverted Bitflags]
//        Bit0 = Up
//        Bit1 = Down
//        Bit2 = Left
//        Bit3 = Right
//        Bit4 = Attack
//        Bit5 = Jump
//        Bit6 = Magic
//        Bit7 = Start
// $2C14: DIP Switches
//        Difficulty
//        Bit0 is 0 and Bit1 is 1 = Easy
//        Bit0 is 1 and Bit1 is 1 = Medium (Default)
//        Bit0 is 1 and Bit1 is 0 = Hard
//        Bit0 is 0 and Bit1 is 0 = Hardest
//        
//        Starting Magic Stock
//        Bit2 is 1 and Bit3 is 1 = 3 (Default)
//        Bit2 is 0 and Bit3 is 1 = 4
//        Bit2 is 1 and Bit3 is 0 = 5
//        
//        Starting Lives
//        Bit4 is 0 and Bit5 is 1 = 2
//        Bit4 is 1 and Bit5 is 1 = 3 (Default)
//        Bit4 is 1 and Bit5 is 0 = 4
//        Bit4 is 0 and Bit5 is 0 = 5
//        
//        Upright Controls
//        Bit7 is 0 = Single
//        Bit7 is 1 = Dual (Default)
// $2C15: DIP Switches
//        Flip Screen
//        Bit1 is 1 = Off (Default)
//        Bit1 is 0 = On
//        
//        Service Mode
//        Bit2 is 1 = Off (Default)
//        Bit2 is 0 = On
//        
//        Demo Sounds
//        Bit3 is 0 = Off
//        Bit3 is 1 = On (Default)
//        
//        Coin A
//        Bit4 is 0 and Bit5 is 0 = 3 Coins 1 Credit
//        Bit4 is 1 and Bit5 is 0 = 2 Coins 1 Credit
//        Bit4 is 1 and Bit5 is 1 = 1 Coin 1 Credit (Default)
//        Bit4 is 0 and Bit5 is 1 = 1 Coin 2 Credits
//        
//        Coin B
//        Bit6 is 0 and Bit7 is 0 = 3 Coins 1 Credit
//        Bit6 is 1 and Bit7 is 0 = 2 Coins 1 Credit
//        Bit6 is 1 and Bit7 is 1 = 1 Coin 1 Credit (Default)
//        Bit6 is 0 and Bit7 is 1 = 1 Coin 2 Credits
// $2C16: Insert Coin [Inverted Bitflags]
//        Bit2 = P1 coin
//        Bit3 = P2 coin
// $3E86: Credits [8-bit]
// $3EE6: Progression [8-bit]
//        0x01 to 0x06 = Round 1 to 6
//        0x07 = Final boss
//        0x08 = Ending
// $3F02: Boss Activity [8-bit]
//        0x00 = Inactive
//        0x01 = Active
// $400A: Object Pointer Table [256 bytes]
// $410A: Object 1 [164 bytes]
//        +0x14 = Object colour palette [8-bit]
//        ..0x91 = Blue mook
//        ..0x93 = Red mook
//        ..0x97 = Bubble blower
//        ..0xa7 = Dog, Platypus
//        ..0xb1 = Moustache jellyfish
//        ..0xc5 = Pumpkin
//        ..0xc7 = Magic up fairy
//        ..0xc9 = Skating bird
//        ..0xcb = Knight
//        ..0xcd = Knight spinning
//        ..0xcf = Life up fairy
//        ..0xd4 = Go! pointer
//        ..0xe3 = Pig
//        ..0xe9 = Points text
// $41AE: Object 2 [164 bytes]
// $4252: Object 3 [164 bytes]
// $42F6: Object 4 [164 bytes]
// $439A: Object 5 [164 bytes]
// $443E: Object 6 [164 bytes]
// $44E2: Object 7 [164 bytes]
// $4586: Object 8 [164 bytes]
// $462A: Object 9 [164 bytes]
// $46CE: Object 10 [164 bytes]
// $4772: Object 11 [164 bytes]
// $4816: Object 12 [164 bytes]
// $48BA: Object 13 [164 bytes]
// $495E: Object 14 [164 bytes]
// $4A02: Object 15 [164 bytes]
// $4AA6: Object 16 [164 bytes]
// $4B4A: Object 17 [164 bytes]
// $4BEE: Object 18 [164 bytes]
// $4C92: Object 19 [164 bytes]
// $4D36: Object 20 [164 bytes]
// $4DDA: Object 21 [164 bytes]
// $4E7E: Object 22 [164 bytes]
// $4F22: Object 23 [164 bytes]
// $4FC6: Object 24 [164 bytes]
// $506A: Object 25 [164 bytes]
// $510E: Object 26 [164 bytes]
// $51B2: Object 27 [164 bytes]
// $5256: Object 28 [164 bytes]
// $52FA: Object 29 [164 bytes]
// $539E: Object 30 [164 bytes]
// $5442: Object 31 [164 bytes]
// $54E6: Object 32 [164 bytes]
// $558A: Object 33 [164 bytes]
// $562E: Object 34 [164 bytes]
// $56D2: Object 35 [164 bytes]
// $5776: Object 36 [164 bytes]
// $581A: Object 37 [164 bytes]
// $58BE: Object 38 [164 bytes]
// $5962: Object 39 [164 bytes]
// $5A06: Object 40 [164 bytes]
// $5AAA: Object 41 [164 bytes]
// $5B4E: Object 42 [164 bytes]
// $5BF2: Object 43 [164 bytes]
// $5C96: Object 44 [164 bytes]
// $5D3A: Object 45 [164 bytes]
// $5DDE: Object 46 [164 bytes]
// $5E82: Object 47 [164 bytes]
// $5F26: Object 48 [164 bytes]
// $5FCA: Object 49 [164 bytes]
// $606E: Object 50 [164 bytes]
// $6112: Object 51 [164 bytes]
// $61B6: Object 52 [164 bytes]
// $625A: Object 53 [164 bytes]
// $62FE: Object 54 [164 bytes]
// $63A2: Object 55 [164 bytes]
// $6446: Object 56 [164 bytes]
// $64EA: Object 57 [164 bytes]
// $658E: Object 58 [164 bytes]
// $6632: Object 59 [164 bytes]
// $66D6: Object 60 [164 bytes]
// $677A: Object 61 [164 bytes]
// $681E: Object 62 [164 bytes]
// $68C2: Object 63 [164 bytes]
// $6966: Object 64 [164 bytes]
// $7E86: P1 Activity [16-bit]
//        0x0000 = Inactive
//        0xffff = Active
// $7E9C: P1 X-Position [16-bit]
// $7EA4: P1 Y-Position [16-bit]
// $7EBD: P1 State [8-bit]
// $7EDC: P1 Invincibility Active [8-bit]
// $7F06: P1 Score * 65536 [16-bit]
// $7F08: P1 Score * 1 [16-bit]
//        Animals give 70, 150, 240, 350, or 480 points depending on how far they've run
//        Pumpkin gives 10
//        Casting a spell gives 10
//        
//        Round 1
//        Blue mook = 110
//        Red mook = 120
//        First boss hit = 40
//        First boss defeated = 1000
//        
//        Round 2
//        Moustache jellyfish = None
//        Skating bird = 330
//        Bubble blower = 580
//        Knight hit = 30
//        Knight defeated = 770
//        Second boss hit = 70
//        Second boss defeated = 2000
// $7F0A: P1 Lives [8-bit]
// $7F0C: P1 Magic Stock [8-bit]
// $7F0E: P1 Health [8-bit]
//        Start with 0x60 (96)
//        Each health unit is worth 0x08
// $7F10: P2 Activity [16-bit]
// $7F26: P2 X-Position [16-bit]
// $7F2E: P2 Y-Position [16-bit]
// $7F47: P2 State [8-bit]
// $7F66: P2 Invincibility Active [8-bit]
// $7F90: P2 Score * 65536 [16-bit]
// $7F92: P2 Score * 1 [16-bit]
// $7F94: P2 Lives [8-bit]
// $7F96: P2 Magic Stock [8-bit]
// $7F98: P2 Health [8-bit]
// $7F9E: Input
//        Bit0 = Up
//        Bit1 = Down
//        Bit2 = Left
//        Bit3 = Right
//        Bit4 = Attack
//        Bit5 = Jump
//        Bit6 = Magic
//        Bit7 = Start
//        Used for P1 when P2 isn't active, but changes to P2 when active
// $7FAA: Score Display: Hundreds Digit [ASCII]
// $7FAB: Score Display: Thousands Digit [ASCII]
// $7FAC: Score Display: Ones Digit [ASCII]
// $7FAD: Score Display: Tens Digit [ASCII]
//        Used for P1 when P2 isn't active, but changes to P2 when active
//        
//        Last 2 digits determine spell cast
//        00 = Glitter Magic
//        10 or 60 = Fairy
//        20 or 90 = Rapman
//        30 or 50 = Mr. Mikata
//        40 or 70 = Animal Stampede
//        80 = Tornado
// $C3E8: Bonus Scene Timer Display [8-bit]
//        Starts at 0x13

pink_elephant_state = byte(0x15d2)

p1_activity = byte(0x20e6)
p2_activity = byte(0x20e8)

attract_mode_state = byte(0x22b8)

p2_input = 0x2c0e
p2_input_magic = bit6(p2_input)
p1_input = 0x2c0f
p1_input_magic = bit6(p1_input)
dip_switches = 0x2c14
camera_y_position = byte(0x2c1e)
round_progress = word(0x2c24)

credits = byte(0x3e86)
round = byte(0x3ee6)
boss_activity = byte(0x3f02)

object_1 = 0x410a

// p1_activity = byte(0x7e86)
p1_x_position = word(0x7e9c)
p1_y_position = word(0x7ea4)
p1_state = byte(0x7ebd)
p1_invincibility_timer = byte(0x7edd)
p1_score = (word(0x7f06) * 0x10000) + word(0x7f08)
p1_lives = byte(0x7f0a)
p1_magic_stock = byte(0x7f0c)
p1_health = word(0x7f0e)

// p2_activity = byte(0x7f10)
p2_x_position = word(0x7f26)
p2_y_position = word(0x7f2e)
p2_state = byte(0x7f47)
p2_invincibility_timer = byte(0x7f67)
p2_score = (word(0x7f90) * 0x10000) + word(0x7f92)
p2_lives = byte(0x7f94)
p2_magic_stock = byte(0x7f96)
p2_health = word(0x7f98)

score_display_tens = byte(0x7fad)

bonus_scene_timer = byte(0xc3e8)

//
//
//

free_pink_elephant =
    prev(pink_elephant_state) == 4 &&
    pink_elephant_state == 1

p1_active = p1_activity == 1
p2_active = p2_activity == 1

attract_mode = attract_mode_state == 0

shock_no_pa =
    p1_input_magic == 0 &&
    p2_input_magic == 0

default_difficulty =
    bit0(dip_switches) + (bit1(dip_switches) * 2) != 2

default_magic_stock =
    bit2(dip_switches) == 1 &&
    bit3(dip_switches) == 1

default_lives =
    bit4(dip_switches) + (bit5(dip_switches) * 2) >= 2

default_dips =
    default_difficulty &&
    default_magic_stock &&
    default_lives

round_5_start =
    prev(round_progress) <= 0x0013 &&
    round_progress > 0xff02

// Checks if Round 6 was played through, instead of skipping to the final boss with Round Select
round_6_protection =
    once(
        prev(round) == 6 &&
        round == 7 &&
        never(
            round != 7 &&
            round != 8
        )
    )

round_6_start =
    once(
        prev(round) == 6 &&
        round == 7
    )

beat_game =
    prev(round) == 7 &&
    round == 8

boss_start =
    prev(boss_activity) == 0 &&
    boss_activity == 1

boss_start_alt =
    prev(boss_activity) == 0 &&
    boss_activity == 0xff

defeat_boss =
    prev(boss_activity) == 1 &&
    boss_activity == 0

defeat_boss_alt =
    prev(boss_activity) == 0xff &&
    boss_activity == 0

// p1_active = p1_activity == 0xff
// p2_active = p2_activity == 0xff
both_players_active = p1_active && p2_active

p2_protection =
    disable_when(both_players_active) &&
    disable_when(shock_no_pa)

p1_active_only =
    p1_active &&
    p2_activity == 0

p2_active_only =
    p2_active &&
    p1_activity == 0

// Needs reset at attract mode
default_settings =
    default_dips &&
    p2_protection

object_1_colour = object_1 + 0x14

p1_use_magic =
    prev(p1_state) != 0x10 &&
    p1_state == 0x10

p2_use_magic =
    prev(p2_state) != 0x10 &&
    p2_state == 0x10

p1_death =
    prev(p1_state) != 0xfe &&
    p1_state == 0xfe

p2_death =
    prev(p2_state) != 0xfe &&
    p2_state == 0xfe

p1_magic_active = p1_invincibility_timer >= 0xf0
p2_magic_active = p2_invincibility_timer >= 0xf0

p1_magic_active_trans =
    prev(p1_invincibility_timer) < 0xf0 &&
    p1_magic_active

p2_magic_active_trans =
    prev(p2_invincibility_timer) < 0xf0 &&
    p2_magic_active

p1_magic_active_boss_start =
    boss_start &&
    p1_magic_active

p2_magic_active_boss_start =
    boss_start &&
    p2_magic_active

p1_magic_active_boss_start_alt =
    boss_start_alt &&
    p1_magic_active

p2_magic_active_boss_start_alt =
    boss_start_alt &&
    p2_magic_active

no_magic_boss =
    disable_when(
        boss_activity == 1 &&
        p1_use_magic
    ) &&
    disable_when(
        boss_activity == 1 &&
        p1_magic_active
    ) &&
    disable_when(
        boss_activity == 1 &&
        p2_use_magic
    ) &&
    disable_when(
        boss_activity == 1 &&
        p2_magic_active
    )

no_magic_boss_alt =
    disable_when(
        boss_activity == 0xff &&
        p1_use_magic
    ) &&
    disable_when(
        boss_activity == 0xff &&
        p1_magic_active
    ) &&
    disable_when(
        boss_activity == 0xff &&
        p2_use_magic
    ) &&
    disable_when(
        boss_activity == 0xff &&
        p2_magic_active
    )

// Used only for Round 6
two_magic_boss =
    unless(
        tally(3,
            boss_activity == 1 &&
            p1_use_magic,
            boss_start &&
            p1_magic_active,
            boss_activity == 1 &&
            p2_use_magic,
            boss_start &&
            p2_magic_active,
            boss_activity == 0xff &&
            p1_use_magic,
            // boss_start_alt &&
            // p1_magic_active,
            boss_activity == 0xff &&
            p2_use_magic,
            round == 6 &&
            prior(boss_activity) == 1 &&
            boss_activity == 0 &&
            p1_use_magic,
            round == 6 &&
            prior(boss_activity) == 1 &&
            boss_activity == 0 &&
            p2_use_magic
            // boss_start_alt &&
            // p2_magic_active
        )
    )

p1_damage_counter =
    tally(12,
        prev(p1_health) < 0x8000 && prev(p1_health) > 264 && p1_health <= 264,
        prev(p1_health) < 0x8000 && prev(p1_health) > 256 && p1_health <= 256,
        prev(p1_health) < 0x8000 && prev(p1_health) > 248 && p1_health <= 248,
        prev(p1_health) < 0x8000 && prev(p1_health) > 240 && p1_health <= 240,
        prev(p1_health) < 0x8000 && prev(p1_health) > 232 && p1_health <= 232,
        prev(p1_health) < 0x8000 && prev(p1_health) > 224 && p1_health <= 224,
        prev(p1_health) < 0x8000 && prev(p1_health) > 216 && p1_health <= 216,
        prev(p1_health) < 0x8000 && prev(p1_health) > 208 && p1_health <= 208,
        prev(p1_health) < 0x8000 && prev(p1_health) > 200 && p1_health <= 200,
        prev(p1_health) < 0x8000 && prev(p1_health) > 192 && p1_health <= 192,
        prev(p1_health) < 0x8000 && prev(p1_health) > 184 && p1_health <= 184,
        prev(p1_health) < 0x8000 && prev(p1_health) > 176 && p1_health <= 176,
        prev(p1_health) < 0x8000 && prev(p1_health) > 168 && p1_health <= 168,
        prev(p1_health) < 0x8000 && prev(p1_health) > 160 && p1_health <= 160,
        prev(p1_health) < 0x8000 && prev(p1_health) > 152 && p1_health <= 152,
        prev(p1_health) < 0x8000 && prev(p1_health) > 144 && p1_health <= 144,
        prev(p1_health) < 0x8000 && prev(p1_health) > 136 && p1_health <= 136,
        prev(p1_health) < 0x8000 && prev(p1_health) > 128 && p1_health <= 128,
        prev(p1_health) < 0x8000 && prev(p1_health) > 120 && p1_health <= 120,
        prev(p1_health) < 0x8000 && prev(p1_health) > 112 && p1_health <= 112,
        prev(p1_health) < 0x8000 && prev(p1_health) > 104 && p1_health <= 104,
        prev(p1_health) < 0x8000 && prev(p1_health) > 96 && p1_health <= 96,
        prev(p1_health) < 0x8000 && prev(p1_health) > 88 && p1_health <= 88,
        prev(p1_health) < 0x8000 && prev(p1_health) > 80 && p1_health <= 80,
        prev(p1_health) < 0x8000 && prev(p1_health) > 72 && p1_health <= 72,
        prev(p1_health) < 0x8000 && prev(p1_health) > 64 && p1_health <= 64,
        prev(p1_health) < 0x8000 && prev(p1_health) > 56 && p1_health <= 56,
        prev(p1_health) < 0x8000 && prev(p1_health) > 48 && p1_health <= 48,
        prev(p1_health) < 0x8000 && prev(p1_health) > 40 && p1_health <= 40,
        prev(p1_health) < 0x8000 && prev(p1_health) > 32 && p1_health <= 32,
        prev(p1_health) < 0x8000 && prev(p1_health) > 24 && p1_health <= 24,
        prev(p1_health) < 0x8000 && prev(p1_health) > 16 && p1_health <= 16,
        prev(p1_health) < 0x8000 && prev(p1_health) > 8 && p1_health <= 8,
        prev(p1_health) < 0x8000 && prev(p1_health) > 0 && p1_health == 0,
        prev(p1_health) < 0x8000 && p1_health >= 0x8000,
        prev(p1_health) < 0x8000 && p1_health >= 0x8000 && p1_health <= 0xfff0,
        prev(p1_health) < 0x8000 && p1_health >= 0x8000 && p1_health <= 0xffe8,
        prev(p1_health) < 0x8000 && p1_health >= 0x8000 && p1_health <= 0xffe0,
        prev(p1_health) < 0x8000 && p1_health >= 0x8000 && p1_health <= 0xffd8
    )

p2_damage_counter =
    tally(12,
        prev(p2_health) < 0x8000 && prev(p2_health) > 264 && p2_health <= 264,
        prev(p2_health) < 0x8000 && prev(p2_health) > 256 && p2_health <= 256,
        prev(p2_health) < 0x8000 && prev(p2_health) > 248 && p2_health <= 248,
        prev(p2_health) < 0x8000 && prev(p2_health) > 240 && p2_health <= 240,
        prev(p2_health) < 0x8000 && prev(p2_health) > 232 && p2_health <= 232,
        prev(p2_health) < 0x8000 && prev(p2_health) > 224 && p2_health <= 224,
        prev(p2_health) < 0x8000 && prev(p2_health) > 216 && p2_health <= 216,
        prev(p2_health) < 0x8000 && prev(p2_health) > 208 && p2_health <= 208,
        prev(p2_health) < 0x8000 && prev(p2_health) > 200 && p2_health <= 200,
        prev(p2_health) < 0x8000 && prev(p2_health) > 192 && p2_health <= 192,
        prev(p2_health) < 0x8000 && prev(p2_health) > 184 && p2_health <= 184,
        prev(p2_health) < 0x8000 && prev(p2_health) > 176 && p2_health <= 176,
        prev(p2_health) < 0x8000 && prev(p2_health) > 168 && p2_health <= 168,
        prev(p2_health) < 0x8000 && prev(p2_health) > 160 && p2_health <= 160,
        prev(p2_health) < 0x8000 && prev(p2_health) > 152 && p2_health <= 152,
        prev(p2_health) < 0x8000 && prev(p2_health) > 144 && p2_health <= 144,
        prev(p2_health) < 0x8000 && prev(p2_health) > 136 && p2_health <= 136,
        prev(p2_health) < 0x8000 && prev(p2_health) > 128 && p2_health <= 128,
        prev(p2_health) < 0x8000 && prev(p2_health) > 120 && p2_health <= 120,
        prev(p2_health) < 0x8000 && prev(p2_health) > 112 && p2_health <= 112,
        prev(p2_health) < 0x8000 && prev(p2_health) > 104 && p2_health <= 104,
        prev(p2_health) < 0x8000 && prev(p2_health) > 96 && p2_health <= 96,
        prev(p2_health) < 0x8000 && prev(p2_health) > 88 && p2_health <= 88,
        prev(p2_health) < 0x8000 && prev(p2_health) > 80 && p2_health <= 80,
        prev(p2_health) < 0x8000 && prev(p2_health) > 72 && p2_health <= 72,
        prev(p2_health) < 0x8000 && prev(p2_health) > 64 && p2_health <= 64,
        prev(p2_health) < 0x8000 && prev(p2_health) > 56 && p2_health <= 56,
        prev(p2_health) < 0x8000 && prev(p2_health) > 48 && p2_health <= 48,
        prev(p2_health) < 0x8000 && prev(p2_health) > 40 && p2_health <= 40,
        prev(p2_health) < 0x8000 && prev(p2_health) > 32 && p2_health <= 32,
        prev(p2_health) < 0x8000 && prev(p2_health) > 24 && p2_health <= 24,
        prev(p2_health) < 0x8000 && prev(p2_health) > 16 && p2_health <= 16,
        prev(p2_health) < 0x8000 && prev(p2_health) > 8 && p2_health <= 8,
        prev(p2_health) < 0x8000 && prev(p2_health) > 0 && p2_health == 0,
        prev(p2_health) < 0x8000 && p2_health >= 0x8000,
        prev(p2_health) < 0x8000 && p2_health >= 0x8000 && p2_health <= 0xfff0,
        prev(p2_health) < 0x8000 && p2_health >= 0x8000 && p2_health <= 0xffe8,
        prev(p2_health) < 0x8000 && p2_health >= 0x8000 && p2_health <= 0xffe0,
        prev(p2_health) < 0x8000 && p2_health >= 0x8000 && p2_health <= 0xffd8
    )

// Checks if enemies were defeated in the first area, instead of skipping to the boss with Round Select
round_1_protection_p1 =
    repeated(4,
        p1_score - prev(p1_score) >= 110 &&
        never(round != 1)
    )

round_1_protection_p2 =
    repeated(4,
        p2_score - prev(p2_score) >= 110 &&
        never(round != 1)
    )

round_1_start_p1 =
    repeated(4,
        round == 1 &&
        p1_score - prev(p1_score) >= 110
    )

round_1_start_p2 =
    repeated(4,
        round == 1 &&
        p2_score - prev(p2_score) >= 110
    )

score_display_glitter =
    __ornext(
        score_display_tens == 0x20 ||
        score_display_tens == 0x30
    )

score_display_fairy =
    __ornext(
        score_display_tens == 0x31 ||
        score_display_tens == 0x36
    )

score_display_rapman =
    __ornext(
        score_display_tens == 0x32 ||
        score_display_tens == 0x39
    )

score_display_mikata =
    __ornext(
        score_display_tens == 0x33 ||
        score_display_tens == 0x35
    )

score_display_stampede =
    __ornext(
        score_display_tens == 0x34 ||
        score_display_tens == 0x37
    )

score_display_tornado =
    score_display_tens == 0x38

bonus_scene_start = bonus_scene_timer == 0x13

//
//
//

object_colour_array = [object_1_colour]

for i in range(0, 62) {
    array_push(object_colour_array, object_colour_array[i] + 164)
}

// ------------
// Achievements
// ------------

id_array = range(459698, 459720)
current_id = 0

// Title, points, trigger logic
progress_array = [
    ["Time Crisis", 2, defeat_boss],
    ["Crystal Peak", 3, defeat_boss],
    ["Get a Leg Up", 4, defeat_boss_alt],
    ["I Hate Sand", 5, defeat_boss],
    ["Lawn of the Dead", 5, defeat_boss_alt],
    ["Za Warudo", 10, defeat_boss_alt]
]

for i in range(0, 5) {
    if (i == 0) {
        type_param = "PROGRESSION"
        round_param = round == 1
        logic_param_1 = round_1_protection_p1
        logic_param_2 = round_1_protection_p2
    }
    else if (i == 5) {
        type_param = "WIN_CONDITION"
        round_param = round_6_protection
        logic_param_1 = always_true()
        logic_param_2 = always_true()
    }
    else {
        type_param = "PROGRESSION"
        round_param =
            prior(round) == i &&
            round == i + 1
        logic_param_1 = always_true()
        logic_param_2 = always_true()
    }
    achievement(
        id = id_array[current_id],
        title = progress_array[i][0],
        description =
            format(
                "Complete Round {0} without using Round Select Mode (default settings)",
                i + 1
            ),
        points = progress_array[i][1],
        type = type_param,
        trigger =
            default_settings &&
            round_param &&
            progress_array[i][2] &&
            (
                (
                    p1_active_only &&
                    logic_param_1 &&
                    never(attract_mode)
                ) ||
                (
                    p2_active_only &&
                    logic_param_2
                )
            )
    )
    current_id = current_id + 1
}

animals_array = [
    ["Dog Day Afternoon", 3, 13],
    ["Beasts of the Mountains", 5, 32],
    ["Party Like an Animal", 10, 32],
    ["On the Run", 10, 46],
    ["Everywhere There's Lots of Piggies Living Piggy Lives", 10, 48],
    ["Nightmare Creatures", 25, 72]
]

for i in range(0, 5) {
    if (i == 4) {
        logic_param = disable_when(defeat_boss_alt)
    }
    else {
        logic_param = always_true()
    }
    achievement(
        id = id_array[current_id],
        title = animals_array[i][0],
        description =
        format(
            "Collect {0} animals in Round {1} without using a continue (default settings)",
            animals_array[i][2],
            i + 1
        ),
        points = animals_array[i][1],
        trigger =
            p2_protection &&
            disable_when(
                p1_lives == 0 &&
                p1_death
            ) &&
            disable_when(
                p2_lives == 0 &&
                p2_death
            ) &&
            logic_param &&
            measured(
                tally_of(
                    object_colour_array,
                    animals_array[i][2],
                    f =>
                        prev(byte(f)) != 0xe9 &&
                        byte(f) == 0xe9
                ),
                when = default_dips
            ) &&
            (
                (
                    p1_active_only &&
                    never(attract_mode) &&
                    never(round != i + 1)
                ) ||
                (
                    p2_active_only
                )
            )
    )
    current_id = current_id + 1
}

achievement(
    id = id_array[current_id],
    title = "Fisherman's Feast",
    description = "Defeat all 40 fish creatures in the Bonus Scene (default settings)",
    points = 10,
    trigger =
        p2_protection &&
        disable_when(
            round_5_start,
            until = defeat_boss_alt
        ) &&
        measured(
            tally_of(
                object_colour_array,
                40,
                f =>
                    prev(byte(f)) != 0xe9 &&
                    byte(f) == 0xe9 &&
                    never(defeat_boss_alt)
            ),
            when = default_dips
        ) &&
        (
            (
                p1_active_only &&
                never(attract_mode) &&
                never(round != 5)
            ) ||
            (
                p2_active_only
            )
        )
)

current_id = current_id + 1

achievement(
    id = id_array[current_id],
    title = "Hometown Hero",
    description = "Complete Round 1 without being harmed, and without using magic on the boss (default settings)",
    points = 5,
    trigger =
        default_settings &&
        disable_when(p1_health < prev(p1_health)) &&
        disable_when(p2_health < prev(p2_health)) &&
        disable_when(p1_lives < prev(p1_lives)) &&
        disable_when(p2_lives < prev(p2_lives)) &&
        no_magic_boss &&
        trigger_when(defeat_boss) &&
        (
            (
                p1_active_only &&
                round_1_protection_p1 &&
                never(attract_mode) &&
                never(round != 1)
            ) ||
            (
                p2_active_only &&
                round_1_protection_p2
            )
        )
)

current_id = current_id + 1

deathless_array = [
    ["Fiercest Foe in the Land", 5, defeat_boss],
    ["Merely Kabuki Theatre", 5, defeat_boss_alt],
    ["All Eyes on Me", 10, defeat_boss],
    ["A Flood of Pain", 10, defeat_boss_alt],
    ["Oh, Jackie Boy, The Pipes, The Pipes Are Calling", 25, defeat_boss_alt]
]

for i in range(0, 4) {
    if (i == 0 || i == 2) {
        description_param = ""
        logic_param = no_magic_boss
        reset_param = never(round != i + 2)
    }
    else if (i == 1 || i == 3) {
        description_param = ""
        logic_param = no_magic_boss_alt
        reset_param = never(round != i + 2)
    }
    else {
        description_param = "es more than twice"
        logic_param =
            two_magic_boss &&
            trigger_when(round_6_start)
        reset_param =
            never(
                round != 6 &&
                round != 7 &&
                round != 8
            )
    }
    achievement(
        id = id_array[current_id],
        title = deathless_array[i][0],
        description =
            format(
                "Complete Round {0} without taking 12 health units' worth of damage, and without using magic on the boss{1} (default settings)",
                i + 2,
                description_param
            ),
        points = deathless_array[i][1],
        trigger =
            default_settings &&
            disable_when(p1_damage_counter) &&
            disable_when(p2_damage_counter) &&
            logic_param &&
            trigger_when(deathless_array[i][2]) &&
            (
                (
                    p1_active_only &&
                    never(attract_mode) &&
                    reset_param
                ) ||
                (
                    p2_active_only
                ) ||
                (
                    measured(
                        p1_damage_counter,
                        when =
                            default_dips &&
                            p1_active_only
                    )
                ) ||
                (
                    measured(
                        p2_damage_counter,
                        when =
                            default_dips &&
                            p2_active_only
                    )
                )
            )
    )
    current_id = current_id + 1
}

achievement(
    id = 459880,
    badge = "520611",
    title = "Blazing Sands",
    description = "Defeat the boss in Round 4 without dying, without using magic, and without standing in the bottom of the area for more than 1 second (default settings)",
    points = 10,
    trigger =
        default_settings &&
        disable_when(
            boss_activity == 1 &&
            p1_death
        ) &&
        disable_when(
            boss_activity == 1 &&
            p2_death
        ) &&
        no_magic_boss &&
        unless(
            repeated(60,
                boss_activity == 1 &&
                camera_y_position <= 0x70
            )
        ) &&
        trigger_when(defeat_boss) &&
        (
            (
                p1_active_only &&
                never(attract_mode) &&
                never(round != 4)
            ) ||
            (
                p2_active_only
            ) ||
            (
                measured(
                    repeated(60,
                        boss_activity == 1 &&
                        camera_y_position <= 0x70
                    ),
                    when =
                        default_dips
                )
            )
        )
)

achievement(
    id = 459881,
    badge = "520612",
    title = "Master of Puppets",
    description = "Defeat the puppet boss in Round 6 without dying, without using magic, and without standing at the top of the area for more than 1 second (default settings)",
    points = 10,
    trigger =
        default_settings &&
        disable_when(
            boss_activity == 1 &&
            p1_death
        ) &&
        disable_when(
            boss_activity == 1 &&
            p2_death
        ) &&
        no_magic_boss &&
        unless(
            repeated(60,
                boss_activity == 1 &&
                p1_y_position >= 0xa0
            )
        ) &&
        unless(
            repeated(60,
                boss_activity == 1 &&
                p2_y_position >= 0xa0
            )
        ) &&
        trigger_when(defeat_boss) &&
        (
            (
                p1_active_only &&
                never(attract_mode) &&
                never(round != 6)
            ) ||
            (
                p2_active_only
            ) ||
            (
                measured(
                    repeated(60,
                        boss_activity == 1 &&
                        p1_y_position >= 0xa0
                    ),
                    when =
                        default_dips &&
                        p1_active_only
                )
            ) ||
            (
                measured(
                    repeated(60,
                        boss_activity == 1 &&
                        p2_y_position >= 0xa0
                    ),
                    when =
                        default_dips &&
                        p2_active_only
                )
            )
        )
)

cc_array = [
    ["Got 3 Coins in My Pocket", "using 2 or fewer continues", 25],
    ["The Big Radish", "without using a continue", 50]
]

for i in range(0, 1) {
    if (i == 0) {
        logic_param =
            unless(
                repeated(3,
                    p1_lives == 0 &&
                    p1_death
                )
            ) &&
            unless(
                repeated(3,
                    p2_lives == 0 &&
                    p2_death
                )
            )
    }
    else {
        logic_param =
            disable_when(
                p1_lives == 0 &&
                p1_death
            ) &&
            disable_when(
                p2_lives == 0 &&
                p2_death
            )
    }
    achievement(
        id = id_array[current_id],
        title = cc_array[i][0],
        description =
            format(
                "Starting from Round 1, complete the game {0} (default settings)",
                cc_array[i][1]
            ),
        points = cc_array[i][2],
        trigger =
            default_settings &&
            logic_param &&
            trigger_when(round == 7) &&
            trigger_when(defeat_boss_alt) &&
            (
                (
                    p1_active_only &&
                    round_1_start_p1 &&
                    never(attract_mode)
                ) ||
                (
                    p2_active_only &&
                    round_1_start_p2
                )
            )
    )
    current_id = current_id + 1
}

achievement(
    id = id_array[current_id],
    title = "This Is So Wizard",
    description = "Cast all 6 spells in one session (default settings)",
    points = 5,
    trigger =
        p2_protection &&
        (
            (
                measured(
                    tally(6,
                        once(score_display_glitter && p1_use_magic),
                        once(score_display_fairy && p1_use_magic),
                        once(score_display_rapman && p1_use_magic),
                        once(score_display_mikata && p1_use_magic),
                        once(score_display_stampede && p1_use_magic),
                        once(score_display_tornado && p1_use_magic)
                    ),
                    when =
                        default_dips &&
                        p1_active_only
                ) &&
                never(attract_mode)
            ) ||
            (
                measured(
                    tally(6,
                        once(score_display_glitter && p2_use_magic),
                        once(score_display_fairy && p2_use_magic),
                        once(score_display_rapman && p2_use_magic),
                        once(score_display_mikata && p2_use_magic),
                        once(score_display_stampede && p2_use_magic),
                        once(score_display_tornado && p2_use_magic)
                    ),
                    when =
                        default_dips &&
                        p2_active_only
                )
            )
        )
)

current_id = current_id + 1

achievement(
    id = id_array[current_id],
    title = "How Do You Do, Sir",
    description = "Free a pink elephant from a mysterious door (default settings)",
    points = 5,
    trigger =
        default_settings &&
        free_pink_elephant &&
        (
            (
                p1_active_only &&
                never(attract_mode) &&
                never(round != 3)
            ) ||
            (
                p2_active_only
            )
        )
)

// ------------
// Leaderboards
// ------------

leaderboard(
    id = 114712,
    title = "High Score",
    description = "Submits at continue/game over or after beating the game (default settings)",
    start =
        default_settings &&
        (
            (
                p1_active_only &&
                p1_score > 0 &&
                p1_lives == 0 &&
                p1_death &&
                never(attract_mode)
            ) ||
            (
                p1_active_only &&
                p1_score > 0 &&
                round == 7 &&
                defeat_boss_alt
            ) ||
            (
                p2_active_only &&
                p2_score > 0 &&
                p2_lives == 0 &&
                p2_death
            ) ||
            (
                p2_active_only &&
                p2_score > 0 &&
                round == 7 &&
                defeat_boss_alt
            )
        ),
    cancel = always_false(),
    submit = always_true(),
    value =
        max_of(
            measured(
                p1_score,
                when = p1_active_only
            ),
            measured(
                p2_score,
                when = p2_active_only
            )
        ),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

round_dict = {
    1: "in Round 1 •",
    2: "in Round 2 •",
    3: "in Round 3 •",
    4: "in Round 4 •",
    5: "in Round 5 •",
    6: "in Round 6 •",
    7: "vs. Jack O'Colson!",
    8: "saved Radishland!"
}

rich_presence_conditional_display(
    p1_active_only && round >= 1,
    "Zac {0} Lives: {1} • Score: {2}",
    rich_presence_lookup("Round", round, round_dict),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Score", p1_score)
)

rich_presence_conditional_display(
    p2_active_only && round >= 1,
    "Mel {0} Lives: {1} • Score: {2}",
    rich_presence_lookup("Round", round, round_dict),
    rich_presence_value("Lives", p2_lives),
    rich_presence_value("Score", p2_score)
)

rich_presence_conditional_display(
    both_players_active && round >= 1,
    "Zac & Mel {0} P1 Lives: {1} • P2 Lives: {2} • P1 Score: {3} • P2 Score: {4}",
    rich_presence_lookup("Round", round, round_dict),
    rich_presence_value("Lives", p1_lives),
    rich_presence_value("Lives", p2_lives),
    rich_presence_value("Score", p1_score),
    rich_presence_value("Score", p2_score)
)

rich_presence_display(
    "Dealing with the schemes of the magnificent Jack O'Colson"
)

// -------------
// Formerly Used
// -------------

                    // prev(p1_health) > 0 && prev(p1_health) < 216 && p1_health >= 216,
                    // prev(p1_health) > 8 && prev(p1_health) < 216 && p1_health >= 216,
                    // prev(p1_health) > 16 && prev(p1_health) < 216 && p1_health >= 216,
                    // prev(p1_health) > 24 && prev(p1_health) < 216 && p1_health >= 216,
                    // prev(p1_health) > 32 && prev(p1_health) < 216 && p1_health >= 216,

                    // prev(p2_health) > 0 && prev(p2_health) < 216 && p2_health >= 216,
                    // prev(p2_health) > 8 && prev(p2_health) < 216 && p2_health >= 216,
                    // prev(p2_health) > 16 && prev(p2_health) < 216 && p2_health >= 216,
                    // prev(p2_health) > 24 && prev(p2_health) < 216 && p2_health >= 216,
                    // prev(p2_health) > 32 && prev(p2_health) < 216 && p2_health >= 216,