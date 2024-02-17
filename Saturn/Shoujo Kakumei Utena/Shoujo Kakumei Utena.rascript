// Shoujo Kakumei Utena: Itsuka Kakumei Sareru Monogatari
// #ID = 19710

// $000E40: 0 = Japanese (both Redump and Utena_Sega1.iso)
//          2 = English (.chd or .cue/.bin)
//          3 = English (Utena_English1.iso)
//          
//          .chd works in Beetle Saturn and Kronos, not in Yabause or Bizhawk.
//          .iso works in Yabause, Kronos, and Bizhawk, but not Beetle Saturn.
//          
//          Yaba Sanshiro doesn't seem to work with any version of the game (in RALibretro).
//          Yabause doesn't seem to have audio. Kronos performs poorly (in RALibretro).
//          
//          All versions hash the same.
//          English versions tested:
//          
//          Utena_English1.iso
//          
//          Utena_English2.iso
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (Japan) (Disc 1) [T-En by In the Rose Garden v1.04].chd
//          MD5: 772D0C1482BC974CBEFA06AAA0A37280
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (Japan) (Disc 2) [T-En by In the Rose Garden v1.04].chd
//          MD5: 95993D1DC2385ED2C2F83DFD13C357B5
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (English v1.04) (Disc 1).bin
//          MD5: C489135B7DF06B9F7BDC1F72C29585FC
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (English v1.04) (Disc 2).bin
//          MD5: FEA05A0BC85CAD59E3EDCBE5FA8B2D74
//          
//          Japanese versions tested:
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (Japan) (Disc 1)
//          http://redump.org/disc/24242/
//          
//          Shoujo Kakumei Utena - Itsuka Kakumei Sareru Monogatari (Japan) (Disc 2)
//          http://redump.org/disc/24243/
//          
//          Utena_Sega1.iso
//          MD5: 8C5155CBA9497B2DBFE58461D67182AE
//          
//          Utena_Sega2.iso
//          MD5: 8B0E2DF3836C3F98C5CECA41D5D0FBE5
// $000E5F: 0x85 = Japanese
//          0x96 = English
// $00D12E: 0xea = Japanese
//          0xc6 = English
// $0A39A0: 1 = In-game
//          0 = Intro, title, etc.
//          0xdd = Enter name
// $12E6DC: 0x93 = Japanese
//          0x20 = English
// $130E20: Heart's Nobility: Utena [32-bit BE Swizzled]
//          Negative = 0%
// $130E22: Heart's Nobility: Utena [16-bit]
//          One point gives 0x0a
//          0x78 = 0%
//          0x82 = 9% (Start)
//          0x8c = 18%
//          0x96 = 27%
//          0xa0 = 36%
//          0xaa = 45%
//          0xb4 = 54%
//          0xbe = 63%
//          0xc8 = 72%
//          0xd2 = 81%
//          0xdc = 90%
//          0xe6 = 100%
//          0xf0 = 109%
//          0xfa = 118%
//          0x104 = 127%
//          0x10e = 136%
//          0x118 = 145%
//          0x122 = 154%
//          0x12c = 163%
//          0x136 = 172%
//          0x140 = 181%
//          0x14a = 190%
//          0x154 = 200%
//          0x15e = 209%
//          0x168 = 218%
//          0x172 = 227%
//          0x17c = 236%
// $130E28: Heart's Nobility: Chigusa (Hidden) [32-bit BE Swizzled]
// $130E2A: Heart's Nobility: Chigusa (Hidden) [16-bit]
// $130E2C: Heart's Nobility: Touga [32-bit BE Swizzled]
//          Negative = 0%
// $130E2E: Heart's Nobility: Touga [16-bit]
//          One point gives 0x0a
//          0x50 = 0%
//          0x5a = 7%
//          0x64 = 15%
//          0x6e = 23%
//          0x78 = 30%
//          0x82 = 38% (Start)
//          0x8c = 46%
//          0x96 = 53%
//          0xa0 = 61%
//          0xaa = 69%
//          0xb4 = 76%
//          0xbe = 84%
//          0xc8 = 92%
//          0xd2 = 100%
//          0xdc = 107%
//          0xe6 = 115%
//          0xf0 = 123%
//          0xfa = 130%
//          0x104 = 138%
//          0x10e = 146%
//          0x118 = 153%
//          0x122 = 161%
//          0x12c = 169%
//          0x136 = 176%
//          0x140 = 184%
//          0x14a = 192%
//          0x154 = 200%
//          0x15e = 207%
// $130E30: Heart's Nobility: Saionji [32-bit BE Swizzled]
//          Negative = 0%
// $130E32: Heart's Nobility: Saionji [16-bit]
//          One point gives 0x0a
//          0x46 = 0%
//          0x50 = 10%
//          0x5a = 20%
//          0x64 = 30%
//          0x6e = 40% (Start)
//          0x78 = 50%
//          0x82 = 60%
//          0x8c = 70%
//          0x96 = 80%
//          0xa0 = 90%
//          0xaa = 100%
//          0xb4 = 110%
//          0xbe = 120%
//          0xc8 = 130%
//          0xd2 = 140%
//          0xdc = 150%
//          0xe6 = 160%
//          0xf0 = 170%
//          0xfa = 180%
//          0x104 = 190%
//          0x10e = 200%
//          0x118 = 210%
//          0x122 = 220%
//          0x12c = 230%
//          0x136 = 240%
//          0x140 = 250%
//          0x14a = 260%
//          0x154 = 270%
//          0x15e = 280%
//          0x168 = 290%
//          0x172 = 300%
//          0x17c = 310%
//          0x186 = 320%
// $130E34: Heart's Nobility: Juri [32-bit BE Swizzled]
//          Negative = 0%
// $130E36: Heart's Nobility: Juri [16-bit]
//          One point gives 0x0a
//          0x50 = 0%
//          0x5a = 9%
//          0x64 = 18%
//          0x6e = 27%
//          0x78 = 36% (Start)
//          0x82 = 45%
//          0x8c = 54%
//          0x96 = 63%
//          0xa0 = 72%
//          0xaa = 81%
//          0xb4 = 90%
//          0xbe = 100%
//          0xc8 = 109%
//          0xd2 = 118%
//          0xdc = 127%
//          0xe6 = 136%
//          0xf0 = 145%
//          0xfa = 154%
//          0x104 = 163%
//          0x10e = 172%
//          0x118 = 181%
//          0x122 = 190%
//          0x12c = 200%
//          0x136 = 209%
//          0x140 = 218%
//          0x14a = 227%
//          0x154 = 236%
//          0x15e = 245%
//          0x168 = 254%
//          0x172 = 263%
//          0x17c = 272%
// $130E38: Heart's Nobility: Miki [32-bit BE Swizzled]
//          Negative = 0%
// $130E3A: Heart's Nobility: Miki [16-bit]
//          One point gives 0x0a
//          0x46 = 0%
//          0x50 = 9%
//          0x5a = 18%
//          0x64 = 27%
//          0x6e = 36% (Start)
//          0x78 = 45%
//          0x82 = 54%
//          0x8c = 63%
//          0x96 = 72%
//          0xa0 = 81%
//          0xaa = 90%
//          0xb4 = 100%
//          0xbe = 109%
//          0xc8 = 118%
//          0xd2 = 127%
//          0xdc = 136%
//          0xe6 = 145%
//          0xf0 = 154%
//          0xfa = 163%
//          0x104 = 172%
//          0x10e = 181%
//          0x118 = 190%
//          0x122 = 200%
//          0x12c = 209%
//          0x136 = 218%
//          0x140 = 227%
//          0x14a = 236%
//          0x154 = 245%
//          0x15e = 254%
//          0x168 = 263%
//          0x172 = 272%
//          0x17c = 281%
//          0x186 = 290%
//          0x190 = 300%
//          0x19a = 309%
//          0x1a4 = 318%
//          0x1ae = 327%
//          0x1b8 = 336%
//          0x1c2 = 345%
//          0x1cc = 354%
// $1313AA: 0 = Progress dialogue input (including skip button)
// $13375E: Input
//          Bit0 = Up
//          Bit1 = Down
//          Bit2 = Left
//          Bit3 = Right
//          Bit4 = A (Progress dialogue)
//          Bit5 = B
//          Bit6 = C (Progress dialogue)
//          Bit7 = X (Go to index in handbook)
// $13375F: Input
//          Bit0 = Y
//          Bit1 = Z
//          Bit2 = L (Skip / Previous page in handbook)
//          Bit3 = R (Hide dialogue / Next page in handbook)
//          Bit4 = Start (Open/close handbook)
// $136602: 1 = In-game
//          0 = Intro, title, etc.
// $13662C: Music [32-bit]
// $153CC2: Ending flags
//          Bit0 = Normal ending
//          Bit1 = Perfect ending
//          Bit2 = Akio's ending
//          Bit3 = Anthy's ending
//          Bit4 = Black Rose ending
//          Bit5 = Utena's ending
//          Bit6 = Touga's ending
//          Bit7 = Saionji's ending
// $153CC3: Ending flags
//          Bit0 = Juri's ending
//          Bit1 = Miki's ending
//          Bit2 = All endings
// $157DD2: 1 = In-game
//          0 = Intro, title, etc.
// $1581F2: Related to dialogue printing [16-bit]
//          Mistriggers sometimes
//          No longer used, switched to 0x159337 since it mostly works across versions
//          
//          First value in a group of 3 (or any value that isn't described as E2 or J) is for Utena_English1.iso
//          E2 is for English .chd or .cue/.bin
//          J is for Japanese (Redump or Utena_Sega1.iso)
//          
//          Day 1
//          Choice 1: Help Anthy
//          "I've got to help her!"
//          0x96bc = End of scene, 2 Utena points
//          0x9700 - E2
//          0x7d28 - J
//          "Watch the situation"
//          0xa0ec = End of scene
//          0xa130 - E2
//          0x7ff5 - J
//          
//          Choice 2: Ask Utena
//          "Do you have a girlfriend?"
//          0x5c8f = End of scene
//          "Do you have a boyfriend?"
//          0xa41c = End of scene, 1 Utena point
//          
//          Choice 3: Tea with Utena and Anthy
//          "Wanna become engaged too"
//          Ominous sound
//          0x77c7 = End
//          "Change the subject"
//          0x8fa0 = End
//          "Try making a joke"
//          Strange sound
//          0x647a = End
//          
//          Save point 1
//          
//          Choice 4: Wall or calendar
//          Doesn't matter
//          0xb08a = End
//          
//          Choice 5: Miki at the ball
//          "Praise his eyes"
//          0x59cf = End, 1 Miki point
//          "Make a light joke"
//          Strange sound
//          0x59cf = End
//          
//          Choice 6: Touga at the ball
//          "Thank him"
//          1 Touga point
//          0x4bbf = End
//          "Refuse the compliment"
//          0x5de9 = End
//          
//          Choice 7: Saionji at the ball
//          "Confront him directly"
//          0x95dd = End
//          "Distract him"
//          0x76c0 = End, 1 Saionji point
//          
//          No choice
//          1 Juri point
//          
//          Choice 8: Student council discussion
//          "I'll catch the culprit!"
//          0xa552 = End, 1 Utena/Touga/Juri/Miki point
//          "Make a joke"
//          Strange sound
//          0x9304 = End
//          
//          Choice 9: First night
//          "Sleep with Utena"
//          0x691f = End, 1 Utena point
//          "Sleep alone"
//          0x91b5 = End
//          
//          Save point 2
//          
//          Day 2
//          Choice 10: Who did you like?
//          "Touga"
//          0x040b = End, 1 Touga point
//          "Miki"
//          0xdd28 = End, 1 Miki point
//          "Juri"
//          0xe7cd = End, 1 Juri point
//          "Saionji"
//          0xeb1a = End, 1 Saionji point
//          "Utena"
//          0xffdc = End, 1 Utena point
//          "Mysterious person"
//          0xd9b3 = End
//          
//          Choice 11: Chat with Utena
//          "Chat with Utena"
//          0xd651 = End, 1 Utena point
//          "Leave it at that"
//          0xe913 = End
//          
//          Choice 12: Who named you?
//          "Father"
//          0xee65 = End, -1 Chigusa point
//          "Mother"
//          0xef1d = End, 1 Chigusa point
//          
//          Save point 3
//          
//          Choice 13: Where to eat?
//          "Eat outside with Utena"
//          1 Utena point, leads to 14
//          "Eat at the cafeteria"
//          0xe7bd = End, -1 Chigusa point
//          
//          Choice 14: Eat outside with Utena
//          "Accept Anthy's lunch"
//          Ominous sound
//          0x39a4 = End
//          "Continue with hunger"
//          0xf7b2 = End
//          
//          Choice 15: Math question
//          "Answer '38'"
//          0x1aeb = End, 1 Chigusa point
//          "Answer 'a+18'"
//          0xe2aa = End
//          
//          Nobility point drain
//          Save point 4
//          
//          Choice 16: Visit a club
//          "Fencing club"
//          Leads to 17
//          "Kendo club"
//          Leads to 19
//          "Newspaper club"
//          0x2443 = End (if visited first), leads to 20
//          0x1ab1 = End (if visited second)
//          
//          Choice 17: Fencing club
//          "Fight against Juri"
//          1 Juri point, leads to 18
//          "Fight against Miki"
//          1 Miki point
//          0x31ed = End
//          "Turn down the offer"
//          0x4668 = End
//          
//          Choice 18: Juri in the shower
//          "Ask about why she duels"
//          0x317b = End, 1 Juri point
//          "Ask about the locket"
//          0xfbb8 = End
//          
//          Choice 19: Kendo club
//          "Talk to Chigusa"
//          0xf394 = End
//          "Talk to Saionji"
//          0x0511 = End, 3 Saionji points, 1 Chigusa point
//          
//          Choice 20: Newspaper club visited first
//          "Fencing club"
//          Leads to 17
//          "Kendo club"
//          Leads to 19
//          "Literature club"
//          0xeebb = End, -1 Chigusa point
//          
//          Choice 21: Ask Chigusa
//          "Ask about her illness"
//          0xa8b7 = End, -1 Chigusa point
//          "Do you have a girlfriend?"
//          0x82c1 = End
//          "Do you have a boyfriend?"
//          0x90d6 = End, 1 Chigusa point
//          
//          Choice 22: Stay with Chigusa?
//          "Stay together longer"
//          1 Chigusa point, leads to 23
//          "Part ways here"
//          0xad4c = End
//          
//          Choice 23: Do you like someone?
//          "I don't"
//          0x895c = End
//          "Someone I've noticed"
//          0x891a = End, 1 Chigusa point
//          
//          Choice 24: Where to go in town
//          "Cafe"
//          Ominous sound
//          0x95c5 = End, 2 Utena points
//          "Classical Cafe"
//          Leads to 25
//          "Game Center"
//          0xc04d = End, 2 Juri points
//          "Cake Store"
//          Leads to 26
//          "Japanese Teahouse"
//          Leads to 27
//          
//          Choice 25: Classical Cafe with Touga
//          "To listen to music"
//          0xb3e8 = End, 1 Touga point
//          "Maybe it was fate"
//          0xbe46 = End, 2 Touga points
//          
//          Choice 26: Cake Store with Miki and Kozue
//          "Sit alone"
//          0xa048 = End, 1 Miki point
//          "Sit with Miki and Kozue"
//          0xc1c6 = End
//          
//          Miki route
//          "Sit alone"
//          ? = End, 1 Miki point
//          "Sit with Miki and Kozue"
//          ? = End
//          
//          Choice 27: Japanese Teahouse with Saionji
//          "Praise Japanese tea"
//          0xc3c4 = End, 1 Saionji point
//          "Praise rooibos tea"
//          0xc429 = End, 2 Saionji points
//          
//          Choice 28: Do you have a prince?
//          "Answer that you don't"
//          0x82fe = End
//          "Answer that you do"
//          0xc5ce = End, 1 Chigusa point
//          
//          Nobility point drain
//          Save point 5
//          
//          Choice 29: Invite who to dinner?
//          "Touga"
//          Leads to 30
//          "Juri"
//          Leads to 31
//          "Saionji"
//          Leads to 32
//          "Miki"
//          Leads to 33
//          "Chigusa"
//          Leads to 35
//          
//          Choice 30: Dinner with Touga
//          "Ask to watch their duel"
//          0x7fc9 = End, 1 Touga point
//          "Say you want to duel too"
//          Ominous sound
//          0x62ef = End, 1 Touga point
//          "Tell them to stop duels"
//          0x3f24 = End, 1 Utena point
//          
//          Choice 31: Dinner with Juri
//          "Utena is strong"
//          0x4bbe = End, 1 Juri point
//          "Juri is weak"
//          0x5a60 = End
//          "It is all about luck"
//          0x56a2 = End, -1 Juri point
//          
//          Choice 32: Dinner with Saionji
//          "Utena is strong"
//          0x54c6 = End, -1 Saionji point
//          "Saionji is weak"
//          0x54c6 = End, -1 Saionji point
//          "It's all about luck"
//          0x661d = End, 2 Saionji points
//          
//          Choice 33: Dinner with Miki
//          "Pacify them"
//          0x5301 = End, 1 Miki point
//          "Egg him on"
//          0x4a23 = End
//          "Distract them"
//          Leads to 34
//          
//          Choice 34: Miki in the shower
//          "Peek"
//          0x77c0 = End
//          "Don't peek"
//          0x7c5b = End, 2 Miki points
//          
//          Choice 35: Dinner with Chigusa
//          "Slap Chigusa's face"
//          0x8abf = End, 2 Utena/Chigusa points
//          "Make a joke"
//          Ominous sound
//          0xa6b9 = End
//          
//          Choice 36: Who's on your mind?
//          "Utena"
//          0x5e29 = End, 2 Utena points
//          "Touga"
//          0x7e55 = End, 1 Touga/Chigusa point
//          "Saionji"
//          0x6e5c = End, 2 Saionji points
//          "Juri"
//          0x92dd = End, 1 Juri point
//          "Miki"
//          0xab71 = End, 2 Miki points
//          "Chigusa"
//          0x75da = End, 1 Chigusa point
//          
//          Nobility point drain
//          Save point 6
//          
//          Day 3
//          Choice 37: Soccer game
//          "Slide"
//          0xfae8 = End, 1 Utena point
//          "Get out of the way"
//          0xfae8 = End, 1 Chigusa point
//          
//          Save point 7
//          
//          Choice 38: Who to show the fencing hall
//          "Utena"
//          0x0d94 = End, 1 Utena point
//          "Touga"
//          0x0d94 = End, 1 Touga point
//          "Saionji"
//          ? = End, 1 Saionji point
//          "Juri"
//          0x1aea = End, 1 Juri point
//          "Miki"
//          0x1d9b = End, 1 Miki point
//          
//          Choice 39: Who to show the fencing hall, again
//          "Touga"
//          0x3786 = End, 1 Touga point
//          "Saionji"
//          ? = End, 1 Saionji point
//          "Juri"
//          0x3b0c = End, 1 Juri point
//          "Miki"
//          0x3f6c = End, 1 Miki point
//          "Utena"
//          0x4514 = End, 1 Utena point
//          
//          Choice 40: Share cake with who
//          "Utena"
//          Leads to 41
//          "Touga"
//          Leads to 42
//          "Saionji"
//          1 Saionji point, leads to 43
//          "Juri"
//          Leads to 44
//          "Miki"
//          Leads to 45
//          
//          Choice 41: What should Utena do in return?
//          "Bake me a cake"
//          0x4e1c = End, 2 Utena points
//          "Sing me a song"
//          0x4fbd = End, 1 Utena point
//          
//          Choice 42: Giving cake to Touga
//          "Shoot her down"
//          0x552e = End, 1 Touga point
//          "Meekly back down"
//          0x568d = End, 2 Touga points
//          
//          Choice 43: Giving cake to Saionji
//          "Tell the truth"
//          ? = End
//          "I made it with Anthy"
//          ? = End, 2 Saionji points
//          
//          Saionji route
//          "I handed it to her"
//          ? = End, 3 Saionji points
//          "I forgot"
//          ? = End
//          
//          Choice 44: Giving cake to Juri
//          "I'm good at cooking"
//          0x5ff4 = End, 1 Juri point
//          "Don't expect much"
//          0x5ff4 = End, 2 Juri points
//          
//          Choice 45: Giving cake to Miki
//          "None of your business"
//          0x6aee = End, 1 Miki point
//          "Chide Miki"
//          0x6c37 = End, 2 Miki points
//          
//          Miki route
//          "Cheer Miki up"
//          ? = End, 1 Miki point
//          "Help him with his love"
//          ? = End, 2 Miki points
//          
//          Nobility point drain
//          Save point 8
//          
//          Choice 46: What to do
//          "Chat with Utena"
//          0x4f6d = End, 1 Utena point
//          "Fencing Club"
//          Leads to 47
//          "Kendo Club"
//          Leads to 53
//          
//          Choice 46: Fencing club again
//          "Go to the music room"
//          Leads to 48
//          "Join the practice"
//          Leads to 51
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 48: Music room with Miki
//          "Worried about Kozue?"
//          1 Miki point, leads to 49
//          "Chigusa-san is dangerous"
//          0x52e2 = End
//          
//          Choice 49: Miki playing piano
//          "Listen to the piano"
//          1 Miki point, leads to 50
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 50: Miki's goal
//          "Will you obtain it?"
//          0x7139 = End, 1 Miki point
//          "Stop with the dumb duels"
//          0x5436 = End
//          
//          Choice 51: Fencing with Juri
//          "Spar against Juri"
//          2 Juri points, leads to 52
//          "Make Juri take a break"
//          0x4cd7 = End, 1 Juri point
//          
//          Choice 52: Juri in the shower, again
//          "Take a shower"
//          0x7848 = End, 1 Juri point
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 53: Kendo club again
//          "Look for Saionji"
//          Leads to 54
//          "Look for Touga"
//          Leads to 56
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 54: Saionji in the forest
//          "I asked Anthy"
//          ? = End, 1 Saionji point
//          "I looked over for you"
//          Leads to 55
//          
//          Choice 55: Go after Saionji
//          "Go after Saionji"
//          ? = End, 2 Saionji points
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 56: Talking with Touga
//          "Talk about Kendo Club"
//          0x9ec8 = End
//          "Talk about Chigusa"
//          Leads to 57
//          
//          Choice 57: About Chigusa
//          "Leave it to Touga"
//          Leads to 46
//          "Go with Touga"
//          Leads to 58
//          
//          Choice 58: Meeting Chigusa with Touga
//          "Say it's not a date"
//          2 Chigusa points
//          ? = End
//          "Say it's a date"
//          2 Touga points
//          2 Chigusa points
//          ? = End
//          
//          Choice 59: Where to go in town, again
//          "Cafe"
//          Leads to 60
//          "Classical Cafe"
//          1 Touga point, leads to 61
//          "Game Center"
//          1 Juri point
//          0x7453 = End, 1 Juri point
//          "Cake Store"
//          1 Miki point, leads to 62
//          "Japanese Teahouse"
//          1 Saionji point, leads to 63
//          
//          Choice 60: Utena in the cafe
//          "I came to drink tea"
//          0x8d37 = End
//          "Tell me about the incident"
//          0x6e53 = End, 1 Utena point
//          
//          Choice 61: Touga in the classical cafe
//          "Quiz Touga"
//          0x755e = End, 2 Touga points
//          "Believe Touga"
//          0x755e = End, 1 Touga point
//          
//          Choice 62: Miki in the cake store
//          "I came to eat cake"
//          0x6aac = End, 1 Miki point
//          "Tell me about the incident"
//          0x8bb7 = End
//          
//          Choice 63: Saionji in the Japanese teahouse
//          "Detain him"
//          ? = End
//          "Don't detain him"
//          ? = End, 1 Saionji point
//          
//          Special Miki event
//          ? = End, 10 Miki points
//          
//          Nobility point drain
//          Save point 9
//          
//          Choice 64: Invite someone to dinner, again
//          "Touga"
//          1 Touga point, leads to 65
//          "Saionji"
//          1 Saionji point, leads to 66
//          "Juri"
//          1 Juri point, leads to 67
//          "Miki"
//          1 Miki point, leads to 68
//          "Chigusa"
//          ? = End, choose again
//          
//          Choice 65: Dinner with Touga again
//          "Yes, please"
//          0x54bf = End, 1 Touga point
//          "Not that kind of girl"
//          0x303f = End, 1 Utena point
//          "Decline politely"
//          0x3340 = End
//          
//          Choice 66: Dinner with Saionji again
//          "Interject"
//          ? = End, 1 Utena point
//          "Talk about Chigusa"
//          ? = End, 1 Saionji point
//          "Ask Anthy to stop them"
//          ? = End
//          
//          Choice 67: Dinner with Juri again
//          "I'm too scared to sleep"
//          0x432e = End, 1 Utena point
//          "Next time I'll take 'em"
//          0x51f4 = End, 1 Juri point
//          "They were after my body"
//          Ominous sound
//          0x55dd = End
//          
//          Choice 68: Dinner with Miki again
//          "Don't worry about it"
//          ? = End, 1 Miki point
//          "Tease Miki"
//          ? = End, 1 Miki point
//          "Argue"
//          Ominous sound
//          0xa226eb = End
//          
//          Choice 69: Consult with someone
//          "Utena"
//          0x6a8d = End, 2 Utena points
//          "Touga"
//          0x5614 = End, 3 Touga points
//          "Saionji"
//          ? = End, 5 Saionji points
//          "Juri"
//          0x1f6e = End, 5 Juri points
//          "Miki"
//          ? = End, 3 Miki points
//          "Don't consult"
//          0x7446 = End
//          
//          End of disc 1
//          Nobility point drain
//          Save point 10
//          
//          Day 4
//          Choice 70: Talk to who
//          "Touga"
//          Leads to 71
//          "Saionji"
//          Leads to 72
//          "Juri"
//          Leads to 73
//          "Miki"
//          Leads to 74
//          
//          Choice 71: Talk to Touga
//          "I'm scared"
//          ? = End
//          "I want to know"
//          ? = End, 1 Touga point
//          
//          Choice 72: Talk to Saionji
//          "Chigusa is the Duelist"
//          ? = End, 1 Saionji point
//          "I want to help Utena"
//          ? = End, 1 Utena/Saionji point
//          
//          Choice 73: Talk to Juri
//          "I'm worried"
//          ? = End, 1 Juri point
//          "I want to help Utena"
//          ? = End, 1 Utena/Juri point
//          
//          Choice 74: Talk to Miki
//          "I'm worried about Kozue"
//          ? = End, 2 Miki points
//          "I want to help Utena"
//          ? = End, 1 Miki point
//          
//          Save point 11
//          
//          Choice 75: Investigate
//          "Call your parents"
//          ? = End
//          "Student Council archives"
//          ? = End
//          "Newspaper Club"
//          ? = End
//          "Search for Chigusa"
//          Appears after 1 of the above choices, skips the other 2
//          
//          Save point 12
//          
//          Choice 76: Chigusa's precious thing
//          "Name tags on the wall"
//          ? = End
//          "The locker"
//          ? = End
//          "The calendar"
//          ? = End
//          
//          Save point 13
//          
//          Akio 1
//          "My parents told me to"
//          "To escape my parents"
//          "To search for my prince"
//          
//          Akio 2
//          "That's not true"
//          "More like a mountain"
//          "Were you listening to me?"
//          
//          Anthy
//          "I want answers"
//          "I want the Rose Bride"
// $1581F6: Related to dialogue printing [8-bit]
// $158DAE: Background [16-bit]
// $159336: Related to dialogue/graphics loading [32-bit]
// $159337: Related to dialogue/graphics loading [24-bit]
//          
//          Noted 24-bit, but used 16-bit values at 0x159338 since that mostly works across versions (when combined with background - otherwise some mistriggers). However, some exceptions in Japanese version:
//          - Day 2, Choice 26 (Cake store) if Kozue was already met earlier after sparring with Miki (English version only changes 24-bit here, not 16-bit)
//          - Day 3, Choice 37 (Soccer game), Choices 38-39 (Who to show the fencing hall), Choices 40-45 (Sharing cake), Choice 60 (Cafe with Utena)
//          
//          Day 1
//          Choice 1: Help Anthy
//          "I've got to help her!"
//          0x482040 = End of scene, 2 Utena points
//          0x482040 - E2
//          0x482057 - J
//          0x342c = Background
//          "Watch the situation"
//          0x4ad241 = End of scene
//          0xeee0 = Background
//          
//          Choice 2: Ask Utena
//          "Do you have a girlfriend?"
//          0x525343 = End of scene
//          0x007c = Background
//          "Do you have a boyfriend?"
//          0x54a544 = End of scene, 1 Utena point
//          0x3090 = Background
//          
//          Choice 3: Tea with Utena and Anthy
//          "Wanna become engaged too"
//          Ominous sound
//          0x5b6b46 = End
//          0x2fd8 = Background
//          "Change the subject"
//          0x5e1247 = End
//          0x2d20 = Background
//          "Try making a joke"
//          Strange sound
//          0x5fe648 = End
//          0x2d20 = Background
//          
//          Save point 1
//          
//          Choice 4: Wall or calendar
//          Doesn't matter
//          0x77944f = End
//          0xa19c = Background
//          
//          Choice 5: Miki at the ball
//          "Praise his eyes"
//          0x41bf31 = End, 1 Miki point
//          0x9740 = Background
//          "Make a light joke"
//          Strange sound
//          0x431531 = End
//          0x9740 = Background
//          
//          Choice 6: Touga at the ball
//          "Thank him"
//          1 Touga point
//          0x53e336 = End
//          0x12a4 = Background
//          "Refuse the compliment"
//          0x4c8634 = End
//          0x9740 = Background
//          
//          Choice 7: Saionji at the ball
//          "Confront him directly"
//          0x5a2338 = End
//          0x9740 = Background
//          "Distract him"
//          0x61bd3b = End, 1 Saionji point
//          0x9740 = Background
//          
//          No choice
//          1 Juri point
//          0x9740 = Background
//          
//          Choice 8: Student council discussion
//          "I'll catch the culprit!"
//          0x7a8942 = End, 1 Utena/Touga/Juri/Miki point
//          0x1854 = Background
//          "Make a joke"
//          Strange sound
//          0x7e2243 = End
//          0x8140 = Background
//          
//          Choice 9: First night
//          "Sleep with Utena"
//          0x821044 = End, 1 Utena point
//          0x094c = Background
//          "Sleep alone"
//          0x84fe45 = End
//          0xfab4 = Background
//          
//          Save point 2
//          
//          Day 2
//          Choice 10: Who did you like?
//          "Touga"
//          0x6b0caa = End, 1 Touga point
//          0x9740 = Background
//          "Miki"
//          0x6cc8ab = End, 1 Miki point
//          0x9740 = Background
//          "Juri"
//          0x6e69ab = End, 1 Juri point
//          0x9740 = Background
//          "Saionji"
//          0x7023ac = End, 1 Saionji point
//          0x33b4 = Background
//          "Utena"
//          0x717cac = End, 1 Utena point
//          0x3090 = Background
//          "Mysterious person"
//          0x72baad = End
//          0x9740 = Background
//          
//          Choice 11: Chat with Utena
//          "Chat with Utena"
//          0x66bda9 = End, 1 Utena point
//          0x78e8 = Background
//          "Leave it at that"
//          0x66eca9 = End
//          0x78e8 = Background
//          
//          Choice 12: Who named you?
//          "Father"
//          0x79dcaf = End, -1 Chigusa point
//          0x78e8 = Background
//          "Mother"
//          0x7bb7b0 = End, 1 Chigusa point
//          0x78e8 = Background
//          
//          Save point 3
//          
//          Choice 13: Where to eat?
//          "Eat outside with Utena"
//          1 Utena point, leads to 14
//          "Eat at the cafeteria"
//          0x83f3b2 = End, -1 Chigusa point
//          0x0d24 = Background
//          
//          Choice 14: Eat outside with Utena
//          "Accept Anthy's lunch"
//          Ominous sound
//          0x893ab4 = End
//          0x9d78 = Background
//          "Continue with hunger"
//          0x8c63b5 = End
//          0xcdc4 = Background
//          
//          Choice 15: Math question
//          "Answer '38'"
//          0x9050b6 = End, 1 Chigusa point
//          0xc8bc = Background
//          "Answer 'a+18'"
//          0x917eb7 = End
//          0xc8bc = Background
//          
//          Nobility point drain
//          Save point 4
//          
//          Choice 16: Visit a club
//          "Fencing club"
//          Leads to 17
//          "Kendo club"
//          Leads to 19
//          "Newspaper club"
//          0xbb3cc3 = End (if visited first), leads to 20
//          0xc83c = Background
//          0xbf45c5 = End (if visited second)
//          0xc83c = Background
//          
//          Choice 17: Fencing club
//          "Fight against Juri"
//          1 Juri point, leads to 18
//          "Fight against Miki"
//          1 Miki point
//          0xb7c8c2 = End
//          0xf5a0 = Background
//          "Turn down the offer"
//          0x9a15b9 = End
//          0xfb8c = Background
//          
//          Choice 18: Juri in the shower
//          "Ask about why she duels"
//          0xae3dc0 = End, 1 Juri point
//          0xfe78 = Background
//          "Ask about the locket"
//          0xaf7ec0 = End
//          0xfe78 = Background
//          
//          Choice 19: Kendo club
//          "Talk to Chigusa"
//          0x9f37bb = End
//          0x2760 = Background
//          "Talk to Saionji"
//          0x9fe9bb = End, 3 Saionji points, 1 Chigusa point
//          0x2760 = Background
//          
//          Choice 20: Newspaper club visited first
//          "Fencing club"
//          Leads to 17
//          "Kendo club"
//          Leads to 19
//          "Literature club"
//          0xc432c6 = End, -1 Chigusa point
//          0x08ac = Background
//          
//          Choice 21: Ask Chigusa
//          "Ask about her illness"
//          0x3c4667 = End, -1 Chigusa point
//          0x89cc = Background
//          "Do you have a girlfriend?"
//          0x3e7568 = End
//          0x89cc = Background
//          "Do you have a boyfriend?"
//          0x3ffb69 = End, 1 Chigusa point
//          0x89cc = Background
//          
//          Choice 22: Stay with Chigusa?
//          "Stay together longer"
//          -1 Chigusa point, leads to 23
//          "Part ways here"
//          0x427269 = End
//          0x89cc = Background
//          
//          Choice 23: Do you like someone?
//          "I don't"
//          0x45466a = End
//          0x8788 = Background
//          "Someone I've noticed"
//          0x47676b = End, 1 Chigusa point
//          0x8788 = Background
//          
//          Choice 24: Where to go in town
//          "Cafe"
//          Ominous sound
//          0x4b126c = End, 2 Utena points
//          0xcfc0 = Background
//          "Classical Cafe"
//          Leads to 25
//          "Game Center"
//          0x585e70 = End, 2 Juri points
//          0x0ac4 = Background
//          "Cake Store"
//          Leads to 26
//          "Japanese Teahouse"
//          Leads to 27
//          
//          Choice 25: Classical Cafe with Touga
//          "To listen to music"
//          0x50366d = End, 1 Touga point
//          0x6934 = Background
//          "Maybe it was fate"
//          0x53f76f = End, 2 Touga points
//          0xaf4c = Background
//          
//          Choice 26: Cake Store with Miki and Kozue
//          "Sit alone"
//          0x5b8671 = End, 1 Miki point
//          0xb5c4 = Background
//          "Sit with Miki and Kozue"
//          0x5d2b71 = End
//          0xb5c4 = Background
//          
//          Miki route
//          "Sit alone"
//          0x5b8672 = End, 1 Miki point
//          0x60737f - J
//          0xb5c4 = Background
//          "Sit with Miki and Kozue"
//          0x5d2b73 = End
//          0x621880 - J
//          0xb5c4 = Background
//          
//          Choice 27: Japanese Teahouse with Saionji
//          "Praise Japanese tea"
//          0x650674 = End, 1 Saionji point
//          0xcbec = Background
//          "Praise rooibos tea"
//          0x66db74 = End, 2 Saionji points
//          0xcbec = Background
//          
//          Choice 28: Do you have a prince?
//          "Answer that you don't"
//          0x6b7076 = End
//          0x8788 = Background
//          "Answer that you do"
//          0x6d4c76 = End, 1 Chigusa point
//          0x8788 = Background
//          
//          Nobility point drain
//          Save point 5
//          
//          Choice 29: Invite who to dinner?
//          "Touga"
//          Leads to 30
//          "Juri"
//          Leads to 31
//          "Saionji"
//          Leads to 32
//          "Miki"
//          Leads to 33
//          "Chigusa"
//          Leads to 35
//          
//          Choice 30: Dinner with Touga
//          "Ask to watch their duel"
//          0x5f4c1d = End, 1 Touga point
//          0xc228 = Background
//          "Say you want to duel too"
//          Ominous sound
//          0x61d91d = End, 1 Touga point
//          0xe570 = Background
//          "Tell them to stop duels"
//          0x65b61e = End, 1 Utena point
//          0xc228 = Background
//          
//          Choice 31: Dinner with Juri
//          "Utena is strong"
//          0x69b920 = End, 1 Juri point
//          0xe570 = Background
//          "Juri is weak"
//          0x6bd020 = End
//          0xe570 = Background
//          "It is all about luck"
//          0x6cc821 = End, -1 Juri point
//          0xe570 = Background
//          
//          Choice 32: Dinner with Saionji
//          "Utena is strong"
//          0x72e523 = End, -1 Saionji point
//          0xe570 = Background
//          "Saionji is weak"
//          0x774324 = End, -1 Saionji point
//          0xe570 = Background
//          "It's all about luck"
//          0x798d25 = End, 2 Saionji points
//          0xe570 = Background
//          
//          Choice 33: Dinner with Miki
//          "Pacify them"
//          0x7c9326 = End, 1 Miki point
//          0xe570 = Background
//          "Egg him on"
//          0x7f3d26 = End
//          0xe570 = Background
//          "Distract them"
//          Leads to 34
//          
//          Choice 34: Miki in the shower
//          "Peek"
//          0x822f27 = End
//          0xed70 = Background
//          "Don't peek"
//          0x841428 = End, 2 Miki points
//          0xde98 = Background
//          
//          Choice 35: Dinner with Chigusa
//          "Slap Chigusa's face"
//          0x8d772b = End, 2 Utena/Chigusa points
//          0xe570 = Background
//          "Make a joke"
//          Ominous sound
//          0x8fd12b = End
//          0xc590 = Background
//          
//          Choice 36: Who's on your mind?
//          "Utena"
//          0x988c2d = End, 2 Utena points
//          0xbaec = Background
//          "Touga"
//          0x9cc92f = End, 1 Touga/Chigusa point
//          0xbb54 = Background
//          "Saionji"
//          0x9f2530 = End, 2 Saionji points
//          0xa998 = Background
//          "Juri"
//          0xa3e731 = End, 1 Juri point
//          0x2adc = Background
//          "Miki"
//          0xac3034 = End, 2 Miki points
//          0xa998 = Background
//          "Chigusa"
//          0xb0af35 = End, 1 Chigusa point
//          0xbb54 = Background
//          
//          Nobility point drain
//          Save point 6
//          
//          Day 3
//          Choice 37: Soccer game
//          "Slide"
//          0x7e29be = End, 1 Utena point
//          0x7e4cbc - J
//          0x9d78 = Background
//          "Get out of the way"
//          0x7f68be = End, 1 Chigusa point
//          0x7faebc - J
//          0x9d78 = Background
//          
//          Save point 7
//          
//          Choice 38: Who to show the fencing hall
//          "Utena"
//          0x90f7c3 = End, 1 Utena point
//          0x918cc1 - J
//          0x1514 = Background
//          "Touga"
//          0x9532c5 = End, 1 Touga point
//          0x957cc2 - J
//          0x1514 = Background
//          "Saionji"
//          0x99a9c6 = End, 1 Saionji point
//          0x99d0c4 - J
//          0x1514 = Background
//          "Juri"
//          0x9e2bc7 = End, 1 Juri point
//          0x9e3ec5 - J
//          0x1514 = Background
//          "Miki"
//          0xa0fdc8 = End, 1 Miki point
//          0xa0fcc6 - J
//          0x1514 = Background
//          
//          Choice 39: Who to show the fencing hall, again
//          "Touga"
//          0xbb04d1 = End, 1 Touga point
//          0xc0f2cf - J
//          0xb310 = Background
//          "Saionji"
//          0xbd4fd2 = End, 1 Saionji point
//          0xc3c3d0 - J
//          0xe284 = Background
//          "Juri"
//          0xbe67d2 = End, 1 Juri point
//          0xc4f3d0 - J
//          0xe284 = Background
//          "Miki"
//          0xc2ced4 = End, 1 Miki point
//          0xc8eed1 - J
//          0xe284 = Background
//          "Utena"
//          0xc894d6 = End, 1 Utena point
//          0xcee4d3 - J
//          0xb310 = Background
//          
//          Choice 40: Share cake with who
//          "Utena"
//          Leads to 41
//          "Touga"
//          Leads to 42
//          "Saionji"
//          1 Saionji point, leads to 43
//          "Juri"
//          Leads to 44
//          "Miki"
//          Leads to 45
//          
//          Choice 41: What should Utena do in return?
//          "Bake me a cake"
//          0xd173d8 = End, 2 Utena points
//          0xd75fd6 - J
//          0x78e8 = Background
//          "Sing me a song"
//          0xd312d9 = End, 1 Utena point
//          0xd8fbd6 - J
//          0x78e8 = Background
//          
//          Choice 42: Giving cake to Touga
//          "Shoot her down"
//          0xd885da = End, 1 Touga point
//          0xdda3d8 - J
//          0xf240 = Background
//          "Meekly back down"
//          0xd99bda = End, 2 Touga points
//          0xdea6d8 - J
//          0xf240 = Background
//          
//          Choice 43: Giving cake to Saionji
//          "Tell the truth"
//          0xdc14db = End
//          0xe0f4d9 - J
//          0xf240 = Background
//          "I made it with Anthy"
//          0xde28dc = End, 2 Saionji points
//          0xe325d9 - J
//          0xf240 = Background
//          
//          Saionji route
//          "I handed it to her"
//          0xdfdedc = End, 3 Saionji points
//          0xe51bda - J
//          0xf240 = Background
//          "I forgot"
//          0xe19ddd = End
//          0xe6cdda - J
//          0xf240 = Background
//          
//          Choice 44: Giving cake to Juri
//          "I'm good at cooking"
//          0xe34edd = End, 1 Juri point
//          0xe86ddb - J
//          0xf240 = Background
//          "Don't expect much"
//          0xe576de = End, 2 Juri points
//          0xea23db - J
//          0xf240 = Background
//          
//          Choice 45: Giving cake to Miki
//          "None of your business"
//          0xee60e0 = End, 1 Miki point
//          0xf2afde - J
//          0xf240 = Background
//          "Chide Miki"
//          0xef84e0 = End, 2 Miki points
//          0xf39dde - J
//          0xf240 = Background
//          
//          Miki route
//          "Cheer Miki up"
//          0xe9fddf = End, 1 Miki point
//          0xee61dd - J
//          0xf240 = Background
//          "Help him with his love"
//          0xeb6ddf = End, 2 Miki points
//          0xefcedd - J
//          0xf240 = Background
//          
//          Nobility point drain
//          Save point 8
//          
//          Choice 46: What to do
//          "Chat with Utena"
//          1 Utena point
//          0x93123f = End
//          J is same
//          0x007c = Background
//          "Fencing Club"
//          Leads to 47
//          "Kendo Club"
//          Leads to 53
//          
//          Choice 47: Fencing club again
//          "Go to the music room"
//          Leads to 48
//          "Join the practice"
//          Leads to 51
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 48: Music room with Miki
//          "Worried about Kozue?"
//          1 Miki point, leads to 49
//          "Chigusa-san is dangerous"
//          0x727736 = End
//          0x5ac0 = Background
//          
//          Choice 49: Miki playing piano
//          "Listen to the piano"
//          1 Miki point, leads to 50
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 50: Miki's goal
//          "Will you obtain it?"
//          0x75e537 = End, 1 Miki point
//          J is same
//          0x4c24 = Background
//          "Stop with the dumb duels"
//          0x779137 = End
//          J is same
//          0x5ac0 = Background
//          
//          Choice 51: Fencing with Juri
//          "Spar against Juri"
//          2 Juri points, leads to 52
//          "Make Juri take a break"
//          0x611230 = End, 1 Juri point
//          0xfb8c = Background
//          
//          Choice 52: Juri in the shower, again
//          "Take a shower"
//          0x660f32 = End, 1 Juri point
//          J is same
//          0xfe78 = Background
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 53: Kendo club again
//          "Look for Saionji"
//          Leads to 54
//          "Look for Touga"
//          Leads to 56
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 54: Saionji in the forest
//          "I asked Anthy"
//          0x80fb3a = End, 1 Saionji point
//          0xcd00 = Background
//          "I looked over for you"
//          Leads to 55
//          
//          Choice 55: Go after Saionji
//          "Go after Saionji"
//          0x847e3b = End, 2 Saionji points
//          J is same
//          0x0160 = Background
//          "Go somewhere else"
//          Leads to 46
//          
//          Choice 56: Talking with Touga
//          "Talk about Kendo Club"
//          0x87ac3c = End
//          0x1514 = Background
//          "Talk about Chigusa"
//          Leads to 57
//          
//          Choice 57: About Chigusa
//          "Leave it to Touga"
//          Leads to 46
//          "Go with Touga"
//          Leads to 58
//          
//          Choice 58: Meeting Chigusa with Touga = 0x451026
//          "Say it's not a date" = 0x8b293d
//          0xa9f4 = Background
//          0x8ec43e = 2 Chigusa points
//          0x91433f = End
//          J is same
//          0xafa4 = Background - too early
//          0x8560 = Background
//          "Say it's a date" = 0x8b9c3d
//          0xa9f4 = Background
//          0x8b9c26 = 2 Touga points
//          0x8ec43e = 2 Chigusa points
//          0x91433f = End
//          J is same
//          0xafa4 = Background - too early
//          0x8560 = Background
//          
//          Choice 59: Where to go in town, again
//          "Cafe"
//          Leads to 60
//          "Classical Cafe"
//          1 Touga point, leads to 61
//          "Game Center"
//          1 Juri point
//          0x6ff239 = End, 1 Juri point
//          J is same
//          0x0024 = Background
//          Juri route
//          0x73843a = End, 2 Juri points
//          J is same
//          0x0024 = Background
//          "Cake Store"
//          1 Miki point, leads to 62
//          "Japanese Teahouse"
//          1 Saionji point, leads to 63
//          
//          Choice 60: Utena in the cafe
//          "I came to drink tea"
//          0x568f33 = End
//          0x5e2a36 - J
//          0xe45c = Background
//          "Tell me about the incident"
//          0x590734 = End, 1 Utena point
//          0x60a237 - J
//          0xe45c = Background
//          
//          Choice 61: Touga in the classical cafe
//          "Quiz Touga"
//          0x64b336 = End, 2 Touga points
//          J is same
//          0xc730 = Background
//          "Believe Touga"
//          0x664736 = End, 1 Touga point
//          J is same
//          0xc730 = Background
//          
//          Choice 62: Miki in the cake store
//          "I came to eat cake"
//          0x780b3c = End, 1 Miki point
//          J is same
//          0xb764 = Background
//          "Tell me about the incident"
//          0x7a773c = End
//          J is same
//          0xb790 = Background
//          
//          Choice 63: Saionji in the Japanese teahouse
//          "Detain him"
//          0x84d83f = End
//          J is same
//          0xe5c8 = Background
//          "Don't detain him"
//          0x861440 = End, 1 Saionji point
//          J is same
//          0xcbec = Background
//          
//          Special Miki event
//          0x9b1e46 = End, 10 Miki points
//          J is same
//          0x6d50 = Background
//          
//          Nobility point drain
//          Save point 9
//          
//          Choice 64: Invite someone to dinner, again
//          "Touga"
//          1 Touga point, leads to 65
//          "Saionji"
//          1 Saionji point, leads to 66
//          "Juri"
//          1 Juri point, leads to 67
//          "Miki"
//          1 Miki point, leads to 68
//          "Chigusa"
//          0x759fdf = End, choose again
//          0xe570 = Background
//          
//          Choice 65: Dinner with Touga again
//          "Yes, please"
//          0x80fae2 = End, 1 Touga point
//          J is same
//          0xbc44 = Background
//          "Not that kind of girl"
//          0x827be2 = End, 1 Utena point
//          J is same
//          0xbc44 = Background
//          "Decline politely"
//          0x854ce3 = End
//          J is same
//          0xbc44 = Background
//          
//          Choice 66: Dinner with Saionji again
//          "Interject"
//          0x8d68e5 = End, 1 Utena point
//          J is same
//          0xe570 = Background
//          "Talk about Chigusa"
//          0x8f63e6 = End, 1 Saionji point
//          J is same
//          0xc1f4 = Background
//          "Ask Anthy to stop them"
//          0x90cfe6 = End
//          J is same
//          0xe570 = Background
//          
//          Choice 67: Dinner with Juri again
//          "I'm too scared to sleep"
//          0x972fe8 = End, 1 Utena point
//          J is same
//          0xc2a8 = Background
//          "Next time I'll take 'em"
//          0x984ce9 = End, 1 Juri point
//          J is same
//          0xc2a8 = Background
//          "They were after my body"
//          Ominous sound
//          0x993ce9 = End
//          J is same
//          0xc2a8 = Background
//          
//          Choice 68: Dinner with Miki again
//          "Don't worry about it"
//          0x9fbceb = End, 1 Miki point
//          J is same
//          0xc794 = Background
//          "Tease Miki"
//          0xa127eb = End, 1 Miki point
//          J is same
//          0xc794 = Background
//          "Argue"
//          Ominous sound
//          0xa226eb = End
//          J is same
//          0xc794 = Background
//          
//          Choice 69: Consult with someone
//          "Utena"
//          0xb10cf0 = End, 2 Utena points
//          J is same
//          0x094c = Background
//          "Touga"
//          0xb252f0 = End, 3 Touga points
//          J is same
//          0x1648 = Background
//          "Saionji"
//          0xb45cf1 = End, 5 Saionji points
//          J is same
//          0x1730 = Background
//          "Juri"
//          0xbacbf3 = End, 5 Juri points
//          J is same
//          0x29a0 = Background
//          "Miki"
//          0xc59ff7 = End, 3 Miki points
//          J is same
//          0xee00 = Background
//          "Don't consult"
//          0xacb3ee = End
//          J is same
//          0x4150 = Background
//          
//          End of disc 1
//          Nobility point drain
//          Save point 10
//          
//          Day 4
//          Choice 70: Talk to who
//          "Touga"
//          Leads to 71
//          "Saionji"
//          Leads to 72
//          "Juri"
//          Leads to 73
//          "Miki"
//          Leads to 74
//          
//          Choice 71: Talk to Touga
//          "I'm scared"
//          0x593f6c = End
//          0xf240 = Background
//          "I want to know"
//          0x5bf36d = End, 1 Touga point
//          0xf240 = Background
//          
//          Choice 72: Talk to Saionji
//          "Chigusa is the Duelist"
//          0x669e70 = End, 1 Saionji point
//          0xf240 = Background
//          "I want to help Utena"
//          0x699971 = End, 1 Utena/Saionji point
//          0xf240 = Background
//          
//          Choice 73: Talk to Juri
//          "I'm worried"
//          0x752574 = End, 1 Juri point
//          0xf240 = Background
//          "I want to help Utena"
//          0x772275 = End, 1 Utena/Juri point
//          0xf240 = Background
//          
//          Choice 74: Talk to Miki
//          "I'm worried about Kozue"
//          0x806078 = End, 2 Miki points
//          0xf240 = Background
//          "I want to help Utena"
//          0x839a78 = End, 1 Miki point
//          0xf240 = Background
//          
//          Save point 11
//          
//          Choice 75: Investigate
//          "Call your parents"
//          0x76cc09 = End
//          0x3588 = Background
//          "Student Council archives"
//          0x79450a = End
//          0xffdc = Background
//          "Newspaper Club"
//          0x80f00c = End
//          0xbb2c = Background
//          "Search for Chigusa"
//          Appears after 1 of the above choices, skips the other 2
//          
//          Save point 12
//          
//          Choice 76: Chigusa's precious thing
//          "Name tags on the wall"
//          0x6d0bcc = End
//          0x1c30 = Background
//          "The locker"
//          0x72c5ce = End
//          0x1e4c = Background
//          "The calendar"
//          0x6e72cd = End
//          0x15fc = Background
//          
//          Save point 13
//          
//          Akio 1
//          "My parents told me to"
//          "To escape my parents"
//          "To search for my prince"
//          
//          Akio 2
//          "That's not true"
//          "More like a mountain"
//          "Were you listening to me?"
//          
//          Anthy
//          "I want answers"
//          "I want the Rose Bride"
//          
//          Game over
//          0x4d9c = Background
//          0x746557 = Normal ending
//          0x218c = Background
//          0x746557 = Perfect ending
//          0x218c = Background
//          0x977e62 = Utena's ending
//          0x2068 = Background
//          0x784f58 = Touga's ending
//          0x1040 = Background
//          0x7e055a = Saionji's ending
//          0x5cac = Background
//          0x7e055c = Juri's ending
//          0x25a8 = Background
//          0x90cb60 = Miki's ending
//          0x1f04 = Background
//          0x1e04f6 = Akio's ending
//          0x4e7c = Background
//          0x24abf8 = Anthy's ending
//          0x19f4 = Background
//          All endings
//          0xf1d8 = Background

version = byte(0xe40)
version_en1 = version == 3
version_en2 = version == 2
version_jp = version == 0
in_game = byte(0x136602) == 1
// dialogue = word(0x1581f2)
dialogue = word(0x159338)
dialogue_tbyte = tbyte(0x159337)
background = word(0x158dae)

input_1 = 0x13375e
input_2 = 0x13375f
input_A_prev = prev(bit4(input_1)) == 0
input_A = bit4(input_1) == 1
input_C_prev = prev(bit6(input_1)) == 0
input_C = bit6(input_1) == 1
input_L = bit2(input_2) == 1
// progress_dialogue = __ornext(input_A || input_C || input_L)
// progress_dialogue = __ornext(input_A_prev || input_C_prev || input_L) && __ornext(input_A || input_C || input_L)

// Unreliable when holding skip button, e.g. after sleeping with Utena on first night
// progress_dialogue = prev(byte(0x1313aa)) == 1 && byte(0x1313aa) == 0

progress_dialogue = byte(0x1313aa) == 0

utena_nobility_1 = word(0x130e22)
chigusa_nobility_1 = word(0x130e2a)
touga_nobility_1 = word(0x130e2e)
saionji_nobility_1 = word(0x130e32)
juri_nobility_1 = word(0x130e36)
miki_nobility_1 = word(0x130e3a)

utena_nobility_2 = word(0x130e20)
chigusa_nobility_2 = word(0x130e28)
touga_nobility_2 = word(0x130e2c)
saionji_nobility_2 = word(0x130e30)
juri_nobility_2 = word(0x130e34)
miki_nobility_2 = word(0x130e38)

utena_nobility = (utena_nobility_2 * 65536) + utena_nobility_1
chigusa_nobility = (chigusa_nobility_2 * 65536) + chigusa_nobility_1
touga_nobility = (touga_nobility_2 * 65536) + touga_nobility_1
saionji_nobility = (saionji_nobility_2 * 65536) + saionji_nobility_1
juri_nobility = (juri_nobility_2 * 65536) + juri_nobility_1
miki_nobility = (miki_nobility_2 * 65536) + miki_nobility_1

utena_nobility_dict = {
    130: "9%",
    140: "18%",
    150: "27%",
    160: "36%",
    170: "45%",
    180: "54%",
    190: "63%",
    200: "72%",
    210: "81%",
    220: "90%",
    230: "100%",
    240: "109%",
    250: "118%",
    260: "127%",
    270: "136%",
    280: "145%",
    290: "154%",
    300: "163%",
    310: "172%",
    320: "181%",
    330: "190%",
    340: "200%",
    350: "209%",
    360: "218%",
    370: "227%",
    380: "236%"
}

for i in range(0, 120, 10) {
    utena_nobility_dict[i] = "0%"
}

for i in range(-110, -10, 10) {
    utena_nobility_dict[i] = "0%"
}

touga_nobility_dict = {
    90: "7%",
    100: "15%",
    110: "23%",
    120: "30%",
    130: "38%",
    140: "46%",
    150: "53%",
    160: "61%",
    170: "69%",
    180: "76%",
    190: "84%",
    200: "92%",
    210: "100%",
    220: "107%",
    230: "115%",
    240: "123%",
    250: "130%",
    260: "138%",
    270: "146%",
    280: "153%",
    290: "161%",
    300: "169%",
    310: "176%",
    320: "184%",
    330: "192%",
    340: "200%",
    350: "207%"
}

for i in range(0, 80, 10) {
    touga_nobility_dict[i] = "0%"
}

for i in range(-110, -10, 10) {
    touga_nobility_dict[i] = "0%"
}

saionji_nobility_dict = {
    80: "10%",
    90: "20%",
    100: "30%",
    110: "40%",
    120: "50%",
    130: "60%",
    140: "70%",
    150: "80%",
    160: "90%",
    170: "100%",
    180: "110%",
    190: "120%",
    200: "130%",
    210: "140%",
    220: "150%",
    230: "160%",
    240: "170%",
    250: "180%",
    260: "190%",
    270: "200%",
    280: "210%",
    290: "220%",
    300: "230%",
    310: "240%",
    320: "250%",
    330: "260%",
    340: "270%",
    350: "280%",
    360: "290%",
    370: "300%",
    380: "310%",
    390: "320%"
}

for i in range(0, 70, 10) {
    saionji_nobility_dict[i] = "0%"
}

for i in range(-110, -10, 10) {
    saionji_nobility_dict[i] = "0%"
}

juri_nobility_dict = {
    90: "9%",
    100: "18%",
    110: "27%",
    120: "36%",
    130: "45%",
    140: "54%",
    150: "63%",
    160: "72%",
    170: "81%",
    180: "90%",
    190: "100%",
    200: "109%",
    210: "118%",
    220: "127%",
    230: "136%",
    240: "145%",
    250: "154%",
    260: "163%",
    270: "172%",
    280: "181%",
    290: "190%",
    300: "200%",
    310: "209%",
    320: "218%",
    330: "227%",
    340: "236%",
    350: "245%",
    360: "254%",
    370: "263%",
    380: "272%"
}

for i in range(0, 80, 10) {
    juri_nobility_dict[i] = "0%"
}

for i in range(-110, -10, 10) {
    juri_nobility_dict[i] = "0%"
}

miki_nobility_dict = {
    80: "9%",
    90: "18%",
    100: "27%",
    110: "36%",
    120: "45%",
    130: "54%",
    140: "63%",
    150: "72%",
    160: "81%",
    170: "90%",
    180: "100%",
    190: "109%",
    200: "118%",
    210: "127%",
    220: "136%",
    230: "145%",
    240: "154%",
    250: "163%",
    260: "172%",
    270: "181%",
    280: "190%",
    290: "200%",
    300: "209%",
    310: "218%",
    320: "227%",
    330: "236%",
    340: "245%",
    350: "254%",
    360: "263%",
    370: "272%",
    380: "281%",
    390: "290%",
    400: "300%",
    410: "309%",
    420: "318%",
    430: "327%",
    440: "336%",
    450: "345%",
    460: "354%"
}

for i in range(0, 70, 10) {
    miki_nobility_dict[i] = "0%"
}

for i in range(-110, -10, 10) {
    miki_nobility_dict[i] = "0%"
}

ending_1 = 0x153cc2
ending_2 = 0x153cc3
normal_ending = bit0(ending_1)
perfect_ending = bit1(ending_1)
utena_ending = bit5(ending_1)
touga_ending = bit6(ending_1)
saionji_ending = bit7(ending_1)
juri_ending = bit0(ending_2)
miki_ending = bit1(ending_2)
black_rose_ending = bit4(ending_1)
akio_ending = bit2(ending_1)
anthy_ending = bit3(ending_1)
all_endings = bit2(ending_2)

ending_count = bitcount(ending_1) + juri_ending + miki_ending

// ------------
// Achievements
// ------------

function achievement_scene(title, description, background_param, dialogue_param) {
    achievement(
        title = title,
        description = description,
        points = 1,
        trigger = in_game &&
                  background == background_param &&
                  prev(dialogue) == dialogue_param &&
                  dialogue_tbyte != prev(dialogue_tbyte)
    )
}

function achievement_scene_any(title, description, array) {
    achievement(
        title = title,
        description = description,
        points = 1,
        trigger = in_game &&
                  dialogue_tbyte != prev(dialogue_tbyte) &&
                  any_of(array, f => f)
    )
}

function achievement_scene_jp(title, description, background_param, dialogue_param, dialogue_param_jp) {
    achievement(
        title = title,
        description = description,
        points = 1,
        trigger = in_game &&
                  dialogue_tbyte != prev(dialogue_tbyte) &&
                  background == background_param &&
                  ((!version_jp && prev(dialogue) == dialogue_param) ||
                   (version_jp && prev(dialogue) == dialogue_param_jp))
    )
}

function achievement_ending(title, description, ending_param) {
    achievement(
        title = title,
        description = description,
        points = 10,
        trigger = in_game &&
                  prev(ending_param) == 0 &&
                  ending_param == 1
    )
}

achievement_scene("The Rose Bride", "Help protect Anthy from Saionji!", 0x342c, 0x4820)
achievement_scene("A Shocking Situation", "Stand back and watch the situation with Anthy and Saionji", 0xeee0, 0x4ad2)
achievement_scene("How Embarrassing!", "Ask Utena if she has a girlfriend", 0x007c, 0x5253)
achievement_scene("The Prince", "Ask Utena if she has a boyfriend", 0x3090, 0x54a5)
achievement_scene("The Rose Seal", "Tell Utena and Anthy you want to become engaged too", 0x2fd8, 0x5b6b)
achievement_scene("Cool Uniform Though", "Change the subject at tea with Utena and Anthy", 0x2d20, 0x5e12)
achievement_scene("You Tried", "Make a joke at tea with Utena and Anthy", 0x2d20, 0x5fe6)
achievement_scene("Crystalline Eyes", "Praise Miki's eyes at the ball", 0x9740, 0x41bf)
achievement_scene("Breaking the Ice", "Make a light joke with Miki at the ball", 0x9740, 0x4315)
achievement_scene("Lucky Lady", "Thank Touga for the compliment at the ball", 0x12a4, 0x53e3)
achievement_scene("Begone, Playboy", "Refuse Touga's compliment at the ball", 0x9740, 0x4c86)
achievement_scene("Always Up to No Good", "Confront Saionji directly at the ball", 0x9740, 0x5a23)
achievement_scene("No More Monkey Business", "Distract Saionji from bullying Chu-Chu at the ball", 0x9740, 0x61bd)
achievement_scene("When? Where? Who? Which?", "Tell the student council you'll catch the culprit", 0x1854, 0x7a89)
achievement_scene("Comedy Gold", "Make a joke at the student council meeting", 0x8140, 0x7e22)
achievement_scene("Tough Day", "Sleep with Utena on your first night", 0x094c, 0x8210)
achievement_scene("Chu-Chu to the Rescue", "Sleep alone on your first night", 0xfab4, 0x84fe)

day_1 = [(background == 0x094c && prev(dialogue) == 0x8210),
         (background == 0xfab4 && prev(dialogue) == 0x84fe)]
achievement_scene_any("The 22nd", "Finish your first day", day_1)

achievement_scene("The Student Council President", "Tell Wakaba you liked Touga", 0x9740, 0x6b0c)
achievement_scene("The Pianist", "Tell Wakaba you liked Miki", 0x9740, 0x6cc8)
achievement_scene("The Fencing Club Captain", "Tell Wakaba you liked Juri", 0x9740, 0x6e69)
achievement_scene("The Kendo Club Captain", "Tell Wakaba you liked Saionji", 0x33b4, 0x7023)
achievement_scene("The Athlete", "Tell Wakaba you liked Utena", 0x3090, 0x717c)
achievement_scene("The Masked Mystery", "Tell Wakaba you liked the mysterious person at the ball", 0x9740, 0x72ba)
achievement_scene("Making Plans", "Chat with Utena in class on the 23rd", 0x78e8, 0x66bd)
achievement_scene("No Time to Chat", "Don't chat with Utena in class on the 23rd", 0x78e8, 0x66ec)
achievement_scene("Him", "Tell Chigusa your father named you", 0x78e8, 0x79dc)
achievement_scene("Her", "Tell Chigusa your mother named you", 0x78e8, 0x7bb7)
achievement_scene("You Were Not Prepared", "Accept Anthy's lunch", 0x9d78, 0x893a)
achievement_scene("Battle of the Banana", "Refuse Anthy's lunch and endure the hunger", 0xcdc4, 0x8c63)
achievement_scene("Cafeteria Encounter", "Eat lunch in the cafeteria", 0x0d24, 0x83f3)
achievement_scene("Chigusa's Whisper", "The answer to the math question is 38", 0xc8bc, 0x9050)
achievement_scene("Trust Your Instincts", "The answer to the math question is a+18", 0xc8bc, 0x917e)

juri_shower = [(background == 0xfe78 && prev(dialogue) == 0xae3d),
               (background == 0xfe78 && prev(dialogue) == 0xaf7e)]
achievement_scene_any("Learning from the Captain", "Spar with Juri on the 23rd", juri_shower)

achievement_scene("Learning from the Prodigy", "Spar with Miki on the 23rd", 0xf5a0, 0xb7c8)

achievement_scene("The First Step", "Talk to Chigusa in the kendo club", 0x2760, 0x9f37)
achievement_scene("Saionji's Shame", "Talk to Saionji in the kendo club", 0x2760, 0x9fe9)

newspaper_club = [(background == 0xc83c && prev(dialogue) == 0xbb3c),
                  (background == 0xc83c && prev(dialogue) == 0xbf45)]
achievement_scene_any("Mystery of the Old Fencing Hall", "Visit the newspaper club on the 23rd", newspaper_club)

achievement_scene("A Woman of Culture", "Visit the literature club on the 23rd", 0x08ac, 0xc432)
achievement_scene("Heartbreak", "Ask Chigusa about her illness", 0x89cc, 0x3c46)
achievement_scene("Just Curious", "Ask Chigusa if she has a girlfriend", 0x89cc, 0x3e75)
achievement_scene("Not a One", "Ask Chigusa if she has a boyfriend", 0x89cc, 0x3ffb)

achievement_scene("Love at First Sight", "Tell Chigusa there isn't anyone you like", 0x8788, 0x4546)
achievement_scene("What Happened Back Then?", "Tell Chigusa there's someone you've noticed", 0x8788, 0x4767)

achievement_scene("Magnolia", "Visit the cafe on the 23rd", 0xcfc0, 0x4b12)

classical_cafe_1 = [(background == 0x6934 && prev(dialogue) == 0x5036),
                    (background == 0xaf4c && prev(dialogue) == 0x53f7)]
achievement_scene_any("Lilac", "Visit the classical cafe on the 23rd", classical_cafe_1)

achievement_scene("The Fighting Game Champ", "Visit the game center on the 23rd", 0x0ac4, 0x585e)

cake_store_1 = [(background == 0xb5c4 && prev(dialogue) == 0x5b86),
                (background == 0xb5c4 && prev(dialogue) == 0x5d2b),
                (version_jp && background == 0xb5c4 && prev(dialogue) == 0x6073),
                (version_jp && background == 0xb5c4 && prev(dialogue) == 0x6218)]
achievement_scene_any("The Twins", "Visit the cake store on the 23rd", cake_store_1)

japanese_teahouse_1 = [(background == 0xcbec && prev(dialogue) == 0x6506),
                       (background == 0xcbec && prev(dialogue) == 0x66db)]
achievement_scene_any("Shinobiai", "Visit the Japanese teahouse on the 23rd", japanese_teahouse_1)

achievement_scene("Sooner or Later", "Tell Chigusa you don't have a prince", 0x8788, 0x6b70)
achievement_scene("The Spitting Image", "Tell Chigusa you do have a prince", 0x8788, 0x6d4c)

touga_dinner_1 = [(background == 0xc228 && prev(dialogue) == 0x5f4c),
                  (background == 0xe570 && prev(dialogue) == 0x61d9),
                  (background == 0xc228 && prev(dialogue) == 0x65b6)]
achievement_scene_any("A Duel to Remember", "Invite Touga to dinner on the 23rd", touga_dinner_1)

juri_dinner_1 = [(background == 0xe570 && prev(dialogue) == 0x69b9),
                 (background == 0xe570 && prev(dialogue) == 0x6bd0),
                 (background == 0xe570 && prev(dialogue) == 0x6cc8)]
achievement_scene_any("There Are No Miracles", "Invite Juri to dinner on the 23rd", juri_dinner_1)

saionji_dinner_1 = [(background == 0xe570 && prev(dialogue) == 0x72e5),
                    (background == 0xe570 && prev(dialogue) == 0x7743),
                    (background == 0xe570 && prev(dialogue) == 0x798d)]
achievement_scene_any("Third Time's a Charm", "Invite Saionji to dinner on the 23rd", saionji_dinner_1)

miki_dinner_1 = [(background == 0xe570 && prev(dialogue) == 0x7c93),
                 (background == 0xe570 && prev(dialogue) == 0x7f3d),
                 (background == 0xed70 && prev(dialogue) == 0x822f),
                 (background == 0xde98 && prev(dialogue) == 0x8414)]
achievement_scene_any("Tense Situation", "Invite Miki to dinner on the 23rd", miki_dinner_1)

achievement_scene("Sneaky Peek", "Peek on Miki in the shower", 0xed70, 0x822f)

chigusa_dinner = [(background == 0xe570 && prev(dialogue) == 0x8d77),
                  (background == 0xc590 && prev(dialogue) == 0x8fd1)]
achievement_scene_any("Princesses and Queens", "Invite Chigusa to dinner on the 23rd", chigusa_dinner)

achievement_scene("Midnight Baller", "Meet Utena at night on the 23rd", 0xbaec, 0x988c)
achievement_scene("Thinking of You", "Meet Touga at night on the 23rd", 0xbb54, 0x9cc9)
achievement_scene("Shyonji", "Meet Saionji at night on the 23rd", 0xa998, 0x9f25)
achievement_scene("Troubling Thoughts", "Meet Juri at night on the 23rd", 0x2adc, 0xa3e7)
achievement_scene("Meeki", "Meet Miki at night on the 23rd", 0xa998, 0xac30)
achievement_scene("All Will Fall", "Meet Chigusa at night on the 23rd", 0xbb54, 0xb0af)

day_2 = [(background == 0xbaec && prev(dialogue) == 0x988c),
         (background == 0xbb54 && prev(dialogue) == 0x9cc9),
         (background == 0xa998 && prev(dialogue) == 0x9f25),
         (background == 0x2adc && prev(dialogue) == 0xa3e7),
         (background == 0xa998 && prev(dialogue) == 0xac30),
         (background == 0xbb54 && prev(dialogue) == 0xb0af)]
achievement_scene_any("The 23rd", "Finish your second day", day_2)

achievement_scene_jp("Go For It!", "Make a slide in the soccer game!", 0x9d78, 0x7e29, 0x7e4c)
achievement_scene_jp("Coward", "Get out of Chigusa's way in the soccer game!", 0x9d78, 0x7f68, 0x7fae)
achievement_scene_jp("Utena vs. Nanami", "Try to find Utena and show her the chalk-white fencing hall", 0x1514, 0x90f7, 0x918c)
achievement_scene_jp("Touga vs. Nanami", "Try to find Touga and show him the chalk-white fencing hall", 0x1514, 0x9532, 0x957c)
achievement_scene_jp("Saionji vs. Nanami", "Try to find Saionji and show him the chalk-white fencing hall", 0x1514, 0x99a9, 0x99d0)
achievement_scene_jp("Juri vs. Nanami", "Try to find Juri and show her the chalk-white fencing hall", 0x1514, 0x9e2b, 0x9e3e)
achievement_scene_jp("Miki vs. Nanami", "Try to find Miki and show him the chalk-white fencing hall", 0x1514, 0xa0fd, 0xa0fc)
achievement_scene_jp("Always On Your Side", "Consult with Touga on the chalk-white fencing hall", 0xb310, 0xbb04, 0xc0f2)
achievement_scene_jp("Next Time Will Be Different", "Consult with Saionji on the chalk-white fencing hall", 0xe284, 0xbd4f, 0xc3c3)
achievement_scene_jp("A Warning", "Consult with Juri on the chalk-white fencing hall", 0xe284, 0xbe67, 0xc4f3)
achievement_scene_jp("You Thieving Cat!", "Consult with Miki on the chalk-white fencing hall", 0xe284, 0xc2ce, 0xc8ee)
achievement_scene_jp("Truly a Prince", "Consult with Utena on the chalk-white fencing hall", 0xb310, 0xc894, 0xcee4)

utena_cake = [(!version_jp && background == 0x78e8 && prev(dialogue) == 0xd173),
              (!version_jp && background == 0x78e8 && prev(dialogue) == 0xd312),
              (version_jp && background == 0x78e8 && prev(dialogue) == 0xd75f),
              (version_jp && background == 0x78e8 && prev(dialogue) == 0xd8fb)]
achievement_scene_any("Cake For a Friend", "Give your cake to Utena", utena_cake)

achievement_scene_jp("Take My Revolution!", "Ask Utena to sing you a song", 0x78e8, 0xd312, 0xd8fb)

touga_cake = [(!version_jp && background == 0xf240 && prev(dialogue) == 0xd885),
              (!version_jp && background == 0xf240 && prev(dialogue) == 0xd99b),
              (version_jp && background == 0xf240 && prev(dialogue) == 0xdda3),
              (version_jp && background == 0xf240 && prev(dialogue) == 0xdea6)]
achievement_scene_any("Rudely Interrupted", "Give your cake to Touga", touga_cake)

saionji_cake = [(!version_jp && background == 0xf240 && prev(dialogue) == 0xdc14),
                (!version_jp && background == 0xf240 && prev(dialogue) == 0xde28),
                (!version_jp && background == 0xf240 && prev(dialogue) == 0xdfde),
                (!version_jp && background == 0xf240 && prev(dialogue) == 0xe19d),
                (version_jp && background == 0xf240 && prev(dialogue) == 0xe0f4),
                (version_jp && background == 0xf240 && prev(dialogue) == 0xe325),
                (version_jp && background == 0xf240 && prev(dialogue) == 0xe51b),
                (version_jp && background == 0xf240 && prev(dialogue) == 0xe6cd)]
achievement_scene_any("Sweet Little Lies", "Give your cake to Saionji", saionji_cake)

juri_cake = [(!version_jp && background == 0xf240 && prev(dialogue) == 0xe34e),
             (!version_jp && background == 0xf240 && prev(dialogue) == 0xe576),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xe86d),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xea23)]
achievement_scene_any("A Touching Moment", "Give your cake to Juri", juri_cake)

miki_cake = [(!version_jp && background == 0xf240 && prev(dialogue) == 0xee60),
             (!version_jp && background == 0xf240 && prev(dialogue) == 0xef84),
             (!version_jp && background == 0xf240 && prev(dialogue) == 0xe9fd),
             (!version_jp && background == 0xf240 && prev(dialogue) == 0xeb6d),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xf2af),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xf39d),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xee61),
             (version_jp && background == 0xf240 && prev(dialogue) == 0xefce)]
achievement_scene_any("Better than the Cake Store", "Give your cake to Miki", miki_cake)

achievement_scene("Ghost Stories", "Chat with Utena in class on the 24th", 0x007c, 0x9312)

music_room = [(background == 0x4c24 && prev(dialogue) == 0x75e5),
              (background == 0x5ac0 && prev(dialogue) == 0x7791)]
achievement_scene_any("The Sunlit Garden", "Ask Miki about Kozue and listen to him play the piano", music_room)

achievement_scene("Hard Practice", "Spar with Juri and take a shower with her on the 24th", 0xfe78, 0x660f)

achievement_scene("Eternity", "Tell Saionji you looked for him, then go after him", 0x0160, 0x847e)

achievement_scene("Chigusa's Rage", "Go with Touga to learn more about Chigusa", 0x8560, 0x9143)

cafe_2 = [(!version_jp && background == 0xe45c && prev(dialogue) == 0x568f),
          (!version_jp && background == 0xe45c && prev(dialogue) == 0x5907),
          (version_jp && background == 0xe45c && prev(dialogue) == 0x5e2a),
          (version_jp && background == 0xe45c && prev(dialogue) == 0x60a2)]
achievement_scene_any("A Good Friend", "Visit the cafe on the 24th", cafe_2)

classical_cafe_2 = [(background == 0xc730 && prev(dialogue) == 0x64b3),
                    (background == 0xc730 && prev(dialogue) == 0x6647)]
achievement_scene_any("Waiting for You", "Visit the classical cafe on the 24th", classical_cafe_2)

game_center_2 = [(background == 0x0024 && prev(dialogue) == 0x6ff2),
                 (background == 0x0024 && prev(dialogue) == 0x7384)]
achievement_scene_any("Simply a Difference in Skill", "Visit the game center on the 24th", game_center_2)

cake_store_2 = [(background == 0xb764 && prev(dialogue) == 0x780b),
                (background == 0xb790 && prev(dialogue) == 0x7a77)]
achievement_scene_any("Sweet Retreat", "Visit the cake store on the 24th", cake_store_2)

japanese_teahouse_2 = [(background == 0xe5c8 && prev(dialogue) == 0x84d8),
                       (background == 0xcbec && prev(dialogue) == 0x8614)]
achievement_scene_any("Obsessed", "Visit the Japanese teahouse on the 24th", japanese_teahouse_2)

achievement_scene("Peak Nobility", "Try to help Miki with his love life", 0x6d50, 0x9b1e)

touga_dinner_2 = [(background == 0xbc44 && prev(dialogue) == 0x80fa),
                  (background == 0xbc44 && prev(dialogue) == 0x827b),
                  (background == 0xbc44 && prev(dialogue) == 0x854c)]
achievement_scene_any("Ohohoho!", "Invite Touga to dinner on the 24th", touga_dinner_2)

saionji_dinner_2 = [(background == 0xe570 && prev(dialogue) == 0x8d68),
                    (background == 0xc1f4 && prev(dialogue) == 0x8f63),
                    (background == 0xe570 && prev(dialogue) == 0x90cf)]
achievement_scene_any("Be Grateful", "Invite Saionji to dinner on the 24th", saionji_dinner_2)

juri_dinner_2 = [(background == 0xc2a8 && prev(dialogue) == 0x972f),
                 (background == 0xc2a8 && prev(dialogue) == 0x984c),
                 (background == 0xc2a8 && prev(dialogue) == 0x993c)]
achievement_scene_any("A Pleasant Dinner", "Invite Juri to dinner on the 24th", juri_dinner_2)

miki_dinner_2 = [(background == 0xc794 && prev(dialogue) == 0x9fbc),
                 (background == 0xc794 && prev(dialogue) == 0xa127),
                 (background == 0xc794 && prev(dialogue) == 0xa226)]
achievement_scene_any("All Kinds of Things to Lose", "Invite Miki to dinner on the 24th", miki_dinner_2)

achievement_scene("Take It As It Comes", "Sleep with Utena on the 24th", 0x094c, 0xb10c)
achievement_scene("Seduction", "Meet Touga at night on the 24th", 0x1648, 0xb252)
achievement_scene("At All Costs", "Meet Saionji at night on the 24th", 0x1730, 0xb45c)
achievement_scene("Don't Get In Too Deep", "Meet Juri at night on the 24th", 0x29a0, 0xbacb)
achievement_scene("Miki's Kindness", "Meet Miki at night on the 24th", 0xee00, 0xc59f)
achievement_scene("You Will Disappear", "Don't consult with anyone at night on the 24th", 0x4150, 0xacb3)

day_3 = [(background == 0x094c && prev(dialogue) == 0xb10c),
         (background == 0x1648 && prev(dialogue) == 0xb252),
         (background == 0x1730 && prev(dialogue) == 0xb45c),
         (background == 0x29a0 && prev(dialogue) == 0xbacb),
         (background == 0xee00 && prev(dialogue) == 0xc59f),
         (background == 0x4150 && prev(dialogue) == 0xacb3)]
achievement_scene_any("The 24th", "Finish your third day", day_3)

achievement(
    title = "No Past, No Future",
    description = "Fail to stop Chigusa",
    points = 5,
    trigger = in_game &&
              prev(background) != 0x4d9c &&
              background == 0x4d9c
)

achievement_ending("Farewell, Ohtori", "Get the normal ending", normal_ending)
achievement_ending("Perfect Victory", "Get the perfect ending", perfect_ending)
achievement_ending("Just Like Her", "Get Utena's ending", utena_ending)
achievement_ending("Playboy", "Get Touga's ending", touga_ending)
achievement_ending("See You Later", "Get Saionji's ending", saionji_ending)
achievement_ending("Memories in a Locket", "Get Juri's ending", juri_ending)
achievement_ending("His Shining Thing", "Get Miki's ending", miki_ending)
achievement_ending("Go Deeper", "Get the Black Rose ending", black_rose_ending)
achievement_ending("Do You Hear It?", "Get Akio's ending", akio_ending)
achievement_ending("Your True Desire", "Get Anthy's ending", anthy_ending)
achievement_ending("One Last Thing", "Get all 10 endings and view a secret CG", all_endings)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    in_game,
    "❤️Heart's Nobility🌹 Utena: {0} • Touga: {1} • Saionji: {2} • Juri: {3} • Miki: {4} • Endings: {5}/10",
    rich_presence_lookup("UtenaNobility", utena_nobility, utena_nobility_dict),
    rich_presence_lookup("TougaNobility", touga_nobility, touga_nobility_dict),
    rich_presence_lookup("SaionjiNobility", saionji_nobility, saionji_nobility_dict),
    rich_presence_lookup("JuriNobility", juri_nobility, juri_nobility_dict),
    rich_presence_lookup("MikiNobility", miki_nobility, miki_nobility_dict),
    rich_presence_value("Endings", ending_count)
)

rich_presence_conditional_display(
    ending_count > 0,
    "Preparing to bring the world revolution • Endings {0}/10",
    rich_presence_value("Endings", ending_count)
)

rich_presence_display(
    "Preparing to bring the world revolution"
)