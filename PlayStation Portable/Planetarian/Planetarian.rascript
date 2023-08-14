// Planetarian: Chiisa na Hoshi no Yume | Planetarian: The Dream of a Little Star
// #ID = 24908
// MD5: 179D133591C39DBAFD81DE6C9433D7F3 - Planetarian - Chiisa na Hoshi no Yume (Japan) (v1.00) (En) (v1.0) (ShinjiGR).iso
// MD5: BBBD5EA3171E7416EC89A34A7F7B0FB0 - Planetarian - Chiisa na Hoshi no Yume (Japan) (v2.00) (En) (v1.0) (ShinjiGR).iso
// MD5: 756A33A6AF9B9583A1B4A7C337B05BD3 - Planetarian - Chiisa na Hoshi no Yume (Japan) (v1.00).iso
// MD5: 40ED86779AE1AD875A64FC36DB91338B - Planetarian - Chiisa na Hoshi no Yume (Japan) (v2.00).iso

// ------------------------------------
// Code notes, variables, and functions
// ------------------------------------

// $000000: These notes apply to 1.00 English, 2.00 English, and 2.00 Japanese. For 1.00 Japanese, add 0x80 to these addresses (only for these - not necessarily the whole memory)

// $8569C0: 0x08 = 1.00 English, 2.00 English, 2.00 Japanese
//          0x00 = 1.00 Japanese

function game_version() => byte(0x8569c0)
function game_v2() => game_version() == 8
function game_v1() => game_version() == 0

// $858FAC: Screen [8-bit]
//          0x08 = Title screen
//          0x0c = Start from title
//          0x16 = Load from title
//          0x19 = Options from title
//          0x20 = Extras
//          0x21 = CG or Music
//          0x1d = Install/Uninstall
//          0x47 = Save/Load/Options/Quit menu
//          0x47 -> 0x48 -> 0x49 = Select any of the above options
//          0x49 -> 0x4a -> 0x00 -> 0x01 -> 0x08 = Confirm quit, return to title
//          0x50 -> 0x51 = Review text
//          0x5a = Text hidden
//          0x3c = Opening, Credits, certain cutscenes or panning scenes
//          0x32 = In-game reading. 0x33 or 0x34 when voice clip is skipped

screen_addr = 0x858fac
function screen_v2() => byte(screen_addr)
function screen_v1() => byte(screen_addr - 0x80)
function in_game_v2() => screen_v2() == 0x32
function in_game_v1() => screen_v1() == 0x32
function credits_trans_v2() => prev(screen_v2()) == 0x32 && screen_v2() == 0x3c
function credits_trans_v1() => prev(screen_v1()) == 0x32 && screen_v1() == 0x3c

// $856ACC: Music [8-bit]
//          0x00 = None
//          0x01 = World of Stars ~Opening~
//          0x02 = Song of Circling Stars ~Honky Tonk~
//          0x03 = Song of Circling Stars ~Metronome~
//          0x05 = Rain and Robot
//          0x06 = Song of Circling Stars ~Winter's Tale~
//          0x04 = Gentle Jena
//          0x07 = Perfect Human
//          0x08 = Deep Affection
//          0x09 = Song of Circling Stars (only in music player, not credits - instead it's 0x00 there)
//          0x14 = Ominous Fiddler Crab
//          
//          Chapter 1 first line = 0x00
//          Chapter 2 first line = 0x00
//          Chapter 3 first line = 0x00
//          Chapter 4 first line = 0x00
//          Chapter 5 first line = 0x00
//          Chapter 6 first line = 0x00
//          Chapter 7 first line = 0x00
//          Chapter 8 first line = 0x04
//          Chapter 9 first line = 0x00
//          Chapter 10 first line = 0x00
//          Chapter 11 first line = 0x00
//          Chapter 12 first line = 0x00
//          Chapter 13 first line = 0x14
//          Chapter 14 first line = 0x00
//          Chapter 15 first line = 0x07
//          Chapter 16 first line = 0x07

chapter_first_line_music_dict = {
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
    8: 4,
    9: 0,
    10: 0,
    11: 0,
    12: 0,
    13: 0x14,
    14: 0,
    15: 7,
    16: 7,
    "credits": 0
}

music_addr = 0x856acc
function music_v2() => byte(music_addr)
function music_v1() => byte(music_addr - 0x80)

// $88E3A5: Reverie sprite + background [16-bit]
//          Title screen = 0xffff
//          Chapter 1 first line = 0xffff
//          Chapter 2 first line = 0x47e8
//          Chapter 3 first line = 0xd808
//          Chapter 4 first line = 0x3a30
//          Chapter 5 first line = 0xd808
//          Chapter 6 first line = 0x44b0
//          Chapter 7 first line = 0x7cc8
//          Chapter 8 first line = 0xffff
//          Chapter 9 first line = 0x4928
//          Chapter 10 first line = 0xb6d8
//          Chapter 11 first line = 0x53c8
//          Chapter 12 first line = 0xb6d8
//          Chapter 13 first line = 0x8280
//          Chapter 14 first line = 0xe910
//          Chapter 15 first line = 0x1ba8
//          Chapter 16 first line = 0x6b58
//          Credits = 0xffff

chapter_first_line_background_dict = {
    2: 0x47e8,
    3: 0xd808,
    4: 0x3a30,
    5: 0xd808,
    6: 0x44b0,
    7: 0x7cc8,
    8: 0xffff,
    9: 0x4928,
    10: 0xb6d8,
    11: 0x53c8,
    12: 0xb6d8,
    13: 0x8280,
    14: 0xe910,
    15: 0x1ba8,
    16: 0x6b58,
    "credits": 0xffff
}

background_addr = 0x88e3a5
function background_v2() => word(background_addr)
function background_v1() => word(background_addr - 0x80)

// $88E3A0: Dialogue [24-bit]
//          English:
//          0x00034c = Chapter 1 first line
//          0x005ff8 = Chapter 1 final line
//          0x0060b4 = Chapter 2 first line
//          0x012100 = Chapter 2 final line
//          0x0121b8 = Chapter 3 first line
//          0x01b24c = Chapter 3 final line
//          0x01b398 = Chapter 4 first line
//          0x026230 = Chapter 4 final line
//          0x026308 = Chapter 5 first line
//          0x037924 = Chapter 5 final line
//          0x0379f4 = Chapter 6 first line
//          0x03b1a4 = Chapter 6 final line
//          0x03b30c = Chapter 7 first line
//          0x041e80 = Chapter 7 final line
//          0x041fb0 = Chapter 8 first line
//          0x049ad0 = Chapter 8 final line
//          0x049b7c = Chapter 9 first line
//          0x051474 = Chapter 9 final line
//          0x051568 = Chapter 10 first line
//          0x05f064 = Chapter 10 final line
//          0x05f1c8 = Chapter 11 first line
//          0x063f04 = Chapter 11 final line
//          0x06403c = Chapter 12 first line
//          0x06ae30 = Chapter 12 final line
//          0x06af1c = Chapter 13 first line
//          0x0767e4 = Chapter 13 final line
//          0x0768d4 = Chapter 14 first line
//          0x07a778 = Chapter 14 final line
//          0x07a84c = Chapter 15 first line
//          0x08142c = Chapter 15 final line
//          0x0814e0 = Chapter 16 first line
//          0x0860e0 = Chapter 16 final line
//
//          2.00 Japanese:
//          0x00034c = Chapter 1 first line
//          0x0024f4 = Chapter 1 final line
//          0x00258c = Chapter 2 first line
//          0x00699c = Chapter 2 final line
//          0x006a20 = Chapter 3 first line
//          0x009e28 = Chapter 3 final line
//          0x009ed4 = Chapter 4 first line
//          0x00dcb0 = Chapter 4 final line
//          0x00dd3c = Chapter 5 first line
//          0x0142a8 = Chapter 5 final line
//          0x014324 = Chapter 6 first line
//          0x0157d0 = Chapter 6 final line
//          0x0158a0 = Chapter 7 first line
//          0x017ec4 = Chapter 7 final line
//          0x017f54 = Chapter 8 first line
//          0x01ab4c = Chapter 8 final line
//          0x01abd0 = Chapter 9 first line
//          0x01dcf0 = Chapter 9 final line
//          0x01dd98 = Chapter 10 first line
//          0x022f44 = Chapter 10 final line
//          0x022fd0 = Chapter 11 first line
//          0x024e3c = Chapter 11 final line
//          0x024ed0 = Chapter 12 first line
//          0x0277fc = Chapter 12 final line
//          0x0278a0 = Chapter 13 first line
//          0x02b5e4 = Chapter 13 final line
//          0x02b66c = Chapter 14 first line
//          0x02d078 = Chapter 14 final line
//          0x02d0e0 = Chapter 15 first line
//          0x02fb68 = Chapter 15 final line
//          0x02fbec = Chapter 16 first line
//          0x031f68 = Chapter 16 final line
//
//          1.00 Japanese:
//          0x00034c = Chapter 1 first line
//          0x0024f4 = Chapter 1 final line
//          0x00258c = Chapter 2 first line
//          0x00699c = Chapter 2 final line
//          0x006a20 = Chapter 3 first line
//          0x009e28 = Chapter 3 final line
//          0x009ed4 = Chapter 4 first line
//          0x00dcb0 = Chapter 4 final line
//          0x00dd3c = Chapter 5 first line
//          0x0142b8 = Chapter 5 final line
//          0x014334 = Chapter 6 first line
//          0x0157e0 = Chapter 6 final line
//          0x0158b0 = Chapter 7 first line
//          0x017ed4 = Chapter 7 final line
//          0x017f64 = Chapter 8 first line
//          0x01ab5c = Chapter 8 final line
//          0x01abe0 = Chapter 9 first line
//          0x01dd00 = Chapter 9 final line
//          0x01dda8 = Chapter 10 first line
//          0x022f54 = Chapter 10 final line
//          0x022fe0 = Chapter 11 first line
//          0x024e4c = Chapter 11 final line
//          0x024ee0 = Chapter 12 first line
//          0x02780c = Chapter 12 final line
//          0x0278b0 = Chapter 13 first line
//          0x02b5f4 = Chapter 13 final line
//          0x02b67c = Chapter 14 first line
//          0x02d088 = Chapter 14 final line
//          0x02d0f0 = Chapter 15 first line
//          0x02fb78 = Chapter 15 final line
//          0x02fbfc = Chapter 16 first line
//          0x031f78 = Chapter 16 final line

chapter_first_line_en_dict = {
    1: 0x34c,
    2: 0x60b4,
    3: 0x121b8,
    4: 0x1b398,
    5: 0x26308,
    6: 0x379f4,
    7: 0x3b30c,
    8: 0x41fb0,
    9: 0x49b7c,
    10: 0x51568,
    11: 0x5f1c8,
    12: 0x6403c,
    13: 0x6af1c,
    14: 0x768d4,
    15: 0x7a84c,
    16: 0x814e0
}

chapter_final_line_en_dict = {
    1: 0x5ff8,
    2: 0x12100,
    3: 0x1b24c,
    4: 0x26230,
    5: 0x37924,
    6: 0x3b1a4,
    7: 0x41e80,
    8: 0x49ad0,
    9: 0x51474,
    10: 0x5f064,
    11: 0x63f04,
    12: 0x6ae30,
    13: 0x767e4,
    14: 0x7a778,
    15: 0x8142c,
    16: 0x860e0
}

chapter_first_line_jp_v2_dict = {
    1: 0x34c,
    2: 0x258c,
    3: 0x6a20,
    4: 0x9ed4,
    5: 0xdd3c,
    6: 0x14324,
    7: 0x158a0,
    8: 0x17f54,
    9: 0x1abd0,
    10: 0x1dd98,
    11: 0x22fd0,
    12: 0x24ed0,
    13: 0x278a0,
    14: 0x2b66c,
    15: 0x2d0e0,
    16: 0x2fbec
}

chapter_final_line_jp_v2_dict = {
    1: 0x24f4,
    2: 0x699c,
    3: 0x9e28,
    4: 0xdcb0,
    5: 0x142a8,
    6: 0x157d0,
    7: 0x17ec4,
    8: 0x1ab4c,
    9: 0x1dcf0,
    10: 0x22f44,
    11: 0x24e3c,
    12: 0x277fc,
    13: 0x2b5e4,
    14: 0x2d078,
    15: 0x2fb68,
    16: 0x31f68
}

chapter_first_line_jp_v1_dict = {
    1: 0x34c,
    2: 0x258c,
    3: 0x6a20,
    4: 0x9ed4,
    5: 0xdd3c,
    6: 0x14334,
    7: 0x158b0,
    8: 0x17f64,
    9: 0x1abe0,
    10: 0x1dda8,
    11: 0x22fe0,
    12: 0x24ee0,
    13: 0x278b0,
    14: 0x2b67c,
    15: 0x2d0f0,
    16: 0x2fbfc
}

chapter_final_line_jp_v1_dict = {
    1: 0x24f4,
    2: 0x699c,
    3: 0x9e28,
    4: 0xdcb0,
    5: 0x142b8,
    6: 0x157e0,
    7: 0x17ed4,
    8: 0x1ab5c,
    9: 0x1dd00,
    10: 0x22f54,
    11: 0x24e4c,
    12: 0x2780c,
    13: 0x2b5f4,
    14: 0x2d088,
    15: 0x2fb78,
    16: 0x31f78
}

dialogue_addr = 0x88e3a0
function dialogue_v2() => tbyte(dialogue_addr)
function dialogue_v1() => tbyte(dialogue_addr - 0x80)

function chapter_trans_en(num) => prev(dialogue_v2()) == chapter_final_line_en_dict[num] && dialogue_v2() == chapter_first_line_en_dict[num + 1]
function chapter_trans_jp_v2(num) => prev(dialogue_v2()) == chapter_final_line_jp_v2_dict[num] && dialogue_v2() == chapter_first_line_jp_v2_dict[num + 1]
function chapter_trans_jp_v1(num) => prev(dialogue_v1()) == chapter_final_line_jp_v1_dict[num] && dialogue_v1() == chapter_first_line_jp_v1_dict[num + 1]

// ------------
// Achievements
// ------------

// Including the music checks caused problems, not really necessary anyway
// 1st alt group = English versions
// 2nd alt group = 2.00 Japanese
// 3rd alt group = 1.00 Japanese
function achievement_progress(title, chapter_param) {
    achievement(
        title = title,
        description = format("Complete chapter {0}.", chapter_param),
        points = 1,
        trigger = always_true() &&
                  (
                    game_v2() &&
                    in_game_v2() &&
                    // music_v2() == chapter_first_line_music_dict[chapter_param + 1] &&
                    background_v2() == chapter_first_line_background_dict[chapter_param + 1] &&
                    ((chapter_trans_en(chapter_param)) || (chapter_trans_jp_v2(chapter_param)))
                  ) ||
                  (
                    game_v1() &&
                    in_game_v1() &&
                    // music_v1() == chapter_first_line_music_dict[chapter_param + 1] &&
                    background_v1() == chapter_first_line_background_dict[chapter_param + 1] &&
                    chapter_trans_jp_v1(chapter_param)
                  )
    )
}

achievement_progress("A Robot's Bouquet", 1)
achievement_progress("The City & the Junker", 2)
achievement_progress("Reverie 1 / At Reception", 3)
achievement_progress("Repairing the Projector", 4)
achievement_progress("Reverie 2 / Light Bulbs", 5)
achievement_progress("The End of Repairs", 6)
achievement_progress("Reverie's Projection", 7)
achievement_progress("The Reverie of Mankind", 8)
achievement_progress("Leaving the Planetarium", 9)
achievement_progress("The City 1 - Abandoned Streets", 10)
achievement_progress("The City 2 - Alcohol and Rain", 11)

achievement(
    title = "Reverie's Prayer",
    description = "Complete the final chapters.",
    points = 5,
    trigger = always_true() &&
                  (
                    game_v2() &&
                    // music_v2() == chapter_first_line_music_dict["credits"] &&
                    background_v2() == chapter_first_line_background_dict["credits"] &&
                    (dialogue_v2() == chapter_final_line_en_dict[16] || dialogue_v2() == chapter_final_line_jp_v2_dict[16]) &&
                    credits_trans_v2()
                  ) ||
                  (
                    game_v1() &&
                    // music_v1() == chapter_first_line_music_dict["credits"] &&
                    background_v1() == chapter_first_line_background_dict["credits"] &&
                    dialogue_v1() == chapter_final_line_jp_v1_dict[16] &&
                    credits_trans_v1()
                  )
)

// ------------
// Unused notes
// ------------

// $88DFB8: Dialogue progress [410 bytes]

// $88E3A8: Skip option [8-bit]
//          0x00 = Read Lines
//          0x01 = Ignore
// $88E3A9: Text speed option [8-bit]
//          0x00 = Auto
//          0x01 = Slow
//          0x02 = Normal
//          0x03 = Fast
//          0x04 = Page
// $88E3AC: CG flag #11: Reverie holding light bulb 1/3 [8-bit]
// $88E3AD: CG flag #12: Reverie holding light bulb 2/3 [8-bit]
// $88E3AE: CG flag #13: Reverie holding light bulb 3/3 [8-bit]
// $88E3AF: CG flag #28: Fiddler Crab [8-bit]
// $88E3B0: CG flag #29: Taking aim [8-bit]
// $88E3B1: CG flag #30: Fiddler Crab moves [8-bit]
// $88E3B2: CG flag #31: Fiddler Crab fires [8-bit]
// $88E3B3: CG flag #32: Flash of white [8-bit]
// $88E3B4: CG flag #33: Distraction [8-bit]
// $88E3B5: CG flag #34: Torn apart [8-bit]
// $88E3B6: CG flag #36: Reverie in the rain 1/10 [8-bit]
// $88E3B7: CG flag #38: Reverie in the rain 3/10 [8-bit]
// $88E3B8: CG flag #37: Reverie in the rain 2/10 [8-bit]
// $88E3B9: CG flag #39: Reverie in the rain 4/10 [8-bit]
// $88E3BA: CG flag #43: Reverie in the rain 5/10 [8-bit]
// $88E3BB: CG flag #44: Reverie in the rain 6/10 [8-bit]
// $88E3BC: CG flag #45: Reverie in the rain 7/10 [8-bit]
// $88E3BD: CG flag #46: Reverie in the rain 8/10 [8-bit]
// $88E3BE: CG flag #48: Reverie in the rain 9/10 [8-bit]
// $88E3BF: CG flag #49: Reverie in the rain 10/10 [8-bit]
// $88E3C0: CG flag #50: Bouquet [8-bit]
// $88E3C1: CG flag #1: Opening city 1/2 [8-bit]
// $88E3C2: CG flag #47: Opening city 2/2 [8-bit]
// $88E3C3: CG flag #25: City past [8-bit]
// $88E3C4: CG flag #5: Sarcophagus city 1/2 [8-bit]
// $88E3C5: CG flag #6: Sarcophagus city 2/2 [8-bit]
// $88E3C6: CG flag #27: Shopping district [8-bit]
// $88E3C7: CG flag #26: Abandoned streets [8-bit]
// $88E3C8: CG flag #10: Streetlight/sky 2/3 [8-bit]
// $88E3C9: CG flag #35: Streetlight/sky 3/3 [8-bit]
// $88E3CA: CG flag #7: Streetlight/sky 1/3 [8-bit]
// $88E3CB: CG flag #2: Planetarium seats [8-bit]
// $88E3CC: CG flag #8: Miss Jena 2/3 [8-bit]
// $88E3CD: CG flag #4: Miss Jena 1/3 [8-bit]
// $88E3CE: CG flag #15: Miss Jena 3/3 [8-bit]
// $88E3CF: CG flag #9: Reception area 1/2 [8-bit]
// $88E3D0: CG flag #14: Reception area 2/2 [8-bit]
// $88E3D1: CG flag #3: Planetarium ceiling 1/10 [8-bit]
// $88E3D2: CG flag #16: Planetarium ceiling 2/10 [8-bit]
// $88E3D3: CG flag #17: Planetarium ceiling 3/10 [8-bit]
// $88E3D4: CG flag #18: Planetarium ceiling 4/10 [8-bit]
// $88E3D5: CG flag #19: Planetarium ceiling 5/10 [8-bit]
// $88E3D6: CG flag #20: Planetarium ceiling 6/10 [8-bit]
// $88E3D7: CG flag #21: Planetarium ceiling 7/10 [8-bit]
// $88E3D8: CG flag #22: Planetarium ceiling 8/10 [8-bit]
// $88E3D9: CG flag #23: Planetarium ceiling 9/10 [8-bit]
// $88E3DA: CG flag #24: Planetarium ceiling 10/10 [8-bit]
// $88E3DB: CG flag #40: Reverie's memories 1/3 [8-bit]
// $88E3DC: CG flag #41: Reverie's memories 2/3 [8-bit]
// $88E3DD: CG flag #42: Reverie's memories 3/3 [8-bit]
// $88E4D9: New Game start flag [8-bit]
// $88E4DA: Chapter start flag #1: A Robot's Bouquet [8-bit]
// $88E4DB: Chapter start flag #2: The City & the Junker [8-bit]
// $88E4DC: Chapter start flag #3: Reverie 1 / At Reception [8-bit]
// $88E4DD: Chapter start flag #4: Repairing the Projector [8-bit]
// $88E4DE: Chapter start flag #5: Reverie 2 / Light Bulbs [8-bit]
// $88E4DF: Chapter start flag #6: The End of Repairs [8-bit]
// $88E4E0: Chapter start flag #7: Reverie's Projection [8-bit]
// $88E4E1: Chapter start flag #8: The Reverie of Mankind [8-bit]
// $88E4E2: Chapter start flag #9: Leaving the Planetarium [8-bit]
//          0x00 -> 0xa7 instead of 0x01 like the others
// $88E4E3: Chapter start flag #10: The City 1 - Abandoned Streets [8-bit]
// $88E4E4: Chapter start flag #11: The City 2 - Alcohol and Rain [8-bit]
// $88E4E5: Chapter start flag #12: The Rift in the Quarantine Wall [8-bit]
// $88E4E6: Chapter start flag #13: Battle Against the Fiddler Crab [8-bit]
// $88E4E7: Chapter start flag #14: The End of the Battle [8-bit]
// $88E4E8: Chapter start flag #15: A Holographic Reflection [8-bit]
// $88E4E9: Chapter start flag #16: Reverie's Prayer [8-bit]
// $88E4EA: Credits start flag [8-bit]