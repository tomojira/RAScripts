// Magical Night Dreams: Cotton 2
// #ID = 3604

// $157DD5: Credits [8-bit]
//          Always 9 in Training Mode, otherwise always 8 or lower in-game
// $15A2F6: 0x22 = Boss defeated
// $15C776: Stage Progress [16-bit]
//          Stops at boss
//          Editing freezes the game
// $15C782: Stage Progress [16-bit]
//          0x0020 = Stage beginning
//          0x17f1 = Stage 1 boss
//          0x1efc = Stage 2 boss
//          0x1aa8 = Stage 3 boss
//          0x1d52 = Stage 4 boss
//          0x2efa = Stage 5 boss
//          0x27ae = Stage 6 boss - 0x280e on Saturn Mode
//          Stops at boss
//          Editing messes with graphics
// $16286A: Stage Progress [16-bit]
//          Stops at boss
//          Editing messes with graphics
// $162AA2: Frame Counter [16-bit]
//          Resets to 0 at the beginning of every stage/scene (before screen/stage ID changes)
//          Continues at boss
//          Stops while paused
// $162BE4: 0x02 = Boss defeated
//          Still applies in Stage 7
//          Unreliable
// $1652DA: Stage Progress [16-bit]
//          Stops at boss
//          Editing messes with graphics
// $169E22: Frame Counter [16-bit]
//          Resets to 0 at the beginning of every stage (1 frame after screen/stage ID changes)
//          Cotninues at boss
//          Continues while paused
// $169E30: Previous Screen/Stage [8-bit]
// $169E33: Screen/Stage [8-bit]
//          0x01 = Title screen
//          0x02 = Main menu
//          0x03 = Transition from main menu
//          0x05 to 0x0b = Stage 1 to 7
//          0x0c = Opening scene
//          0x0d to 0x12 = Stage 1 to 6 end scenes
//          0x13 = Ending, credits
//          0x14 = Ranking/name entry after game over, beating game, or demo
//          0x16 = Options
//          0x17 = Ranking from main menu
//          0x1d = Success logo
// $169E34: Demo Active [8-bit]
// $169E3D: P1 Active [8-bit]
// $169EA5: P2 Active [8-bit]
// $169EC9: Stage [8-bit]
//          0x00 to 0x06 = Stage 1 to 7
//          0x07 = Ending
//          Increments at cutscene before next stage actually begins (also before screen/stage ID changes)
// $169F10: Difficulty Option [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
//          0x03 = Hardest
// $169F11: Game Mode [8-bit]
//          0x00 = Arcade (Default)
//          0x01 = Saturn
// $169F12: Left (Lives) Option [8-bit]
//          0x00 to 0x03
//          0x00 = Default
// $169F13: Vitality Option [8-bit]
//          0x00 = Smallest
//          0x01 = Small
//          0x02 = Normal (Default)
//          0x03 = Large
//          0x04 = Largest
// $169F14: Audio Option [8-bit]
//          0x00 = Mono
//          0x01 = Stereo (Default)
// $169F15: Button Option [8-bit]
//          0x00 = Type-A (Default)
//          0x01 = Type-B
//          0x02 = Type-C
//          0x03 = Type-D
// $169F16: Visual Option [8-bit]
//          0x00 = On (Default)
//          0x01 = Off
//          Turns off cutscenes
// $169F17: Player Option [8-bit]
//          0x00 = P1 Cotton, P2 Appli (Default)
//          0x01 = P1 Appli, P2 Cotton
// $169F19: Pad-XYZ Option [8-bit]
//          0x00 = None (Default)
//          0x01 = Rapid
//          0x02 = Command
// $16AAFC: Training Mode Unlocked [8-bit]
//          A mode with unlimited credits
//          Unlocked by cheat
// $16AAFD: Secret Options Unlocked [8-bit]
//          0x01 = Player
//          0x02 = Player, Visual
//          0x03 = Player, Visual, Pad-XYZ
//          0x04 = Player, Visual, Pad-XYZ, Sound
//          Beating the game on easy gives 0x01, normal gives 0x02, hard or hardest gives 0x03
//          Cheat gives 0x04
// $16AAFF: Game Beaten Count [8-bit]
// $1A561E: Stage Number Display [8-bit]
// $1DC0E2: Pointer [16-bit]
//          
//          +0x1e0002 = Stage Completion [8-bit]
//          0x03 = Boss defeated or time runs out, Tea Time
//          0x04 = Score results, cutscene
//          Setting this to 0x03 or 0x04 will instantly end Stage 1-6
//          Doesn't apply to Stage 7
//          
//          +0x1e0013 = Boss Active [8-bit]
//          
//          +0x1e001c = Boss Timer [16-bit]
//          
//          +0x1e00a4 = P1 Max Hits in Current Playthrough [8-bit]
//          
//          +0x1e00a6 = P2 Max Hits in Current Playthrough [8-bit]
//          
//          +0x1e00aa = P1 Max Chain in Current Playthrough [8-bit]
//          
//          +0x1e00ac = P2 Max Chain in Current Playthrough [8-bit]
//          
//          +0x1e00b0 = P1 Score in Current Stage [32-bit BE Swizzled]
//          
//          +0x1e00b4 = P2 Score in Current Stage [32-bit BE Swizzled]
//          
//          +0x1e00b8 = P1 Max Hits in Current Stage [8-bit]
//          
//          +0x1e00ba = P2 Max Hits in Current Stage [8-bit]
//          
//          +0x1e00bc = P1 Max Chain in Current Stage [8-bit]
//          
//          +0x1e00be = P2 Max Chain in Current Stage [8-bit]
//          
//          +0x1e00ee = P1 Lighter Tea Cups Collected [8-bit]
//          Determines Attack Bonus
//          
//          +0x1e00f0 = P2 Lighter Tea Cups Collected [8-bit]
//          
//          +0x1e00f2 = P1 Darker Tea Cups Collected [8-bit]
//          Determines Attack Bonus
//          
//          +0x1e00f4 = P2 Darker Tea Cups Collected [8-bit]
//          
//          +0x1e00f6 = P1 All Chains Total in Current Stage [8-bit]
//          Determines Technical Bonus
//          
//          +0x1e00f8 = P2 All Chains Total in Current Stage [8-bit]
// $1DC10E: Pointer [16-bit]
// $1DC13A: Pointer [16-bit]
// $1DC586: P1 Pointer [16-bit]
//          Changes after beginning Stage 7
//          Crashes game when modified
//          Points to irrelevant values during cutscenes
//          
//          +0x1e0156 = Current Elemental Crystal [8-bit]
//          0x00 = None
//          0x01 = Fire
//          0x02 = Ice
//          0x03 = Light
//          0x04 = Wind
//          
//          +0x1e015e = Invincibility Active [8-bit]
//          0x07
//          
//          +0x1e0170 = Health [8-bit]
//          Start with 0x30. Max increases by 0x10 after using a continue, up to 0x60.
//          0xff at death
//          
//          +0x1e017c = Damage Enemies on Contact [8-bit]
//          0x0c
//          When combined with Invincibility Active at 0x07
//          
//          0x1e0de8 = Special Attack Used [8-bit]
//          0x01 = 4646C - Magic Discard
//          0x02 = 46A - Tornado Shot
//          0x03 = 64A - Wide Shot
//          0x04 = 698A - Upward Side Shot
//          0x05 = 632A - Downward Side Shot
//          
//          +0x1e0de9 = Magic or Special Attack Used [8-bit]
//          0x01 = Use or discard magic
//          0x02 = 66A, 44A, 22A, 88A - Bomb
//          
//          +0x1e0deb = Last Element Used [8-bit]
//          Includes normal attacks, special attacks, and magic
//          
//          +0x1e0e28 = Score [32-bit BE Swizzled]
//          
//          +0x1e0e2e = Level [8-bit]
//          
//          +0x1e0e32 = Experience [16-bit]
//          0x0380 = Max at Level 5
//          Yellow crystals give 0x28 (40)
//          
//          +0x1e0e48 = Heavy Damage on Contact [8-bit]
//          0x01
//          When combined with Invincibility Active at 0x07, Damage Enemies on Contact at 0x0c, and Invincibility Timer 1 at 0x02+
//          
//          +0x1e0e4a = Invincibility Timer 1 [8-bit]
//          Starts at 0x30 after taking damage, 0x81 after continuing
//          Frozen alone - Doesn't blink, no damage, has collision with enemies
//          
//          +0x1e0e4e = Invincibility Timer 2 [8-bit]
//          Starts at 0x30 after taking damage
//          Frozen alone - Blinks, no damage, no collision with enemies
//          
//          +0x1e0e58 = Continues Used [8-bit]
//          Add to score
// $1DC662: P2 Pointer [16-bit]
//          Changes after beginning Stage 7
//          Crashes game when modified
//          Points to irrelevant values during cutscenes
//          
//          +0x1e0f62 = Current Elemental Crystal [8-bit]
//          
//          +0x1e0f6a = Invincibility Active [8-bit]
//          
//          +0x1e0f7c = Health [8-bit]
//          
//          +0x1e0f88 = Damage Enemies on Contact [8-bit]
//          
//          +0x1e1bf4 = Special Attack Used [8-bit]
//          
//          +0x1e1bf5 = Magic or Special Attack Used [8-bit]
//          
//          +0x1e1bf7 = Last Element Used [8-bit]
//          
//          +0x1e1c34 = Score [32-bit BE Swizzled]
//          
//          +0x1e1c3a = Level [8-bit]
//          
//          +0x1e1c3e = Experience [16-bit]
//          
//          +0x1e1c54 = Heavy Damage on Contact [8-bit]
//          
//          +0x1e1c56 = Invincibility Timer 1 [8-bit]
//          
//          +0x1e1c5a = Invincibility Timer 2 [8-bit]
//          
//          +0x1e1c64 = Continues Used [8-bit]
// $1DC68E: P2 Pointer [16-bit]
// $1DEE3E: P1 Pointer [16-bit]
//          Changes after beginning Stage 7
//          Doesn't crash game when modified
//          Still points to relevant values during cutscenes
//          
//          +0x1dff96 = Current Elemental Crystal [8-bit]
//          0x00 = None
//          0x01 = Fire
//          0x02 = Ice
//          0x03 = Light
//          0x04 = Wind
//          
//          +0x1dff9e = Invincibility Active [8-bit]
//          0x07
//          
//          +0x1dffb0 = Health [8-bit]
//          Start with 0x30. Max increases by 0x10 after using a continue, up to 0x60.
//          0xff at death
//          
//          +0x1dffbc = Damage Enemies on Contact [8-bit]
//          0x0c
//          When combined with Invincibility Active at 0x07
//          
//          +0x1e0c28 = Special Attack Used [8-bit]
//          0x01 = 4646C - Magic Discard
//          0x02 = 46A - Tornado Shot
//          0x03 = 64A - Wide Shot
//          0x04 = 698A - Upward Side Shot
//          0x05 = 632A - Downward Side Shot
//          
//          +0x1e0c29 = Magic or Special Attack Used [8-bit]
//          0x01 = Use or discard magic
//          0x02 = 66A, 44A, 22A, 88A - Bomb
//          
//          +0x1e0c2b = Last Element Used [8-bit]
//          Includes normal attacks, special attacks, and magic
//          
//          +0x1e0c68 = Score [32-bit BE Swizzled]
//          
//          +0x1e0c6e = Level [8-bit]
//          
//          +0x1e0c72 = Experience [16-bit]
//          0x0380 = Max at Level 5
//          Yellow crystals give 0x28 (40)
//          
//          +0x1e0c88 = Heavy Damage on Contact [8-bit]
//          0x01
//          When combined with Invincibility Active at 0x07, Damage Enemies on Contact at 0x0c, and Invincibility Timer 1 at 0x02+
//          
//          +0x1e0c8a = Invincibility Timer 1 [8-bit]
//          Starts at 0x30 after taking damage, 0x81 after continuing
//          Frozen alone - Doesn't blink, no damage, has collision with enemies
//          
//          +0x1e0c8e = Invincibility Timer 2 [8-bit]
//          Starts at 0x30 after taking damage
//          Frozen alone - Blinks, no damage, no collision with enemies
//          
//          +0x1e0c98 = Continues Used [8-bit]
// $1DEE7A: P2 Pointer [16-bit]
//          Changes after beginning Stage 7
//          Doesn't crash game when modified
//          Still points to relevant values during cutscenes
//          
//          +0x1e0da2 = Current Elemental Crystal [8-bit]
//          
//          +0x1e0daa = Invincibility Active [8-bit]
//          
//          +0x1e0dbc = Health [8-bit]
//          
//          +0x1e0dc8 = Damage Enemies on Contact [8-bit]
//          
//          +0x1e1a34 = Special Attack Used [8-bit]
//          
//          +0x1e1a35 = Magic or Special Attack Used [8-bit]
//          
//          +0x1e1a37 = Last Element Used [8-bit]
//          
//          +0x1e1a74 = Score [32-bit BE Swizzled]
//          
//          +0x1e1a7a = Level [8-bit]
//          
//          +0x1e1a7e = Experience [16-bit]
//          
//          +0x1e1a94 = Heavy Damage on Contact [8-bit]
//          
//          +0x1e1a96 = Invincibility Timer 1 [8-bit]
//          
//          +0x1e1a9a = Invincibility Timer 2 [8-bit]
//          
//          +0x1e1aa4 = Continues Used [8-bit]
// $1E2166: 0x03 = Boss defeated or time runs out, Tea Time
//          0x04 = Score results, cutscene
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2208: P1 Max Hits in Current Playthrough [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E220A: P2 Max Hits in Current Playthrough [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E220E: P1 Max Chain in Current Playthrough [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2210: P2 Max Chain in Current Playthrough [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2214: P1 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2218: P2 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E221C: P1 Max Hits in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E221E: P2 Max Hits in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2220: P1 Max Chain in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2222: P2 Max Chain in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2252: P1 Tea Cups Collected [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E2254: P2 Tea Cups Collected [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E225A: P1 All Chains Total in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E225C: P2 All Chains Total in Current Stage [8-bit]
//          Cart: Non-Extended RAM, Playthrough 1
// $1E248C: 0x00 = Cart: Non-Extended RAM, Playthrough 1
//          0x07 = Cart: Any, Playthrough 2+, sometimes Playthrough 1
//          0x08 = Cart: Extended RAM, Playthrough 1
// $1E24A6: 0x03 = Boss defeated or time runs out, Tea Time
//          0x04 = Score results, cutscene
//          Setting this to 0x03 or 0x04 will instantly end Stage 1-6
//          Doesn't apply to Stage 7
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E24B7: 0x01 = Boss active
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E24BA: Boss health pointer?
// $1E24C0: Boss Timer [16-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E24C2: 0x03 = Boss defeated or time runs out, Tea Time
//          0x04 = Score results, cutscene
//          Cart: Extended RAM, Playthrough 1
// $1E2540: P1 Current Chain [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2542: P1 Current Subchain [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2543: P2 Current Chain [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2545: P2 Current Subchain [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2548: P1 Max Hits in Current Playthrough [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E254A: P2 Max Hits in Current Playthrough [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E254E: P1 Max Chain in Current Playthrough [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2550: P2 Max Chain in Current Playthrough [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2554: P1 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2558: P2 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E255A: Secret Bonus [16-bit]
//          0xc350 (50,000)
//          Only when playing 1P - otherwise this is used for P2's score
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E255C: P1 Max Hits in Current Stage [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E255E: P2 Max Hits in Current Stage [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2560: P1 Max Chain in Current Stage [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2562: P2 Max Chain in Current Stage [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2564: P1 Max Hits in Current Playthrough [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E2566: P2 Max Hits in Current Playthrough [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E256A: P1 Max Chain in Current Playthrough [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E256C: P2 Max Chain in Current Playthrough [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E2570: P1 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Extended RAM, Playthrough 1
// $1E2574: P2 Score in Current Stage [32-bit BE Swizzled]
//          Cart: Extended RAM, Playthrough 1
// $1E2578: P1 Max Hits in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E257A: P2 Max Hits in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E257C: P1 Max Chain in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E257E: P2 Max Chain in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E2592: P1 Lighter Tea Cups Collected [8-bit]
//          Determines Attack Bonus
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2594: P2 Lighter Tea Cups Collected [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2596: P1 Darker Tea Cups Collected [8-bit]
//          Determines Attack Bonus
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E2598: P2 Darker Tea Cups Collected [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E259A: P1 All Chains Total in Current Stage [8-bit]
//          Determines Technical Bonus
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E259C: P2 All Chains Total in Current Stage [8-bit]
//          Cart: Any, Playthrough 2+, sometimes Playthrough 1
// $1E25AE: P1 Tea Cups Collected [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E25B0: P2 Tea Cups Collected [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E25B6: P1 All Chains Total in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E25B8: P2 All Chains Total in Current Stage [8-bit]
//          Cart: Extended RAM, Playthrough 1
// $1E25E2: Stage [8-bit]
//          0x00 to 0x06 = Stage 1 to 7
//          0xff = Stage 7 ends, also transition to opening scene
//          0x0a = Ending
//          0xd4 = Title screen
//          0x08 = Opening scene
// $1E4582: 0x04 = Boss defeated
//          0x05 = Timer runs out
// $1E4606: P1 Experience Gauge Display [8-bit]
//          0x24 = Max
//          Dynamic
// $1E9A4C: Boss 7 Health [16-bit]
//          0x0200 = Max
//          Dynamic, needs pointer
// $1EAB00: Boss 4 Health [16-bit]
// $1EAD7C: Boss 4 Health [16-bit]
// $1EB240: Boss 4 Health [16-bit]
// $1EB274: Boss 4 Health [16-bit]
//          0x0280 = Max
//          Dynamic, needs pointer
// $1EB408: Boss 1 Health [16-bit]
//          0x0200 = Max
//          Dynamic, needs pointer
// $1EB478: Boss 4 Health [16-bit]
// $1EB4A4: Current Hits [8-bit]
//          Dynamic, needs pointer
// $1EB6B0: Boss 4 Health [16-bit]
// $1EC388: Boss 2 Health [16-bit]
//          0x0400 = Max
//          Dynamic, needs pointer
// $1EE72C: Boss 3 Health [16-bit]
//          0x0400 = Max
//          Dynamic, needs pointer

credits = byte(0x157dd5)

stage_progress_alt = word(0x15c782)

stage_progress = word(0x162aa2)
boss_defeated = byte(0x162be4) == 2

demo_activity = byte(0x169e34)
p1_activity = byte(0x169e3d)
p2_activity = byte(0x169ea5)
screen = byte(0x169e33)
stage = byte(0x169ec9)

difficulty_option = byte(0x169f10)
game_mode = byte(0x169f11)
lives_option = byte(0x169f12)
vitality_option = byte(0x169f13)
player_option = byte(0x169f17)
xyz_option = byte(0x169f19)

pointer = word(0x1dc0e2)
stage_completion = byte(pointer + 0x1e0002)
boss_activity = byte(pointer + 0x1e0013)
boss_timer = word(pointer + 0x1e001c)

p1_score_stage =
    word(pointer + 0x1e00b0) * 0x10000 +
    word(pointer + 0x1e00b2)

p2_score_stage =
    word(pointer + 0x1e00b4) * 0x10000 +
    word(pointer + 0x1e00b6)

p1_max_hits_stage = byte(pointer + 0x1e00b8)
p2_max_hits_stage = byte(pointer + 0x1e00ba)
p1_max_chain_stage = byte(pointer + 0x1e00bc)
p2_max_chain_stage = byte(pointer + 0x1e00be)
p1_light_tea_cups = word(pointer + 0x1e00ee)
p2_light_tea_cups = word(pointer + 0x1e00f0)
p1_dark_tea_cups = word(pointer + 0x1e00f2)
p2_dark_tea_cups = word(pointer + 0x1e00f4)
p1_all_chains_total = word(pointer + 0x1e00f6)
p2_all_chains_total = word(pointer + 0x1e00f8)

p1_pointer = word(0x1dc586)
p1_element = byte(p1_pointer + 0x1e0156)
p1_health = byte(p1_pointer + 0x1e0170)

p1_level = byte(p1_pointer + 0x1e0e2e)
p1_continues_used = byte(p1_pointer + 0x1e0e58)

p1_score =
    word(p1_pointer + 0x1e0e28) * 0x10000 +
    word(p1_pointer + 0x1e0e2a) +
    p1_continues_used

p2_pointer = word(0x1dc662)
p2_element = byte(p2_pointer + 0x1e0f62)
p2_health = byte(p2_pointer + 0x1e0f7c)

p2_level = byte(p2_pointer + 0x1e1c3a)
p2_continues_used = byte(p2_pointer + 0x1e1c64)

p2_score =
    word(p2_pointer + 0x1e1c34) * 0x10000 +
    word(p2_pointer + 0x1e1c36) +
    p2_continues_used

p1_pointer_alt = word(0x1dee3e)
p1_element_alt = byte(p1_pointer_alt + 0x1dff96)
p1_health_alt = byte(p1_pointer_alt + 0x1dffb0)

p1_level_alt = byte(p1_pointer_alt + 0x1e0c6e)
p1_continues_used_alt = byte(p1_pointer_alt + 0x1e0c98)

p1_score_alt =
    word(p1_pointer_alt + 0x1e0c68) * 0x10000 +
    word(p1_pointer_alt + 0x1e0c6a) +
    p1_continues_used_alt

p2_pointer_alt = word(0x1dee7a)
p2_element_alt = byte(p2_pointer_alt + 0x1e0da2)
p2_health_alt = byte(p2_pointer_alt + 0x1e0dbc)

p2_level_alt = byte(p2_pointer_alt + 0x1e1a7a)
p2_continues_used_alt = byte(p2_pointer_alt + 0x1e1aa4)

p2_score_alt =
    word(p2_pointer_alt + 0x1e1a74) * 0x10000 +
    word(p2_pointer_alt + 0x1e1a76) +
    p2_continues_used_alt

//
//
//

start_stage =
    prev(stage_progress) == 0 &&
    stage_progress > 0

// 0x17f1 = Stage 1 boss
// 0x1efc = Stage 2 boss
// 0x1aa8 = Stage 3 boss
// 0x1d52 = Stage 4 boss
// 0x2efa = Stage 5 boss
// 0x27ae = Stage 6 boss

stage_1_boss = stage_progress_alt >= 0x17f1
stage_2_boss = stage_progress_alt >= 0x1efc
stage_3_boss = stage_progress_alt >= 0x1aa8
stage_4_boss = stage_progress_alt >= 0x1d52
stage_5_boss = stage_progress_alt >= 0x2efa
stage_6_boss = stage_progress_alt >= 0x27ae

p1_active = p1_activity == 1
p2_active = p2_activity == 1

both_players_active =
    p1_active &&
    p2_active

main_menu = screen == 2

no_p2 =
    disable_when(
        p2_active,
        until = main_menu
    )

start_game =
    screen == 5 &&
    start_stage

start_stage_2 =
    screen == 6 &&
    start_stage

complete_game =
    prev(screen) == 0xb &&
    screen == 0x13

default_options =
    demo_activity == 0 &&
    credits < 9 &&
    lives_option == 0 &&
    vitality_option <= 2

default_options_1p =
    default_options &&
    no_p2

normal_options =
    default_options_1p &&
    difficulty_option >= 1

hardest_options =
    default_options_1p &&
    difficulty_option == 3

default_options_2p =
    default_options &&
    both_players_active

normal_options_2p =
    default_options_2p &&
    difficulty_option >= 1

hardest_options_2p =
    default_options_2p &&
    difficulty_option == 3

complete_stage =
    prev(stage_completion) == 3 &&
    stage_completion == 4

defeat_boss =
    prev(stage_completion) == 0 &&
    stage_completion == 3

p1_tea_cups = p1_light_tea_cups + p1_dark_tea_cups
p2_tea_cups = p2_light_tea_cups + p2_dark_tea_cups

p1_death =
    prev(p1_health) <= 0x60 &&
    p1_health == 0xff

p1_reach_level_5 =
    prev(p1_level) < 4 &&
    p1_level == 4

p2_death =
    prev(p2_health) <= 0x60 &&
    p2_health == 0xff

p2_reach_level_5 =
    prev(p2_level) < 4 &&
    p2_level == 4

//
//
//

stage_dict = {}

for i in range(5, 0xb) {
    stage_dict[i] = format("{0}", i - 4)
}

for i in range(0xd, 0x12) {
    stage_dict[i] = format("{0}", i - 12)
}

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard",
    3: "Hardest"
}

mode_dict = {
    0: "Arcade",
    1: "Saturn"
}

p1_character_dict = {
    0: "Cotton",
    1: "Appli"
}

p2_character_dict = {
    0: "Appli",
    1: "Cotton"
}

element_dict ={
    0: "",
    1: "🔥",
    2: "🧊",
    3: "☀️",
    4: "🌪️"
}

// ------------
// Achievements
// ------------

progress_array = [
    ["Hand Over My Willow!", 3],
    ["Heeeeey!!", 3],
    ["It's Always Silk's Fault!", 3],
    ["Cotton the (Failed) Fortune Teller", 3],
    ["I'll Show You The Way! ...Hehe", 3],
    ["It's Payback Time!", 3]
]

progress_id_array = range(412853, 412858)

for i in range(0, 5) {
    achievement(
        id = progress_id_array[i],
        title = progress_array[i][0],
        description =
            format(
                "Complete Stage {0} on any difficulty with other settings on default",
                i + 1
            ),
        points = progress_array[i][1],
        type = "PROGRESSION",
        trigger =
            default_options_1p &&
            screen == i + 5 &&
            complete_stage
    )
}

achievement(
    id = 412859,
    title = "A Happy Ending...?",
    description = "Complete Stage 7 on any difficulty with other settings on default",
    points = 5,
    type = "WIN_CONDITION",
    trigger =
        default_options_1p &&
        complete_game
)

defeat_boss_array = [
    ["Onocombo'd to Death", "Onocombo", 3, stage_1_boss],
    ["Fauna's Ineffective Vengeance", "Biora MK II", 3, stage_2_boss],
    ["Deep Devil Destroyed", "Hell Octopus", 3, stage_3_boss],
    ["Dragon You Back to Your Prison", "Nikutama Dragon W", 3, stage_4_boss],
    ["Atone for Thy Sins", "Magma Priest", 3, stage_5_boss],
    ["You Let Your Guard Down!", "Bunbun Knight", 3, stage_6_boss]
]

defeat_boss_id_array = range(412860, 412865)

for i in range(0, 5) {
    achievement(
        id = defeat_boss_id_array[i],
        title = defeat_boss_array[i][0],
        description =
            format(
                "Defeat {0} in Stage {1} on Normal or higher difficulty with other settings on default",
                defeat_boss_array[i][1],
                i + 1
            ),
        points = defeat_boss_array[i][2],
        trigger =
            normal_options &&
            repeated(300,
                defeat_boss_array[i][3] &&
                stage_completion == 0 &&
                boss_activity == 0
            ) &&
            never(prev(stage_completion) == 3) &&
            never(screen != i + 5) &&
            defeat_boss
    )
}

achievement(
    id = 412866,
    title = "Third Time's the Charm",
    description = "Defeat Wool in Stage 7 on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options &&
        once(
            prev(boss_timer) > 0 &&
            prev(boss_activity) == 1 &&
            boss_activity == 0
        ) &&
        never(prev(screen) == 0x13) &&
        never(
            screen != 0xb &&
            screen != 0x13
        ) &&
        complete_game
)

character_array = [
    ["Think Cotton, Think!"],
    ["All Pretty Boys Are Mine!"]
]

character_id_array = [412867, 412868]

for i in range(0, 1) {
    achievement(
        id = character_id_array[i],
        title = character_array[i][0],
        description =
            format(
                "Complete the game as {0} on any difficulty with other settings on default",
                p1_character_dict[i]
            ),
        points = 5,
        trigger =
            default_options_1p &&
            player_option == i &&
            complete_game
    )
}

mode_array = [
    ["Magical Night at the Arcade", "Normal or higher", normal_options],
    ["Hard Night at the Arcade", "Hardest", hardest_options],
    ["Magical Dreams of Saturn", "Normal or higher", normal_options],
    ["Difficult Dreams of Saturn", "Hardest", hardest_options]
]
mode_array_index = 0

mode_id_array = range(412869, 412872)

for m in range(0, 1) {
    for d in range(0, 1) {
        achievement(
            id = mode_id_array[mode_array_index],
            title = mode_array[mode_array_index][0],
            description =
                format(
                    "Complete the game in {0} Mode on {1} difficulty with other settings on default",
                    mode_dict[m],
                    mode_array[mode_array_index][1]
                ),
            points = 10,
            trigger =
                mode_array[mode_array_index][2] &&
                game_mode == m &&
                complete_game
        )
        mode_array_index = mode_array_index + 1
    }
}

element_array = [
    ["Burn the Witch? I'll Burn You Instead!", "fire", 1],
    ["Wice Witch", "ice", 2],
    ["That Was a Breeze", "wind", 4],
    ["Shine Bright like a Willow", "light", 3]
]

element_id_array = range(412873, 412876)

for i in range(0, 3) {
    achievement(
        id = element_id_array[i],
        title = element_array[i][0],
        description =
            format(
                "Starting from Stage 2, complete the game using only the {0} element on Normal or higher difficulty with other settings on default",
                element_array[i][1]
            ),
        points = 10,
        trigger =
            once(
                default_options &&
                difficulty_option >= 1 &&
                start_stage_2 &&
                never(
                    screen >= 5 &&
                    screen <= 0xb &&
                    stage_progress > 0 &&
                    p1_element != element_array[i][2]
                ) &&
                never(main_menu)
            ) &&
            normal_options &&
            trigger_when(complete_game)
    )
}

achievement(
    id = 412877,
    title = "Relying on My Inner Magic",
    description = "Complete a stage from start to finish without any elemental crystals on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        once(
            default_options &&
            difficulty_option >= 1 &&
            screen >= 6 &&
            screen <= 0xb &&
            start_stage &&
            never(
                screen >= 6 &&
                screen <= 0xb &&
                stage_progress > 0 &&
                p1_element != 0
            ) &&
            never(main_menu)
        ) &&
        normal_options &&
        screen >= 6 &&
        (
            (
                screen <= 0xa &&
                trigger_when(complete_stage)
            ) ||
            (
                trigger_when(complete_game)
            )
        )
)

cc_array = [
    ["Death Won't Stop Me!", "using 2 or fewer continues", 25, credits >= 6],
    ["I Won’t Stop until I Got My Willows!", "without using a continue", 50, credits == 8]
]

cc_id_array = [412878, 412879]

for i in range(0, 1) {
    achievement(
        id = cc_id_array[i],
        title = cc_array[i][0],
        description =
            format(
                "Complete the game {0} on Normal or higher difficulty with other settings on default",
                cc_array[i][1]
            ),
        points = cc_array[i][2],
        trigger =
            normal_options &&
            cc_array[i][3] &&
            trigger_when(complete_game)
    )
}

achievement(
    id = 412880,
    title = "Weaving Witch I - Atop the Snowy Mountains",
    description = "Complete Stage 1 without being harmed on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options &&
        disable_when(
            stage_progress > 0 &&
            p1_health < prev(p1_health),
            until = screen != 5
        ) &&
        screen == 5 &&
        trigger_when(complete_stage)
)

damageless_array = [
    ["Weaving Witch II - Nature's Sanctuary", 5],
    ["Weaving Witch III - An Aquatic Adventure", 10],
    ["Weaving Witch IV - Deep Damp Caverns", 10],
    ["Weaving Witch V - Through the Fire and the Flames", 10],
    ["Weaving Witch VI - Unholy Place of Respite", 10]
]

damageless_id_array = range(412881, 412885)

for i in range(0, 4) {
    achievement(
        id = damageless_id_array[i],
        title = damageless_array[i][0],
        description =
            format(
                "Complete Stage {0} without dying on Normal or higher difficulty with other settings on default",
                i + 2
            ),
        points = damageless_array[i][1],
        trigger =
            normal_options &&
            disable_when(
                stage_progress > 0 &&
                p1_death,
                until = screen != i + 6
            ) &&
            screen == i + 6 &&
            trigger_when(complete_stage)
    )
}

achievement(
    id = 412886,
    title = "Weaving Witch VII - Wool Stikes Back",
    description = "Complete Stage 7 without dying on Normal or higher difficulty with other settings on default",
    points = 10,
    trigger =
        normal_options &&
        disable_when(
            stage_progress > 0 &&
            p1_death,
            until =
                screen != 0xb &&
                screen != 0x13
        ) &&
        prev(screen) == 0xb &&
        trigger_when(screen == 0x13)
)

achievement(
    id = 412887,
    title = "I'll Become Powerful for My Willows!",
    description = "Reach Level 5 on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options &&
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        p1_reach_level_5
)

chain_array = [
    ["Chaining Cotton I - Pumpkin Kingdom Outskirts"],
    ["Chaining Cotton II - Castle in the Sky"],
    ["Chaining Cotton III - Under the Sea"],
    ["Chaining Cotton IV - Cave of Confusion"],
    ["Chaining Cotton V - Murky Swamp"],
    ["Chaining Cotton VI - Mysterious Chapel"],
    ["Chaining Cotton VII - Wool's Final Stand"]
]

chain_id_array = range(412888, 412894)

for i in range(0, 6) {
    achievement(
        id = chain_id_array[i],
        title = chain_array[i][0],
        description =
            format(
                "Get a 50 chain in Stage {0} on Normal or higher difficulty with other settings on default",
                i + 1
            ),
        points = 5,
        trigger =
            normal_options &&
            screen == i + 5 &&
            stage_progress > 0 &&
            prev(p1_max_chain_stage) < 50 &&
            p1_max_chain_stage >= 50
    )
}

achievement(
    id = 412895,
    title = "Chaining Champion Cotton",
    description = "Get a 100 chain on Normal or higher difficulty with other settings on default",
    points = 10,
    trigger =
        normal_options &&
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        prev(p1_max_chain_stage) < 100 &&
        p1_max_chain_stage >= 100
)

achievement(
    id = 412896,
    title = "Give... Me... The... Willow!!",
    description = "Get 100 hits on a sealed enemy on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options &&
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        prev(p1_max_hits_stage) < 100 &&
        p1_max_hits_stage >= 100
)

achievement(
    id = 412897,
    title = "So Much Tea for Free",
    description = "Collect 35 tea cups during Tea Time on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        no_p2 &&
        prev(p1_tea_cups) < 35 &&
        measured(
            p1_tea_cups >= 35,
            when =
                default_options &&
                difficulty_option >= 1 &&
                screen >= 5 &&
                screen <= 0xa &&
                stage_completion == 3
        )
)

achievement(
    id = 412898,
    title = "No Tea for Me",
    description = "Avoid all tea cups during Tea Time and earn a Secret Bonus on Normal or higher difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options &&
        screen >= 5 &&
        screen <= 0xa &&
        p1_tea_cups == 0 &&
        complete_stage
)

achievement(
    id = 412899,
    title = "High Scoreceress",
    description = "Score 3,000,000 points on Normal or higher difficulty with other settings on default",
    points = 10,
    trigger =
        normal_options &&
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        prev(p1_score) < 3000000 &&
        p1_score >= 3000000
)

// ------------
// Leaderboards
// ------------

leaderboard_id_array = range(93092, 93443)
leaderboard_id_index = 0

for c in range(0, 1) {
    if (c == 0) {
        title_param_xyz = "No Command XYZ"
        logic_param_xyz = xyz_option <= 1
    }
    else {
        title_param_xyz = "Command XYZ"
        logic_param_xyz = xyz_option == 2
    }
    for m in range(0, 1) {
        for d in range(0, 1) {
            if (d == 0) {
                title_param_difficulty = "Hardest"
                logic_param_difficulty = difficulty_option == 3
            }
            else {
                title_param_difficulty = "Normal or Higher"
                logic_param_difficulty = difficulty_option >= 1
            }
            leaderboard(
                id = leaderboard_id_array[leaderboard_id_index],
                title =
                    format(
                        "High Score: {0} Mode, {1}, {2}",
                        mode_dict[m],
                        title_param_difficulty,
                        title_param_xyz
                    ),
                description = "Submits at continue/game over or after beating the game (other settings default)",
                start =
                    default_options_1p &&
                    logic_param_xyz &&
                    game_mode == m &&
                    logic_param_difficulty &&
                    p1_score > 0 &&
                    (
                        (
                            screen >= 5 &&
                            screen <= 0xb &&
                            stage_progress > 0 &&
                            p1_death
                        ) ||
                        (
                            screen == 0xb &&
                            prev(stage) == 6 &&
                            stage == 7
                        )
                    ),
                cancel = always_false(),
                submit = always_true(),
                value = measured(p1_score),
                format = "VALUE"
            )
            leaderboard_id_index = leaderboard_id_index + 1
        }
    }
}

for m in range(0, 1) {
    for d in range(0, 1) {
        if (d == 0) {
            title_param_difficulty = "Hardest"
            logic_param_difficulty = difficulty_option == 3
        }
        else {
            title_param_difficulty = "Normal or Higher"
            logic_param_difficulty = difficulty_option >= 1
        }
        for s in range(0, 6) {
            if (s <= 5) {
                logic_param_stage =
                    screen == s + 5 &&
                    stage_completion == 4 &&
                    prev(stage) == s &&
                    stage == s + 1
            }
            else {
                logic_param_stage =
                    screen == 0xb &&
                    prev(stage) == 6 &&
                    stage == 7
            }
            for i in range(0, 2) {
                if (i == 0) {
                    title_param_type = "Score"
                    logic_param_type = p1_score_stage
                }
                else if (i == 1) {
                    title_param_type = "Max Chain"
                    logic_param_type = p1_max_chain_stage
                }
                else {
                    title_param_type = "Max Hits"
                    logic_param_type = p1_max_hits_stage
                }
                leaderboard(
                    id = leaderboard_id_array[leaderboard_id_index],
                    title =
                        format(
                            "Stage {0} {1}: {2} Mode, {3}",
                            s + 1,
                            title_param_type,
                            mode_dict[m],
                            title_param_difficulty
                        ),
                    description = "Submits at continue/game over or after beating the stage (other settings default)",
                    start =
                        default_options_1p &&
                        game_mode == m &&
                        logic_param_difficulty &&
                        logic_param_type > 0 &&
                        (
                            (
                                screen == s + 5 &&
                                stage_progress > 0 &&
                                p1_death
                            ) ||
                            (
                                logic_param_stage
                            )
                        ),
                    cancel = always_false(),
                    submit = always_true(),
                    value = measured(logic_param_type),
                    format = "VALUE"
                )
                leaderboard_id_index = leaderboard_id_index + 1
            }
        }
    }
}

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    once(
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        never(main_menu)
    ) &&
    demo_activity == 0 &&
    p1_active &&
    p2_active &&
    screen >= 5 &&
    screen <= 0xb,
    "{0}{1} & {2}{3} are in Stage {4} • Credits: {5} • P1 Score: {6} • P2 Score: {7} • {8} Mode • {9}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_lookup("Element", p1_element_alt, element_dict),
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_lookup("Element", p2_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p1_score_alt),
    rich_presence_value("Score", p2_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    once(
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        never(main_menu)
    ) &&
    demo_activity == 0 &&
    p2_active &&
    screen >= 5 &&
    screen <= 0xb,
    "P2 {0}{1} is in Stage {2} • Credits: {3} • Score: {4} • {5} Mode • {6}",
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_lookup("Element", p2_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p2_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    once(
        screen >= 5 &&
        screen <= 0xb &&
        stage_progress > 0 &&
        never(main_menu)
    ) &&
    demo_activity == 0 &&
    screen >= 5 &&
    screen <= 0xb,
    "{0}{1} is in Stage {2} • Credits: {3} • Score: {4} • {5} Mode • {6}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_lookup("Element", p1_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p1_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    p1_score_alt > 0 &&
    p2_score_alt > 0 &&
    screen >= 0xd &&
    screen <= 0x12,
    "{0}{1} & {2}{3} are in Stage {4} • Credits: {5} • P1 Score: {6} • P2 Score: {7} • {8} Mode • {9}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_lookup("Element", p1_element_alt, element_dict),
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_lookup("Element", p2_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p1_score_alt),
    rich_presence_value("Score", p2_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    p2_score_alt > 0 &&
    screen >= 0xd &&
    screen <= 0x12,
    "P2 {0}{1} is in Stage {2} • Credits: {3} • Score: {4} • {5} Mode • {6}",
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_lookup("Element", p2_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p2_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    screen >= 0xd &&
    screen <= 0x12,
    "{0}{1} is in Stage {2} • Credits: {3} • Score: {4} • {5} Mode • {6}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_lookup("Element", p1_element_alt, element_dict),
    rich_presence_lookup("Screen", screen, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("Score", p1_score_alt),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    p1_active &&
    p2_active &&
    screen == 0x13,
    "{0} & {1} completed the game! Credits: {2} • {3} Mode • {4}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_value("Credits", credits),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    p2_active &&
    screen == 0x13,
    "P2 {0} completed the game! Credits: {1} • {2} Mode • {3}",
    rich_presence_lookup("P2Character", player_option, p2_character_dict),
    rich_presence_value("Credits", credits),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_conditional_display(
    demo_activity == 0 &&
    screen == 0x13,
    "{0} completed the game! Credits: {1} • {2} Mode • {3}",
    rich_presence_lookup("P1Character", player_option, p1_character_dict),
    rich_presence_value("Credits", credits),
    rich_presence_lookup("Mode", game_mode, mode_dict),
    rich_presence_lookup("Difficulty", difficulty_option, difficulty_dict)
)

rich_presence_display(
    "Preparing to hunt down a tasty Water Willow"
)

// ----------------
// Old Leaderboards
// ----------------

// for c in range(0, 1) {
//     if (c == 0) {
//         title_param = "No Command XYZ"
//         logic_param = xyz_option <= 1
//     }
//     else {
//         title_param = "Command XYZ"
//         logic_param = xyz_option == 2
//     }
//     for m in range(0, 1) {
//         for d in range(3, 0, -1) {
//             leaderboard(
//                 title =
//                     format(
//                         "High Score: {0} Mode, {1}, {2}",
//                         mode_dict[m],
//                         difficulty_dict[d],
//                         title_param
//                     ),
//                 description = "Submits at continue/game over or after beating the game (other settings default)",
//                 start =
//                     normal_options &&
//                     logic_param &&
//                     game_mode == m &&
//                     difficulty_option == d &&
//                     p1_score > 0 &&
//                     (
//                         (
//                             screen >= 5 &&
//                             screen <= 0xb &&
//                             prev(p1_health) <= 0x60 &&
//                             p1_health == 0xff
//                         ) ||
//                         (
//                             complete_game
//                         )
//                     ),
//                 cancel = always_false(),
//                 submit = always_true(),
//                 value = measured(p1_score),
//                 format = "VALUE"
//             )
//         }
//     }
// }

// for c in range(0, 1) {
//     if (c == 0) {
//         title_param_xyz = "No Command XYZ"
//         logic_param_xyz = xyz_option <= 1
//     }
//     else {
//         title_param_xyz = "Command XYZ"
//         logic_param_xyz = xyz_option == 2
//     }
//     for m in range(0, 1) {
//         for d in range(3, 0, -1) {
//             for s in range(0, 6) {
//                 if (s <= 5) {
//                     logic_param_stage =
//                         stage_completion == 4 &&
//                         prev(screen) == s + 5 &&
//                         screen > s + 5
//                 }
//                 else {
//                     logic_param_stage = complete_game
//                 }
//                 for i in range(0, 2) {
//                     if (i == 0) {
//                         title_param_type = "Score"
//                         logic_param_type = p1_score_stage
//                     }
//                     else if (i == 1) {
//                         title_param_type = "Max Chain"
//                         logic_param_type = p1_max_chain
//                     }
//                     else {
//                         title_param_type = "Max Hits"
//                         logic_param_type = p1_max_hits
//                     }
//                     leaderboard(
//                         title =
//                             format(
//                                 "Stage {0} {1}: {2} Mode, {3}, {4}",
//                                 s + 1,
//                                 title_param_type,
//                                 mode_dict[m],
//                                 difficulty_dict[d],
//                                 title_param_xyz
//                             ),
//                         description = "Submits after beating stage (other settings default)",
//                         start =
//                             normal_options &&
//                             logic_param_xyz &&
//                             game_mode == m &&
//                             difficulty_option == d &&
//                             logic_param_type > 0 &&
//                             logic_param_stage,
//                         cancel = always_false(),
//                         submit = always_true(),
//                         value = measured(logic_param_type),
//                         format = "VALUE"
//                     )
//                 }
//             }
//         }
//     }
// }