// ~Hack~ Crystal Clear
// #ID = 13389

// $C101: Music ID [8-bit]
//        Keep in mind custom music
//        0x00 = Disable Music
//        0x16 = Trainer Victory (GSC)
//        0x17 = Wild Victory (GSC)
//        0x18 = Gym Victory (GSC)
//        0x47 = Wild Pokemon Caught
//        0x67 = Wild Victory (RBY)
//        0x68 = Trainer Victory (RBY)
//        0x69 = Gym Victory (RBY)
//        0x7d = Wild Victory (DPPt)
//        0x7e = Trainer Victory (DPPt)
//        0x7f = Gym Victory (DPPt)
//        0x97 = MMBN5 Victory
//        0xb6 = Guile's Theme
//        0xd6 = MMZ - Clear Stage
//        [Credit: Blazekickn]
// $C1C9: SFX [8-bit]
//        0x01 = Get item
//        0x02 = Pokemon caught, Pokemon evolved
//        0x05 = Use healing item or Repel
//        0x08 = Select
//        0x0e = Put away Pokedex
//        0x13 = Use Escape Rope 1
//        0x14 = Use Escape Rope 2
//        0x15 = Open Pokedex
//        0x16 = Jump over ledge
//        0x19 = Error
//        0x22 = Buy or sell item
//        0x24 = Collision
//        0x6a = Phone ring
//        0x6b = Hang up phone
//        0x99 = Ruins of Alph puzzle solved
//        0x9c = Get badge
//        [Credit: FluffyEmmy]
// $C2D8: current town/route/location index
// $C2D9: also locaation? same as c2d8?
// $C2FA: Collision Data (Down)
// $C2FB: Collision Data (Up)
// $C2FC: Collision Data (Left)
// $C2FD: Collision Data (Right)
// $C400: Don't flip a shit
// $C41A: Voltorb Flip Level (Unstable Eslewhere)
// $C51D: Nickname Screen Start
// $C5B9: Beginning of Text Box Graphics
// $C5CA: Text  Line 1 End
// $C5E1: Text Line 2 Start
// $C5F2: Text Line 2 End
// $C607: End of text box graphics
// $C616: Opponent Pokemon Name [10 bytes]
//        :B: = 9c 81 9c
//        BLUEBELL = 81 8b 94 84 81 84 8b 8b
//        BORT = 81 8e 91 93
//        BRONZORY = 81 91 8e 8d 99 8e 91 98
//        CRYSTALIO = 82 91 98 92 93 80 8b 88 8e
//        DOUG = 83 8e 94 86
//        GUARDIAN = 86 94 80 91 83 88 80 8d
//        KOHOLINT = 8a 8e 87 8e 8b 88 8d 93
//        LONG = 8b 8e 8d 86
//        PIGY = 8f 88 86 98
//        PIKABLU = 8f 88 8a 80 81 8b 94
//        SNOUT = 92 8d 8e 94 93
//        SNOWCAP = 92 8d 8e 96 82 80 8f
//        SNOWDROP = 92 8d 8e 96 83 91 8e 8f
//        SPECTRE = 92 8f 84 82 93 91 84
//        SPRUCE LEE = 92 8f 91 94 82 84 7f 8b 84 84
//        THE CHAMP = 93 87 84 7f 82 87 80 8c 8f
//        WEIRDGRAPE = 96 84 88 91 83 86 91 80 8f 84
//        XD001 = 97 83 f6 f6 f7
// $C63D: Player Pokemon Current HP
// $C689: Poke Ball Thrown [8-bit]
//        0x01 = Master Ball
//        0x02 = Ultra Ball
//        0x04 = Great Ball
//        0x05 = Poke Ball, Friend Ball, Heavy Ball, Fast Ball, Level Ball, Love Ball, Lure Ball, Moon Ball
//        0xbe = Luster Ball
//        0xdc = Mirror Ball
// $C6FD: Battle Win Flag (unstable elsewhere)
// $C700: Slot 1 - Bottom [8-bit]
//        0x00 = 7
//        0x04 = Poke Ball
//        0x08 = Cherry
//        0x0c = Pikachu
//        0x10 = Squirtle
//        0x14 = Staryu
// $C701: Slot 1 - Middle [8-bit]
// $C702: Slot 1 - Top [8-bit]
// $C703: Slot 2 - Bottom [8-bit]
// $C704: Slot 2 - Middle [8-bit]
// $C705: Slot 2 - Top [8-bit]
// $C706: Slot 3 - Bottom [8-bit]
// $C707: Slot 3 - Middle [8-bit]
// $C708: Slot 3 - Top [8-bit]
// $C70A: Slots Bet amnt
// $C711: slots payout (byte 2)
// $C712: slots payout
// $CFE7: Pokemon Displayed on Screen [8-bit]
//        Applies to Evolution Screen, Stats Screen, PC, Hall of Fame, Opponent in Battle
// $CFF0: New Game+ [8-bit]
//        0x00 = Normal Game
//        0x01 = New Game+
// $CFF1: Nuzlocke Mode [8-bit]
//        0x00 = Normal Mode
//        0x01 = Nuzlocke Mode
// $D1EA: Current Player Model [8-bit]
//        Only during character customization
//        0x00 = Chris
//        0x01 = Kris
//        0x02 = Red
//        0x03 = Green
//        0x04 = Blue
//        0x05 = Yellow
//        0x06 = Silver
//        0x07 = Lena
//        0x08 = Grunt Male
//        0x09 = Grunt Female
//        [Credit: Blazekickn]
// $D204: Enemy Pallete ID
// $D206: Enemy Species ID
// $D20C: Opponent Pokemon DVs
//        Upper4 = Attack
//        Lower4 = Defense
// $D20D: Opponent Pokemon DVs
//        Upper4 = Speed
//        Lower4 = Special
// $D213: Enemy Level
// $D216: Opposing mon Health (2nd byte)
// $D217: Opposing mon Health
// $D22D: battle type (01 wild, 02 trainer)
//        active after battle transition
//        ends on fade to ow
// $D22E: Opponent Pokemon in Wild Battle [8-bit]
//        0x19 = Pikachu
//        0x38 = Mankey
//        0x44 = Machamp
//        0x57 = Dewgong
//        0x5d = Haunter
//        0x5f = Onix
//        0x64 = Voltorb
//        0x73 = Kangaskhan
//        0x95 = Dragonite
//        0xa7 = Spinarak
//        0xb9 = Sudowoodo
//        0xbf = Sunkern
//        0xd4 = Scizor
//        0xd7 = Sneasel
//        0xdc = Swinub
//        0xdd = Piloswine
//        0xe3 = Skarmory
//        0xf1 = Miltank
//        0xf4 = Entei
//        0xf8 = Tyranitar
//        0xf9 = Lugia
//        [Credit: FluffyEmmy]
// $D22F: Opponent Trainer in Battle [8-bit]
//        0x01 = Leader Falkner
//        0x02 = Leader Whitney
//        0x03 = Leader Bugsy
//        0x04 = Leader Morty
//        0x05 = Leader Pryce
//        0x06 = Leader Jasmine
//        0x07 = Leader Chuck
//        0x08 = Leader Clair
//        0x09 = Pokemon Prof. Oak
//        0x0a = Elite Four Will
//        0x0b = PKMN Trainer Cal
//        0x0c = Elite Four Bruno
//        0x0d = Elite Four Karen
//        0x0e = Elite Four Koga
//        0x0f = Champion Lance
//        0x10 = Leader Brock
//        0x11 = Leader Misty
//        0x12 = Leader Lt. Surge
//        0x13 = Scientist
//        0x14 = Leader Erika
//        0x15 = Youngster
//        0x16 = Schoolboy
//        0x17 = Bird Keeper
//        0x18 = Lass, Copycat
//        0x19 = Leader Janine
//        0x1a = Cooltrainer Male
//        0x1b = Cooltrainer Female
//        0x1c = Beauty
//        0x1d = PokeManiac
//        0x1e = Gentleman
//        0x1f = Skier
//        0x20 = Teacher
//        0x21 = Leader Sabrina
//        0x22 = Bug Catcher
//        0x23 = Fisher
//        0x24 = Swimmer Male
//        0x25 = Swimmer Female
//        0x26 = Sailor
//        0x27 = Super Nerd
//        0x28 = Guitarist
//        0x29 = Hiker
//        0x2a = Biker
//        0x2b = Leader Blaine
//        0x2c = Burglar
//        0x2d = Firebreather, Char King Vogner
//        0x2e = Juggler
//        0x2f = Blackbelt
//        0x30 = Psychic
//        0x31 = Picnicker
//        0x32 = Camper
//        0x33 = Sage
//        0x34 = Medium
//        0x35 = Boarder
//        0x36 = PokeFan Male
//        0x37 = Kimono Girl
//        0x38 = Twins
//        0x39 = PokeFan Female
//        0x3a = PKMN Trainer Red
//        0x3b = Leader Blue
//        0x3c = Officer
//        0x3d = Mysticalman Eusine
//        0x3e = PKMN Trainer Gold
//        0x3f = PKMN Trainer Crystal
//        0x40 = PKMN Trainer Green
//        0x41 = SS (Forge Early, Battle Sim, Arena)
//        0x42 = Honeybun (Olivine City)
//        0x43 = Fibbef (Anywhere except Indigo Plateau)
//        0x44 = Doom (National Park)
//        0x45 = Chronicler Rowan
//        0x46 = Randy (Neph)
//        0x47 = Champion SS (Indigo Plateau, Forge Final)
//        0x48 = Elite 4 Honeybun
//        0x49 = Elite 4 Fibbef
//        0x4a = Elite 4 Doom
//        0x4b = Elite 4 Rowan
//        0x4c = Interviewer Fef
//        0x4d = Portablizer Shank
//        0x4e = Musician Frogg
//        0x4f = Beautifulman Chaos
//        0x50 = Ness
//        0x51 = Pigdab (?)
//        0x52 = Acetrainer Tiko
//        0x53 = DJ Fef
//        0x54 = Engineer Kensworth
//        0x55 = Rocket Jata
//        0x56 = Rocket Rita
//        0x57 = PKMN Trainer Silver
//        0x58 = Adventurer Lena
//        0x59 = PKMN Trainer Yellow
//        0x5a = Cowboy Noak
//        0x5b = Researcher Grizz
//        0x5c = Ex-Rocket Zevach
//        0x5d = PokeKid Muddy
//        0x5e = Diviner Rain
//        0x5f = Acetrainer Cat
//        0x60 = Gold's Mom
//        0x61 = Red's Mom
//        0x62 = Savage Randy
//        0x63 = Undertaker Agatha
//        0x64 = Powerhouse Bruno
//        0x65 = Harbinger Karen
//        0x66 = Veteran Koga
//        0x67 = Wanderer Lance
//        0x68 = Instructor Lorelei
//        0x69 = Illusionist Will
//        [Credit: FluffyEmmy]
// $D230: 7=forced shiny flag
//        8=headbutt
// $D437: 01 = Text box open
// $D472: Player gender - 0=male, 1=female, 2=none
// $D47B: Trainer ID byte 1
// $D47C: Trainer ID byte 2
// $D47D: Player Name Start
// $D4B6: Day of the Week [8-bit]
// $D4DE: Player Sprite Facing Direction [8-bit]
//        0x00 = Down
//        0x04 = Up
//        0x08 = Left
//        0x0c = Right
// $D4E6: actual x position
// $D4E7: actual y position
// $D50B: following pokemon current animation
// $D515: following pokemon x
// $D516: following pokemon y
// $D6F6: Bitflags
//        Bit0 = Unown Tablet empowered
//        Bit7 = Snowcap event cleared
// $D6F7: Bitflags
//        Bit1 = Ancient Pickaxe
// $D6FA: Bitflags
//        Bit7 = Guardian encountered
// $D6FB: Bitflags
//        Bit3 = Bort despawned
//        Bit6 = Viridian Kangaskhan despawned
// $D700: Bitflags
//        Bit1 = Origin Plains Egg
// $D703: Bitflags
//        Bit1 = Crystalio despawned
//        Bit3 = Mirror Ball
// $D704: Bitflags
//        Bit1 = Mirror Ball Pokemon received
//        Bit3 = Ice Orb deactivated
//        Bit4 = Electric Orb deactivated
//        Bit5 = Fire Orb deactivated
// $D706: Bitflags
//        Bit3 = Bronzory/Snout/Snowdrop despawned
//        Bit6 = Spectre despawned
// $D707: Bitflags
//        Bit0 = Secret from Cat at Rooftop Sale
//        Bit1 = Meet Cat in Goldenrod Cafe
//        Bit3 = Oval Charm
//        Bit4 = Laptop
//        Bit5 = Vermilion house built
//        Bit7 = Koholint/Long 1 despawned
// $D708: Bitflags
//        Bit0 = Koholint/Long 2 despawned
//        Bit1 = Koholint found
//        Bit2 = Long found
// $D70B: Bitflags
//        Bit7 = Oak's Techniques
// $D856: coin case
// $D857: Badges (Johto)
// $D858: Badges (Kanto)
// $D892: num items items pocket
// $D893: Normal Item 1 [8-bit]
//        0x0e = Full Restore
//        0x13 = Escape Rope
//        0x15 = Max Elixer
//        0x1e = Lucky Punch
//        0x20 = Rare Candy
//        0x24 = Nugget
//        0x25 = Poke Doll
//        0x2b = Max Repel
//        0x2f = Soda Pop
//        0x39 = Exp. Share
//        0x3c = Silver Leaf
//        0x3e = PP Max
//        0x4b = Gold Leaf
//        0x52 = King's Rock
//        0x5b = Amulet Coin
//        0x5e = Cleanse Tag
//        0x6a = Smoke Ball
//        0x6d = Miracleberry
//        0x6f = Big Pearl
//        0x76 = Thick Club
//        0x77 = Focus Band
//        0x7e = Lucky Egg
//        0x83 = Stardust
//        0x84 = Star Piece
//        0x97 = Dragon Scale
//        0x9c = Sacred Ash
//        0xb4 = Brick Piece
// $D894: Normal Item 1 Quantity [8-bit]
// $D8BC: Number of Key Items [8-bit]
// $D8BD: Key Item 1 [8-bit]
//        0x07 = Bicycle
//        0x19 = Unown Tablet
//        0x2d = Ancient Pick
//        0x36 = Coin Case
//        0x38 = Poke Flute
//        0x3a = Old Rod
//        0x3b = Good Rod
//        0x3d = Super Rod
//        0x42 = Red Scale
//        0x44 = S.S. Ticket
//        0x45 = Applicator
//        0x46 = Clear Bell
//        0x47 = Silver Wing
//        0x74 = Blue Card
//        0x80 = House Key
//        0x81 = Sword
//        0x82 = Laptop
//        0x86 = Pass
//        0xab = Dex Tracker
//        0xaf = Squirtbottle
//        0xb2 = Rainbow Wing
// $D8D7: num items ball pocket
// $D8D8: Ball 1 [8-bit]
//        0x01 = Master Ball
//        0x02 = Ultra Ball
//        0x04 = Great Ball
//        0x05 = Poke Ball
//        0x9d = Heavy Ball
//        0x9f = Level Ball
//        0xa0 = Lure Ball
//        0xa1 = Fast Ball
//        0xa4 = Friend Ball
//        0xa5 = Moon Ball
//        0xa6 = Love Ball
//        0xb0 = Booster Ball
//        0xb3 = Mirror Ball
//        0xbe = Luster Ball
// $D8D9: Ball 1 Quantity [8-bit]
// $D958: Current Radio
// $D95E: HoF wins
// $D960: Bitflags
//        Bit0 = Trade Abra for Machop
//        Bit1 = Trade Bellsprout for Onix
//        Bit2 = Trade Eevee for Squirtle
//        Bit3 = Trade Butterfree for Doduo
//        Bit4 = Trade Gastly for Natu
//        Bit5 = Trade Snubbull for Misdreavus
//        Bit6 = Trade Diglett for Magnemite
//        Bit7 = Trade anything for Swinub
// $D961: Bitflags
//        Bit0 = Trade Slowpoke for Teddiursa
//        Bit1 = Trade Wooper for Wobbuffet
//        Bit2 = Trade Ledyba for Smoochum
//        Bit3 = Trade Krabby for Staryu
//        Bit4 = Trade Beedrill for Lickitung
//        Bit5 = Trade Unown for Girafarig
// $D9A6: Bitflags
//        Bit0 = Suicune event cleared
// $D9C2: Player Home [8-bit]
//        0x1d = Pallet Town
//        0x1e = Viridian City
//        0x1f = Pewter City
//        0x20 = Cerulean City
//        0x21 = Vermilion City
//        0x22 = Lavender Town
//        0x23 = Saffron City
//        0x24 = Celadon City
//        0x25 = Fuchsia City
//        0x26 = Cinnabar Island
//        0x27 = New Bark Town
//        0x28 = Cherrygrove City
//        0x29 = Violet City
//        0x2a = Azalea Town
//        0x2b = Cianwood City
//        0x2c = Goldenrod City
//        0x2d = Olivine City
//        0x2e = Ecruteak City
//        0x2f = Mahogany Town
//        0x30 = Blackthorn City
//        0x31 = New Cinnabar
//        0x32 = Acetrainer HQ
//        0x35 = Goldenrod Underground
//        0x37 = DJ Lily's House
//        0x38 = Safari Zone
//        0x39 = Battle Tower
//        0x3a = Bill's Cottage
//        0x3b = Dragon's Den
//        
//        Unattainable?
//        0x33 = SS's House
//        0x34 = Honeybun's House
//        0x36 = Noak's Lab
// $D9CA: Current Chained Pokemon ID [8-bit]
// $D9CB: Current Chain [8-bit]
// $D9CC: Dex Tracker Enabled [8-bit]
//        0x01
// $D9F7: 01 = flying
// $D9FB: 01 = Pokemon Center Healing
// $D9FE: 15-bit player color 1
// $DA00: 15-bit player color 2
// $DA03: current following pokemon
// $DA0E: Pokedex Caught Start
// $DA1F: Bitflags
//        Bit7 = Articuno
// $DA20: Bitflags
//        Bit0 = Zapdos
//        Bit1 = Moltres
// $DA2C: Bitflags
//        Bit2 = Raikou
//        Bit3 = Entei
//        Bit4 = Suicune
// $DA2D: Pokedex Caught End (0x07 = full)
// $DA2F: Home - 0=Johto, 1=Kanto 2=undecided
// $DA31: Current Player Model [8-bit]
//        0x00 = Chris
//        0x01 = Kris
//        0x02 = Red
//        0x03 = Green
//        0x0a = Silver
//        0x0b = Grunt Male
//        0x0c = Grunt Female
//        0x10 = Lena
//        0x13 = Blue
//        0x14 = Yellow
//        
//        Unattainable?
//        0x04 = SS
//        0x05 = Fibbef
//        0x06 = Noah (Honeybun)
//        0x07 = Fef
//        0x08 = Rowan
//        0x09 = Randy (Neph)
//        0x0d = Tiko
//        0x0e = Cat
//        0x0f = Noak
//        0x11 = Ken (Kensworth)
//        0x12 = Rytu (Rain)
// $DA32: Current Bag
// $DA34: Current Bag Color
// $DA3A: Map Bank [8-bit]
//        16-bit values given with sub-map
//        
//        0x0101 = Olivine City - Pokemon Center
//        0x0201 = Olivine City - Gym
//        0x0301 = Olivine City - Squirtle Trader's House
//        0x0501 = Olivine City - Northeastern House
//        0x0601 = Olivine City - Fishing Guru's House
//        0x0701 = Olivine City - Cafe
//        0x0801 = Olivine City - PokeMart
//        0x0901 = Route 38 - Entrance to Ecruteak
//        0x0a01 = Route 39 - Moomoo Farm Barn
//        0x0b01 = Route 39 - Moomoo Farm House
//        0x0c01 = Route 38 (West of Ecruteak)
//        0x0d01 = Route 39 (North of Olivine)
//        0x0e01 = Olivine City
//        0x0f01 = Olivine City - Honeybun's House
//        
//        0x0102 = Mahogany Town - Eastern House
//        0x0202 = Mahogany Town - Gym
//        0x0302 = Mahogany Town - Pokemon Center
//        0x0402 = Route 42 - Entrance to Ecruteak
//        0x0502 = Route 42 (East of Ecruteak)
//        0x0602 = Route 44 (East of Mahogany Town)
//        0x0702 = Mahogany Town
//        0x0802 = Mahogany Town - Player Home
//        0x0902 = Mt. Mortar Peaks
//        0x0a02 = Mt. Mortar Peaks - Mirage Sanctuary
//        0x0b02 = Ruins of Alph - Piloswine Puzzle Chamber
//        0x0c02 = Route 10 - Power Plant B1F
//        0x0d02 = Ruins of Alph - 6 Pillars
//        0x0e02 = Ruins of Alph - 7th Pillar
//        0x0f02 = Ruins of Alph - Library
//        
//        0x0103 = Sprout Tower 1F
//        0x0203 = Sprout Tower 2F
//        0x0303 = Sprout Tower 3F
//        0x0403 = Tin Tower 1F
//        0x0503 = Tin Tower 2F
//        0x0603 = Tin Tower 3F
//        0x0703 = Tin Tower 4F
//        0x0803 = Tin Tower 5F
//        0x0903 = Tin Tower 6F
//        0x0a03 = Tin Tower 7F
//        0x0b03 = Tin Tower 8F
//        0x0c03 = Tin Tower 9F
//        0x0d03 = Burned Tower 1F
//        0x0e03 = Burned Tower B1F
//        0x0f03 = National Park
//        0x1103 = Goldenrod City - Radio Tower 1F
//        0x1203 = Goldenrod City - Radio Tower 2F
//        0x1303 = Goldenrod City - Radio Tower 3F
//        0x1403 = Goldenrod City - Radio Tower 4F
//        0x1503 = Goldenrod City - Radio Tower 5F
//        0x1603 = Ruins of Alph
//        0x1703 = Ruins of Alph - Swinub Puzzle Chamber
//        0x1803 = Ruins of Alph - Mew Puzzle Chamber
//        0x1903 = Ruins of Alph - Machamp Puzzle Chamber
//        0x1a03 = Ruins of Alph - Celebi Puzzle Chamber
//        0x1b03 = Ruins of Alph - Unown Chamber
//        0x1c03 = Ruins of Alph - Research Center
//        0x2503 = Union Cave 1F
//        0x2603 = Union Cave B1F
//        0x2703 = Union Cave B2F
//        0x2803 = Slowpoke Well 1F, Hidden Entrance
//        0x2903 = Slowpoke Well B1F
//        0x2a03 = Olivine Lighthouse 1F
//        0x2b03 = Olivine Lighthouse 2F
//        0x2c03 = Olivine Lighthouse 3F
//        0x2d03 = Olivine Lighthouse 4F
//        0x2e03 = Olivine Lighthouse 5F
//        0x2f03 = Olivine Lighthouse 6F
//        0x3003 = Mahogany Town - Bazaar 1F
//        0x3103 = Mahogany Town - Bazaar B1F
//        0x3303 = Ilex Forest
//        0x3403 = Goldenrod City - Underground
//        0x3503 = Goldenrod City - Underground Entrance
//        0x3603 = Goldenrod City - Department Store B1F
//        0x3703 = Goldenrod City - Department Store B2F
//        0x3803 = Mt. Mortar 1F South
//        0x3903 = Mt. Mortar 1F North
//        0x3a03 = Mt. Mortar 2F North
//        0x3b03 = Mt. Mortar B1F
//        0x3c03 = Ice Path 1F
//        0x3d03 = Ice Path B1F
//        0x3e03 = Ice Path B2F West
//        0x3f03 = Ice Path B2F East
//        0x4003 = Ice Path B3F
//        0x4103 = Whirl Islands 1F Northwest, B2F Small Chamber, Hidden Entrance
//        0x4203 = Whirl Islands 1F Northeast
//        0x4303 = Whirl Islands 1F Southwest, B3F Small Chamber
//        0x4403 = Whirl Islands B1F Small Chamber
//        0x4503 = Whirl Islands 1F Southeast
//        0x4603 = Whirl Islands B1F
//        0x4703 = Whirl Islands B2F
//        0x4803 = Whirl Islands - Lugia Chamber
//        0x4903 = Silver Cave - Mt. Rose Side
//        0x4a03 = Silver Cave - Interior South
//        0x4b03 = Silver Cave - Interior North
//        0x4c03 = Silver Cave - Final Area
//        0x4d03 = Silver Cave - Small Chambers
//        0x4e03 = Dark Cave West
//        0x4f03 = Dark Cave East
//        0x5003 = Dragon's Den Entrance
//        0x5103 = Dragon's Den
//        0x5203 = Dragon's Den - Central Building
//        0x5303 = Tohjo Falls 1F
//        0x5403 = Diglett's Cave
//        0x5503 = Mt. Moon 1F West
//        0x5603 = Mt. Moon B1F, 1F East
//        0x5703 = Mt. Moon B2F
//        0x5803 = The Arena
//        0x5903 = Rock Tunnel 1F
//        0x5a03 = Rock Tunnel B1F
//        0x5b03 = Victory Road
//        0x5c03 = Goldenrod City - Underground Warehouse
//        0x5d03 = Olivine Lighthouse 7F
//        0x5e03 = Dragon's Den - Player Home
//        0x5f03 = Union Cave B3F
//        0x6003 = Tohjo Falls 2F
//        
//        0x0104 = Ecruteak City - Tin Tower Entrance 1
//        0x0204 = Ecruteak City - Tin Tower Entrance 2
//        0x0304 = Ecruteak City - Pokemon Center
//        0x0404 = Ecruteak City - Western House
//        0x0504 = Ecruteak City - Dance Theater
//        0x0604 = Ecruteak City - PokeMart
//        0x0704 = Ecruteak City - Gym
//        0x0804 = Ecruteak City - Itemfinder Giver's House
//        0x0904 = Ecruteak City
//        0x0a04 = Ecruteak City - Player Home
//        
//        0x0105 = Blackthorn City - Gym
//        0x0205 = Blackthorn City - Northern House
//        0x0305 = Blackthorn City - Doduo Trader's House 1F
//        0x0405 = Blackthorn City - PokeMart
//        0x0505 = Blackthorn City - Pokemon Center
//        0x0605 = Goldenrod City/Blackthorn City/Lavender Town/Fuchsia City - Modification Station
//        0x0705 = Route 45 (South of Blackthorn)
//        0x0805 = Route 46 (North of Route 29)
//        0x0905 = Blackthorn City
//        0x0a05 = Mt. Rose
//        0x0b05 = Blackthorn City - Doduo Trader's House B1F
//        
//        0x0106 = Cinnabar Island - Pokemon Center
//        0x0206 = Route 19 - Entrance to Fuchsia
//        0x0306 = New Cinnabar - Lab
//        0x0406 = New Cinnabar - Lab Room 1
//        0x0506 = New Cinnabar - Lab Room 2
//        0x0606 = New Cinnabar - Lab Room 3
//        0x0706 = New Cinnabar - Gym
//        0x0806 = Seafoam Islands 1F
//        0x0906 = Seafoam Islands B1F
//        0x0a06 = Seafoam Islands B2F
//        0x0b06 = Seafoam Islands B3F
//        0x0c06 = Seafoam Islands B4F
//        0x0d06 = Route 19 (South of Fuchsia)
//        0x0e06 = Route 20 (East of Cinnabar Island)
//        0x0f06 = Route 21 (South of Pallet Town)
//        0x1006 = Cinnabar Island
//        0x1106 = New Cinnabar
//        0x1206 = Cinnabar Tunnel
//        0x1306 = New Cinnabar - Pokemon Center/Fast Ferry
//        0x1406 = New Cinnabar - PokeMart
//        0x1506 = New Cinnabar - Mail Shop
//        0x1606 = Route 19 - Fast Ferry
//        0x1706 = Cinnabar Island - Player Home
//        0x1806 = New Cinnabar - Player Home
//        0x1906 = Route 21 - Lighthouse
//        
//        0x0107 = Cerulean City - Northwestern House
//        0x0207 = Cerulean City - Northern House
//        0x0307 = Cerulean City - Western House
//        0x0407 = Cerulean City - Pokemon Center
//        0x0507 = Cerulean City - Gym
//        0x0607 = Cerulean City - PokeMart
//        0x0707 = Route 10 - Pokemon Center
//        0x0807 = Route 10 - Power Plant 1F
//        0x0907 = Silver Cave - Moltres Chamber
//        0x0a07 = Route 25 - Bill's Cottage 1F
//        0x0b07 = Route 4 (West of Cerulean)
//        0x0c07 = Route 9 (East of Cerulean)
//        0x0d07 = Route 10 North (East of Route 9)
//        0x0e07 = Route 24 (North of Cerulean)
//        0x0f07 = Route 25 (North of Route 24)
//        0x1007 = Cerulean City
//        0x1107 = Route 5 (South of Cerulean)
//        0x1207 = Cerulean Cave 1F
//        0x1307 = Cerulean Cave 2F
//        0x1407 = Cerulean Cave B1F
//        0x1507 = Route 25 - Fast Ferry
//        0x1607 = Route 24 - Egg Giver's House
//        0x1707 = Route 24 Cave
//        0x1807 = Underground Path
//        0x1907 = Route 25 - Bill's Cottage B1F
//        0x1a07 = Cerulean City - Player Home
//        
//        0x0108 = Azalea Town - Pokemon Center
//        0x0208 = Azalea Town - Charcoal Kiln 1F
//        0x0308 = Azalea Town - PokeMart
//        0x0408 = Azalea Town - Kurt's House
//        0x0508 = Azalea Town - Gym
//        0x0608 = Route 33 (East of Azalea)
//        0x0708 = Azalea Town
//        0x0808 = Azalea Town - Charcoal Kiln B1F
//        
//        0x0109 = Lake of Rage - TM10 Hidden Power Giver's House
//        0x0209 = Lake of Rage - Fishing Guru's House
//        0x0309 = Route 43 - Entrance to Mahogany Town
//        0x0509 = Route 43 (North of Mahogany Town)
//        0x0609 = Lake of Rage
//        0x0709 = Forest of Rage
//        
//        0x010a = Route 32 (South of Violet City)
//        0x020a = Route 35 (North of Goldenrod)
//        0x030a = Route 36 (West of Violet City)
//        0x040a = Route 37 (South of Ecruteak)
//        0x050a = Violet City
//        0x060a = Violet City - PokeMart
//        0x070a = Violet City - Gym
//        0x080a = Violet City - Earl's Pokemon Academy 1F
//        0x090a = Violet City - Western House
//        0x0a0a = Violet City - Pokemon Center
//        0x0b0a = Violet City - Onix Trader's House
//        0x0c0a = Route 32 - Entrance to Ruins of Alph
//        0x0d0a = Route 32 - Pokemon Center
//        0x0e0a = Route 35 - Entrance to Goldenrod
//        0x0f0a = Route 35 - Entrance to National Park
//        0x100a = Route 36 - Entrance to Ruins of Alph
//        0x110a = Route 36 - Entrance to National Park
//        0x120a = Violet City - Earl's Pokemon Academy 2F
//        
//        0x010b = Route 34 (South of Goldenrod)
//        0x020b = Goldenrod City
//        0x030b = Goldenrod City - Gym
//        0x040b = Goldenrod City/Cerulean City - Bike Shop
//        0x050b = Goldenrod City - Happiness Checker's House
//        0x060b = Goldenrod City - Bill's House
//        0x070b = Goldenrod City - Train Station
//        0x080b = Goldenrod City - Flower Shop
//        0x090b = Goldenrod City - Northeastern House
//        0x0b0b = Goldenrod City - Department Store 1F
//        0x0c0b = Goldenrod City - Department Store 2F
//        0x0d0b = Goldenrod City - Department Store 3F
//        0x0e0b = Goldenrod City - Department Store 4F
//        0x0f0b = Goldenrod City - Department Store 5F
//        0x100b = Goldenrod City - Department Store 6F
//        0x110b = Goldenrod City - Department Store Elevator
//        0x120b = Goldenrod City - Department Store Rooftop
//        0x130b = Goldenrod City - Game Corner
//        0x140b = Goldenrod City - Pokemon Center
//        0x150b = Azalea Town - Entrance to Ilex Forest
//        0x160b = Route 34 - Entrance to Ilex Forest
//        0x170b = Route 34 - Day Care
//        0x190b = Goldenrod City - Player Home
//        0x1a0b = Goldenrod City - Cafe
//        0x1b0b = Goldenrod City - Kensworth's House
//        0x1c0b = Alph Forest
//        
//        0x010c = Route 6 (North of Vermilion)
//        0x020c = Route 11 (East of Vermilion)
//        0x030c = Route 11 to Route 12 Gateway
//        0x040c = Vermilion City
//        0x050c = Vermilion City - Fishing Dude's House
//        0x060c = Vermilion City - Pokemon Center
//        0x070c = Vermilion City - Pokemon Fan Club
//        0x080c = Vermilion City - Central House
//        0x090c = Vermilion City - PokeMart
//        0x0a0c = Vermilion City - Southeastern House
//        0x0b0c = Vermilion City - Gym
//        0x0c0c = Route 6 - Entrance to Saffron
//        0x0d0c = Route 6 - Entrance to Underground Path
//        0x0e0c = Grullo Gorge
//        0x0f0c = Grullo Gorge - Noak's Lab
//        0x100c = Route 12 - Entrance to Grullo Gorge
//        0x110c = Grullo Gorge - Cave
//        0x130c = Vermilion City - Player Home
//        0x140c = Vermilion City - Move Tutors' House
//        0x150c = Vermilion City - Built House
//        
//        0x010d = Route 1 (North of Pallet Town)
//        0x020d = Pallet Town
//        0x030d = Pallet Town - Red's House 1F
//        0x040d = Pallet Town - Red's House 2F
//        0x050d = Pallet Town - Blue's House
//        0x060d = Pallet Town - Oak's Lab
//        
//        0x010e = Route 3 (East of Pewter City)
//        0x020e = Pewter City
//        0x030e = Pewter City - Player Home 1F
//        0x040e = Pewter City - Gym
//        0x050e = Pewter City - PokeMart
//        0x060e = Pewter City - Pokemon Center
//        0x070e = Pewter City - Southwestern House
//        0x080e = Pewter City - Museum 1F
//        0x090e = Pewter City - Museum 2F
//        0x0a0e = Route 3 - Pokemon Center
//        0x0b0e = Route 3 - Grizz's Lab
//        0x0c0e = Route 3 - Ace Trainer HQ 1F
//        0x0d0e = Route 3 - Ace Trainer HQ 2F
//        0x0e0e = Pewter City - Player Home B1F
//        
//        0x010f = Olivine City - Port
//        0x020f = Vermilion City - Port
//        0x030f = S.S. Aqua - Upper Deck
//        0x040f = S.S. Aqua - Northern Cabins
//        0x050f = S.S. Aqua - Player's Cabin, Southwestern Cabins
//        0x060f = S.S. Aqua - Southeastern Cabins, Captain's Cabin
//        0x070f = S.S. Aqua - Lower Deck
//        0x080f = Olivine City - Port Entrance
//        0x090f = Vermilion City - Port Entrance
//        0x0a0f = Mt. Moon Square
//        0x0b0f = Mt. Moon Square - Shop
//        0x0c0f = Tin Tower - Rooftop
//        
//        0x0110 = Indigo Plateau - Route 23 Exterior, Hall of Fame Entry
//        0x0210 = Indigo Plateau - Main Interior
//        0x0310 = Indigo Plateau - Elite Four Chamber 1 (Rowan)
//        0x0410 = Indigo Plateau - Elite Four Chamber 2 (Doom)
//        0x0510 = Indigo Plateau - Elite Four Chamber 3 (Fibbef)
//        0x0610 = Indigo Plateau - Elite Four Chamber 4 (Honeybun)
//        0x0710 = Indigo Plateau - Champion Chamber (SS)
//        0x0810 = Indigo Plateau - Hall of Fame
//        0x0910 = Indigo Plateau - Elite Four Introduction Scene
//        0x0a10 = Indigo Plateau - Hallways to Elite Four
//        0x0b10 = Indigo Plateau - Battle Sim
//        
//        0x0111 = Route 18 (West of Fuchsia)
//        0x0211 = Fuchsia City
//        0x0311 = Fuchsia City - PokeMart
//        0x0411 = Fuchsia City - Safari Zone Office
//        0x0511 = Fuchsia City - Gym
//        0x0611 = Fuchsia City - Southwestern House
//        0x0711 = Fuchsia City - Pokemon Center
//        0x0811 = Fuchsia City - Warden's House
//        0x0911 = Route 15 - Entrance to Fuchsia
//        0x0a11 = Fuchsia City - Safari Zone Entrance
//        0x0b11 = Safari Zone - Entrance Area
//        0x0c11 = Safari Zone - Field Area
//        0x0d11 = Safari Zone - Water Area
//        0x0e11 = Safari Zone - Mountain Area
//        0x0f11 = Safari Zone - Forest Area
//        0x1011 = Safari Zone - Ranger Stations
//        0x1111 = Fuchsia City - Player Home
//        0x1211 = Safari Zone - Player Home
//        
//        0x0112 = Route 8 (West of Lavender Town)
//        0x0212 = Route 12 (South of Lavender Town)
//        0x0312 = Route 12 - Gateway
//        0x0412 = Route 10 South (North of Lavender Town)
//        0x0512 = Route 13 (West of Route 12)
//        0x0612 = Route 14 (East of Route 15)
//        0x0712 = Route 15 (East of Fuchsia)
//        0x0812 = Lavender Town
//        0x0912 = Lavender Town - Pokemon Center
//        0x0a12 = Lavender Town - Mr. Fuji's House
//        0x0b12 = Lavender Town - Southwestern House
//        0x0d12 = Lavender Town - PokeMart
//        0x0f12 = Lavender Town - Radio Tower 1F
//        0x1012 = Route 8 - Entrance to Saffron
//        0x1212 = Lavender Town - Radio Tower 2F
//        0x1312 = Route 8 - Entrance to Underground Path
//        
//        0x0113 = Route 28 (East of Silver Cave)
//        0x0213 = Silver Cave - Exterior
//        0x0313 = Silver Cave - Pokemon Center
//        0x0413 = Route 28 - DJ Lily's House 1F
//        0x0513 = Viridian Forest
//        0x0613 = Pokemon Mansion 1F
//        0x0713 = Pokemon Mansion 2F
//        0x0813 = Pokemon Mansion 3F
//        0x0913 = Pokemon Mansion B1F
//        0x0a13 = Route 2 - Southern Entrance to Viridian Forest
//        0x0b13 = Route 2 - Northern Entrance to Viridian Forest
//        0x0c13 = Route 28 - DJ Lily's House B1F
//        
//        0x0114 = Pokemon Center 2F
//        
//        0x0115 = Route 7 (East of Celadon)
//        0x0215 = Route 16 (West of Celadon)
//        0x0315 = Route 17 (South of Route 16)
//        0x0415 = Celadon City
//        0x0515 = Celadon City - Department Store 1F
//        0x0615 = Celadon City - Department Store 2F
//        0x0715 = Celadon City - Department Store 3F
//        0x0815 = Celadon City - Department Store 4F
//        0x0915 = Celadon City - Department Store 5F
//        0x0a15 = Celadon City - Department Store 6F
//        0x0b15 = Celadon City - Department Store Elevator
//        0x0c15 = Celadon City - Mansion 1F
//        0x0d15 = Celadon City - Mansion 2F
//        0x0e15 = Celadon City - Mansion 3F
//        0x0f15 = Celadon City - Mansion Rooftop
//        0x1015 = Celadon City - Mansion Rooftop Room
//        0x1115 = Celadon City - Pokemon Center
//        0x1215 = Celadon City - Game Corner 1F
//        0x1315 = Celadon City - Prize Corner
//        0x1415 = Celadon City - Gym
//        0x1515 = Celadon City - Diner
//        0x1615 = Route 16 - HM02 Fly Giver's House
//        0x1715 = Route 16 - Entrance to Cycling Road
//        0x1815 = Route 7 - Entrance to Saffron
//        0x1915 = Route 18 - Entrance to Cycling Road
//        0x1a15 = Celadon City - Game Corner B1F
//        0x1b15 = Celadon City - Player Home
//        0x1c15 = Cycling Road - Biker Bar
//        0x1d15 = Route 7 - Entrance to Underground Path
//        
//        0x0116 = Route 40 (West of Olivine)
//        0x0216 = Route 40 - Fast Ferry
//        0x0316 = Route 41 (East of Cianwood)
//        0x0416 = Cianwood City
//        0x0516 = Cianwood City - Shuckle Giver's House
//        0x0616 = Cianwood City - Gym
//        0x0716 = Cianwood City - Pokemon Center
//        0x0816 = Cianwood City - Pharmacy
//        0x0916 = Cianwood City - Photo Studio
//        0x0a16 = Cianwood City - Southern House
//        0x0b16 = Cianwood City - Fast Ferry
//        0x0e16 = Battle Tower - Exterior
//        0x0f16 = Battle Tower - Interior
//        0x1016 = Cianwood City - Player Home
//        
//        0x0117 = Route 2 (North of Viridian)
//        0x0217 = Route 22 (West of Viridian)
//        0x0317 = Viridian City
//        0x0417 = Viridian City - Gym
//        0x0517 = Viridian City - Player Home 1F
//        0x0617 = Viridian City - Trainer House 1F
//        0x0717 = Viridian City - Trainer House B1F
//        0x0817 = Viridian City - PokeMart
//        0x0917 = Viridian City - Pokemon Center
//        0x0a17 = Route 2 - Nugget Giver's House
//        0x0b17 = Route 2 - Large Building
//        0x0c17 = Pokemon League Reception Gate
//        0x0d17 = Viridian City - Player Home B1F
//        
//        0x0118 = Route 26 (South of Victory Road)
//        0x0218 = Route 27 (East of New Bark Town)
//        0x0318 = Route 29 (West of New Bark Town)
//        0x0418 = New Bark Town
//        0x0518 = New Bark Town - Elm's Lab
//        0x0618 = New Bark Town - Gold's House 1F
//        0x0818 = New Bark Town - Southwestern House
//        0x0918 = New Bark Town - Elm's House
//        0x0a18 = Route 26 - Rest House
//        0x0c18 = Route 27 - TM37 Sandstorm Giver's House
//        0x0d18 = Route 29 to Route 46 Gateway
//        0x0e18 = New Bark Town - Gold's House 2F
//        0x0f18 = Lake Tohjo
//        0x1018 = Origin Plains
//        
//        0x0119 = Saffron City - Fighting Dojo
//        0x0219 = Saffron City - Sabrina's Gym
//        0x0319 = Saffron City - PokeMart
//        0x0419 = Saffron City - Pokemon Center
//        0x0519 = Saffron City - Mr. Psychic's House
//        0x0619 = Saffron City - Train Station
//        0x0719 = Saffron City - Silph Co. 1F
//        0x0819 = Saffron City - Copycat's House 1F
//        0x0919 = Saffron City - Copycat's House 2F
//        0x0a19 = Saffron City
//        0x0b19 = Route 5 - Entrance to Underground Path
//        0x0c19 = Route 5 - Entrance to Saffron
//        0x0d19 = Route 5 - Cleanse Tag Giver's House
//        0x0e19 = Saffron City - Player Home
//        0x0f19 = Saffron City - Pokemon Ability Researcher's House
//        0x1019 = Saffron City - Silph Co. 2F
//        
//        0x011a = Route 30 (North of Cherrygrove)
//        0x021a = Route 31 (East of Violet City)
//        0x031a = Cherrygrove City
//        0x041a = Cherrygrove City - PokeMart
//        0x051a = Cherrygrove City - Pokemon Center
//        0x061a = Cherrygrove City - Player Home 1F
//        0x071a = Cherrygrove City - Guide Gent's House
//        0x081a = Cherrygrove City - Southeastern House
//        0x091a = Route 30 - Berry Giver's House
//        0x0a1a = Route 30 - Mr. Pokemon's House
//        0x0b1a = Route 31 - Entrance to Violet City
//        0x0c1a = Cherrygrove Bay
//        0x0d1a = Cherrygrove Bay - SS's House
//        0x0e1a = Cherrygrove Cave 1F
//        0x0f1a = Cherrygrove Cave 2F
//        0x101a = Cherrygrove Cave 3F
//        0x111a = Cherrygrove Cave - The Forge
//        0x121a = Cherrygrove City - Forest Path
//        0x131a = Cherrygrove City - Player Home B1F
//        
//        [Credit: Blazekickn]
// $DA3B: Sub-Map
// $DA48: Disable Music
// $DA4B: Current Region [8-bit]
//        0x00 = Johto
//        0x01 = Kanto
// $DA50: Gym rechallenge set number
// $DA51: Gym rechallenge gym number
// $DA52: 01 = rechallenge in progress
// $DA59: Old Amber Counter 00-06
// $DA75: Bitflags
//        Bit3 = Ivan has fossil prepared
// $DA77: Bitflags
//        Bit5 = Egg stolen from Elm's lab
// $DA78: Bitflags
//        Bit1 = S.S. Aqua has arrived
// $DA79: Bitflags
//        Bit3 = Grizz's PC unlocked
// $DA7A: Bitflags
//        Bit0 = Capsule broken in Pokemon Mansion
// $DA7B: bit 2 = Old Amber
//        bit 7 = Bill's Eevee
// $DA7D: bit3=bicycle (johto)
// $DA82: Bitflags
//        Bit1 = Pack 56 (Pinky)
//        Bit2 = Pack 55 (Bloink)
//        Bit3 = Pack 54 (Weirdgrape)
// $DA94: Bitflags
//        Bit6 = SS in Sprout Tower
//        bit 7 = SS Final
//        [Credit: FluffyEmmy]
// $DA98: Bitflags
//        Bit0 = MMZ2 - Power Bom (Savage Randy or Super Nerd Cosmo)
// $DA9B: bit 6 = DV Vision
// $DA9E: bit 0 = Pigy battled
// $DA9F: Bitflags
//        Bit7 = Had lunch with Doom
// $DAA4: Bitflags
//        Bit5 = The Champ despawned
// $DAA6: Bitflags
//        Bit5 = Fibbef Master Ball
// $DAA8: Bitflags
//        Bit2 = Spruce Lee despawned
// $DAA9: Bitflags
//        Bit0 = Pack 59 (Route 40 Poke Doll)
// $DAAA: Bitflags
//        Bit5 = Upper patch of grass permanently cut (Route 34)
//        Bit6 = Lower patch of grass permanently cut
//        Bit7 = Kanto TMs unlocked in Grizz's PC
// $DAAB: Bitflags
//        Bit4 = Pack 53 (Lemon)
//        Bit5 = Rare Candies from Pigy
//        Bit6 = Take Berry from Pikachu
// $DAB0: Bitflags
//        Bit3 = Poke Flute
// $DAB6: Bitflags
//        Bit0 = Lass Tiffany
// $DAB8: Bitflags
//        Bit3 = Pack 58 (Battle Interviewer Fef)
// $DAC2: Bitflags
//        Bit0 = Rocket Jata
//        Bit7 = PokeKid Muddy
//        [Credit: Blazekickn]
// $DAC3: Bitflags
//        Bit2 = Gold's Mom
//        Bit4 = Red's Mom
// $DAC4: Bitflags
//        Bit2 = Learn to scan footprints
// $DAC6: Bitflags
//        Bit5 = Pink Bed
//        Bit6 = Polkadot Bed
//        Bit7 = Pikachu Bed
// $DAC7: Bitflags
//        Bit0 = Red Carpet
//        Bit1 = Blue Carpet
//        Bit2 = Yellow Carpet
//        Bit3 = Green Carpet
//        Bit4 = Magnaplant
//        Bit5 = Tropicplant
//        Bit6 = Jumboplant
// $DAC8: Bitflags
//        Bit0 = Pikachu Poster
//        Bit1 = Clefairy Poster
//        Bit2 = Jigglypuff Poster
//        Bit3 = NES
//        Bit4 = SNES
//        Bit5 = N64
//        Bit6 = Wii
//        Bit7 = Pikachu Doll
// $DAC9: Bitflags
//        Bit0 = Surfing Pikachu Doll
//        Bit1 = Clefairy Doll
//        Bit2 = Jigglypuff Doll
//        Bit3 = Bulbasaur Doll
//        Bit4 = Charmander Doll
//        Bit5 = Squirtle Doll
//        Bit6 = Poliwag Doll
//        Bit7 = Diglett Doll
// $DACA: Bitflags
//        Bit0 = Starmie Doll
//        Bit1 = Magikarp Doll
//        Bit2 = Oddish Doll
//        Bit3 = Gengar Doll
//        Bit4 = Shellder Doll
//        Bit5 = Grimer Doll
//        Bit6 = Voltorb Doll
//        Bit7 = Weedle Doll
// $DACB: Bitflags
//        Bit0 = Unown Doll
//        Bit1 = Geodude Doll
//        Bit2 = Machop Doll
//        Bit3 = Tentacool Doll
//        Bit5 = Gold Trophy
//        Bit6 = Silver Trophy
//        Bit7 = Big Snorlax Doll
// $DACC: Bitflags
//        Bit0 = Big Onix Doll
//        Bit1 = Big Lapras Doll
// $DAD5: Bitflags
//        Bit0 = Lugia despawned
// $DAD6: Bitflags
//        Bit5 = Portablizer Shank defeated
// $DAD8: Bitflags
//        Bit6 = Rainbow Wing stolen from Sprout Tower
// $DAD9: bit6 = oddegg
// $DADC: Bitflags
//        Bit3 = Big Rock
// $DADF: bit1 = SS's PC
// $DAE2: Bitflags
//        Bit6 = Pack 52 (Battle Pigy)
//        Bit7 = Pack 57 (Mt. Rose Swinub)
// $DAE4: bit2=PickUpSword
// $DAE5: Bitflags
//        bit1-4=getfuckedbyfrankforusinghacks
//        Bit5 = Doug despawned
//        Bit6 = Bluebell battled
//        Bit7 = Bluebell caught
//        [Credit: Blazekickn]
// $DAE6: Bitflags
//        Bit6 = Meditated with Eusine
// $DAE9: Bitflags
//        Bit5 = XD Cipher Peon / Colo Cipher Peon (Doom in National Park)
//        Bit6 = Kanto Legend (Articuno/Zapdos/Moltres)
//        Bit7 = Ho-Oh Battle
// $DAEA: Bitflags
//        Bit0 = Lugia Battle
//        Bit1 = Zinnia Battle (Fibbef in Mt. Moon)
//        Bit2 = Miror B's Theme (Fibbef in Route 7)
//        Bit3 = Miror B. Battle (Fibbef in Cinnabar Tunnel)
//        Bit4 = Battle Sim
//        Bit5 = DPPT Champion (Elite 4 Doom)
//        Bit6 = Alola Legend (Entei/Raikou/Mew)
//        Bit7 = Mewtwo's Theme
// $DAEB: Bitflags
//        Bit0 = Falling Down (Final SS)
//        Bit1 = MMBN4 Boss Theme / BN5 Battle / MMBN6 - Boss (SS in Forge)
//        Bit2 = Eyes Of Flame (Ness or Honeybun in Olivine)
//        Bit3 = Splattack! (Elite 4 Rowan)
//        Bit4 = Contra Boss (Elite 4 Fibbef)
//        Bit5 = Moment Of Silence (Elite 4 Honeybun)
//        Bit6 = Johto GSC Remix (Musician Frogg)
//        Bit7 = MMZ2 Crash (Interviewer Fef)
// $DAEC: Bitflags
//        Bit0 = MMZ Supreme Ruler (Fibbef in Silver Cave)
//        Bit1 = MMX5 X vs Zero (SS in Indigo Plateau)
//        Bit2 = Guile's Theme (Lt. Surge)
//        Bit3 = Great Battlers (Arena)
//        Bit4 = Macho Man (Chronicler Rowan)
//        Bit5 = TCG Ronald's Theme / Divine Bloodlines / GBC - Run Run Run (Engineer Kensworth)
//        Bit6 = Rocket Battle
//        Bit7 = Blitz it / Perel's Theme (Acetrainer Tiko)
// $DAED: Bitflags
//        Bit0 = Nothing Beats / MMZ3 - Cannonball (DJ Fef)
//        Bit1 = MMS - Wily Field (Researcher Grizz)
//        Bit2 = X5 Dynamo's Theme (Ex-Rocket Zevach)
//        Bit3 = Cheesy Tetris (Diviner Rain)
//        Bit4 = Jake Marshall / Teehee Valley (Cowboy Noak)
// $DAEE: bit4 = Forest Path Found
// $DAF4: bit1-4,7=sprouttowertrainers
// $DAF5: bit0=sprouttowertrainers bit1=sprouttowerelder
// $DAF8: Bitflags
//        Bit0 = Pikablu despawned
// $DAFB: Bitflags
//        Bit1 = Char King Vogner
// $DAFF: Bitflags
//        Bit3 = Speak to Cinnabar Lab guard
// $DB07: Bitflags
//        Bit7 = Mess with guard's computer
// $DB09: Bitflags
//        Bit0 = Portablizer Shank gives Rare Candy
//        Bit3 = Chaos gives Lemonade
// $DB11: Bitflags
//        Bit0 = Stationary Raikou despawned
//        Bit1 = Stationary Entei despawned
//        Bit7 = Event Moves unlocked in Grizz's PC
// $DB13: Bitflags
//        Bit1 = Blackbelt Mickdee
//        Bit2 = Boarder Colgate
//        Bit3 = Burglar Frank 1
//        [Credit: Blazekickn]
// $DB27: bit1=youngster joey
// $DB30: Bitflags
//        Bit5 = Luster Ball
// $DB32: Bitflags
//        Bit4 = PKMN Trainer Yellow
//        Bit5 = Adventurer Lena
//        Bit7 = SA2 - City Escape (Acetrainer Cat)
//        [Credit: FluffyEmmy]
// $DB33: Bitflags
//        Bit4 = Sonic X Theme (Acetrainer Cat)
//        Bit5 = Burglar Frank 2
// $DB34: Bitflags
//        Bit4 = Weirdgrape despawned
// $DB3F: Bitflags
//        Bit1 = Mew shown to Mr. Fuji
//        Bit2 = Suicune defeated
//        Bit3 = Suicune caught
// $DB50: Bitflags
//        Bit3 = Forest Scizor despawned
//        Bit4 = Forest Sneasel despawned
//        Bit5 = Forest Tyranitar despawned
// $DB53: Bitflags
//        Bit0 = :B: despawned
//        Bit1 = Zapdos despawned
//        Bit2 = Moltres despawned
//        Bit3 = Articuno despawned
// $DB5A: Bitflags
//        Bit0 = Piloswine puzzle solved
// $DB5B: Bitflags
//        Bit7 = Mt. Silver boss is spawned
// $DB5C: bit1=RedScale
// $DB5F: bit5=ness
// $DB61: bit4=border npc
// $DB64: Bitflags
//        Bit0 = Determined Eyes (Copycat)
// $DBF3: Bitflags
//        Bit4 = Alph Forest healed
//        Bit7 = Xatu Haze
// $DBF5: Strengh active = 01
// $DC2C: Arena - Current Consecutive Wins [8-bit]
// $DC30: Arena - Total Wins [8-bit]
// $DC3C: Arena Settings [Bitfield]
//        
//        Bit0 = Species Clause
//        Bit1 = Item Clause
//        
//        Bans
//        XXXX01XX = Legends
//        XXXX10XX = Pigyournament
//        XXXX11XX = Both
//        
//        Pool
//        001XXXXX = Little Cup
//        010XXXXX = Fully Evolved
//        111XXXXX = Both
// $DC3D: Arena Settings [Bitfield]
//        
//        Levels
//        XXXXXX00 = 5
//        XXXXXX01 = 50
//        XXXXXX10 = 100
//        XXXXXX11 = Scaled
// $DC3E: Arena Difficulty [8-bit]
// $DC40: Arena Points Per Win [8-bit]
// $DC4B: Buena's Password Points
// $DC4F: Bitflags
//        Bit1 = Honeybun (Olivine)
//        Bit2 = Fibbef (Roaming)
//        Bit4 = Beautifulman Chaos
//        Bit5 = Chronicler Rowan
//        Bit6 = DJ Fef
// $DC7A: Arena Points [16-bit BE]
// $DC99: Bitflags
//        Bit0 = Professor Oak
//        Bit1 = Acetrainer Tiko
//        Bit4 = Engineer Kensworth
//        Bit5 = Researcher Grizz
//        Bit6 = Ex-Rocket Zevach
// $DC9A: Bitflags
//        Bit0 = Diviner Rain
//        Bit1 = Acetrainer Cat
//        Bit2 = Cowboy Noak
//        Bit6 = Goldenrod Cafe mascot shown
// $DCA1: Repel Steps Remaining
// $DCB7: Current map position (row)
// $DCB8: Current map position (column)
// $DCD7: party size
// $DCD8: party start (1)
//        0x3d = Poliwhirl
//        0x40 = Kadabra
//        0x41 = Alakazam
//        0x43 = Machoke
//        0x44 = Machamp
//        0x4b = Graveler
//        0x4c = Golem
//        0x4f = Slowpoke
//        0x5d = Haunter
//        0x5e = Gengar
//        0x5f = Onix
//        0x75 = Seadra
//        0x7b = Scyther
//        0x81 = Magikarp
//        0x82 = Gyarados
//        0x89 = Porygon
//        0xba = Politoed
//        0xc7 = Slowking
//        0xd0 = Steelix
//        0xd4 = Scizor
//        0xe6 = Kingdra
//        0xe9 = Porygon2
//        [Credit: FluffyEmmy]
// $DCDD: party end (6)
// $DCDF: Pokemon 1 index
// $DCE0: Pokemon 1 held item
// $DCE1: Pokemon 1 Move 1 [8-bit]
//        0x06 = Pay Day
//        0x39 = Surf
//        0x70 = Barrier
//        0x96 = Splash
//        [Credit: Blazekickn]
// $DCE2: Pokemon 1 Move 2
// $DCE3: Pokemon 1 Move 3
// $DCE4: Pokemon 1 Move 4
// $DCEA: Pokemon 1 HP EVs [16-bit BE]
// $DCF4: Pokemon 1 upper4=atk dvs lower4=def dvs
// $DCF5: Pokemon 1 upper4=spe dvs lower4=spc dvs
// $DCF6: Pokemon 1 PP 1
// $DCFA: Pokemon 1 Happiness + (if egg) time left to hatch
// $DD02: Pokemon 1 Current HP
// $DD0F: Pokemon 2 index
// $DD11: Pokemon 2 Moves [4 bytes]
// $DD24: Pokemon 2 DVs
// $DD25: Pokemon 2 DVs
// $DD2A: Pokemon 2 Happiness + (if egg) time left to hatch
// $DD3F: Pokemon 3 index
// $DD41: Pokemon 3 Moves [4 bytes]
// $DD54: Pokemon 3 DVs
// $DD55: Pokemon 3 DVs
// $DD5A: Pokemon 3 Happiness + (if egg) time left to hatch
// $DD6F: Pokemon 4 index
// $DD71: Pokemon 4 Moves [4 bytes]
// $DD84: Pokemon 4 DVs
// $DD85: Pokemon 4 DVs
// $DD8A: Pokemon 4 Happiness + (if egg) time left to hatch
// $DD9F: Pokemon 5 index
// $DDA1: Pokemon 5 Moves [4 bytes]
// $DDB4: Pokemon 5 DVs
// $DDB5: Pokemon 5 DVs
// $DDBA: Pokemon 5 Happiness + (if egg) time left to hatch
// $DDCF: Pokemon 6 index
// $DDD1: Pokemon 6 Moves [4 bytes]
// $DDE4: Pokemon 6 DVs
// $DDE5: Pokemon 6 DVs
// $DDEA: Pokemon 6 Happiness + (if egg) time left to hatch
// $DE41: Pokemon 1 Name [10 bytes]
//        0x50 = Space
//        0x80 to 0x99 = A to Z
//        0x9a to 0x9f = ( ) : ; [ ]
//        0xa0 to 0xb9 = a to z
//        0xe1 to 0xe3 = PK MN -
//        0xe6 to 0xe8 = ? ! .
//        0xf3 to 0xf4 = / ,
//        
//        SKULKRAKEN = 92 8a 94 8b 8a 91 80 8a 84 8d
//        skulkraken = b2 aa b4 ab aa b1 a0 aa a4 ad
// $DE4C: Pokemon 2 Name [10 bytes]
// $DE57: Pokemon 3 Name [10 bytes]
// $DE62: Pokemon 4 Name [10 bytes]
// $DE6D: Pokemon 5 Name [10 bytes]
// $DE78: Pokemon 6 Name [10 bytes]
// $DE99: Pokedex Caught Start (Full at start to trick the game)
// $DEB9: Pokedex Seen Start
// $DECB: bit 6 - Mew
// $DED9: Unown Entry 1
// $DEF2: Unown Entry 26
// $DFCF: Raikou Status [8-bit]
//        0x00 = Caught or defeated
//        0xf3 = Active
// $DFD1: Roaming Raikou - Current Location [16-bit]
//        0xffff = Caught or defeated
// $DFD6: Entei Status [8-bit]
//        0x00 = Caught or defeated
//        0xf4 = Active
// $DFD8: Roaming Entei - Current Location [16-bit]
// $DFDD: Mew Status [8-bit]
//        0x00 = Caught or defeated
//        0x97 = Active
// $DFDF: Roaming Mew - Current Location [16-bit]
// $EFE7: Pokemon Displayed on Screen [8-bit]
// $EFF0: New Game+ [8-bit]
// $EFF1: Nuzlocke Mode [8-bit]
// $F84E: Money [24-bit BE]
// $FFE4: Battle Turn [8-bit]

sfx = byte(0xc1c9)
catch_hatch_evolve = 2
error = 0x19
get_badge = 0x9c
ruins_puzzle_complete = 0x99

location_index = byte(0xc2d8)

opponent_pkmn_name = 0xc616
char_B = 0x81
char_C = 0x82
char_D = 0x83
char_K = 0x8a
char_L = 0x8b
char_N = 0x8d
char_P = 0x8f
char_S = 0x92
char_T = 0x93
char_W = 0x96
char_X = 0x97
char_colon = 0x9c

battle_win = byte(0xc6fd)
pkmn_display = byte(0xcfe7)
new_game_plus = byte(0xcff0)
nuzlocke_mode = byte(0xcff1)

input = 0xd03e
input_a = bit0(input)

opponent_pkmn = byte(0xd206)
opponent_pkmn_dvs = word(0xd20c)
opponent_pkmn_level = byte(0xd213)
battle_type = byte(0xd22d)
wild = 1
trainer = 2

opponent_pkmn_wild = byte(0xd22e)
rattata = 0x13
pikachu = 0x19
mankey = 0x38
dewgong = 0x57
haunter = 0x5d
onix = 0x5f
voltorb = 0x64
kangaskhan = 0x73
dragonite = 0x95
spinarak = 0xa7
sudowoodo = 0xb9
sunkern = 0xbf
scizor = 0xd4
sneasel = 0xd7
swinub = 0xdc
piloswine = 0xdd
poliwhirl = 0x3d
kadabra = 0x40
alakazam = 0x41
machoke = 0x43
machamp = 0x44
graveler = 0x4b
golem = 0x4c
slowpoke = 0x4f
haunter = 0x5d
gengar = 0x5e
onix = 0x5f
seadra = 0x75
starmie = 0x79
scyther = 0x7b
magikarp = 0x81
gyarados = 0x82
porygon = 0x89
aerodactyl = 0x8e
snorlax = 0x8f
articuno = 0x90
zapdos = 0x91
moltres = 0x92
mewtwo = 0x96
mew = 0x97
togepi = 0xaf
politoed = 0xba
slowking = 0xc7
unown = 0xc9
steelix = 0xd0
scizor = 0xd4
skarmory = 0xe3
kingdra = 0xe6
porygon2 = 0xe9
stantler = 0xea
smeargle = 0xeb
tyrogue = 0xec
elekid = 0xef
miltank = 0xf1
raikou = 0xf3
entei = 0xf4
suicune = 0xf5
tyranitar = 0xf8
lugia = 0xf9
ho_oh = 0xfa
celebi = 0xfb

opponent_trainer = byte(0xd22f)
falkner = 1
whitney = 2
bugsy = 3
morty = 4
pryce = 5
jasmine = 6
chuck = 7
clair = 8
e4_will = 0x0a
e4_bruno = 0x0c
e4_karen = 0x0d
e4_koga = 0x0e
champion_lance = 0x0f
brock = 0x10
misty = 0x11
surge = 0x12
erika = 0x14
lass = 0x18
janine = 0x19
sabrina = 0x21
blaine = 0x2b
red = 0x3a
blue = 0x3b
gold = 0x3e
crystal = 0x3f
green = 0x40
ss = 0x41
fibbef = 0x43
acetrainer_tiko = 0x52
dj_fef = 0x53
engineer_kensworth = 0x54
adventurer_lena = 0x58
cowboy_noak = 0x5a
researcher_grizz = 0x5b
ex_rocket_zevach = 0x5c
pokekid_muddy = 0x5d
diviner_rain = 0x5e
acetrainer_cat = 0x5f
golds_mom = 0x60
reds_mom = 0x61

player_sprite_facing = byte(0xd4de)
up = 4

key_item = 0xd8bd
applicator = 0x45

badges_johto = bitcount(0xd857)
badges_kanto = bitcount(0xd858)
badges = word(0xd857)
hof_wins = byte(0xd95e)
unown_tablet_charges = byte(0xd965)

player_home = byte(0xd9c2)
acetrainer_hq_home = 0x32
goldenrod_underground_home = 0x35
dj_lilys_home = 0x37
safari_zone_home = 0x38
battle_tower_home = 0x39
bills_cottage_home = 0x3a
dragons_den_home = 0x3b

chained_pkmn = byte(0xd9ca)
chain_count = byte(0xd9cb)
dex_tracker = bit0(0xd9cc)
pkmn_center_heal = byte(0xd9fb)

map = word(0xda3a)
dark_cave_w = 0x4e03
dragons_den = 0x5103
dragons_den_shrine = 0x5203
forest_path = 0x121a
forge = 0x111a
goldenrod_radio_tower_2f = 0x1203
goldenrod_radio_tower_4f = 0x1403
goldenrod_radio_tower_5f = 0x1503
goldenrod_store_b2f = 0x3703
goldenrod_underground = 0x3403
honeybuns_house = 0x0f01
ice_path_b3f = 0x4003
ilex_forest = 0x3303
lugia_chamber = 0x4803
mahogany_bazaar = 0x3103
mahogany_gym = 0x0202
mt_mortar_peaks = 0x0902
olivine_gym = 0x0201
power_plant_b1f = 0x0c02
route_39 = 0x0d01
ruins_of_alph = 0x1603
ruins_piloswine_puzzle = 0x0b02
ruins_pillar_7 = 0x0e02
ruins_library = 0x0f02
silver_cave_chambers = 0x4d03
silver_cave_peak = 0x4c03
silver_cave_w = 0x4903
slowpoke_well_1f = 0x2803
slowpoke_well_b1f = 0x2903
sprout_tower_3f = 0x0303
tin_tower_1f = 0x0403
union_cave_1f = 0x2503
whirl_islands_1f_nw = 0x4103
mt_moon_1f_w = 0x5503
mt_moon_b2f = 0x5703
arena = 0x5803
rock_tunnel_b1f = 0x5a03
victory_road = 0x5b03
tohjo_falls_2f = 0x6003
ecruteak_gym = 0x0704
blackthorn_gym = 0x0105
mt_rose = 0x0a05
cinnabar_lab = 0x0306
dv_viewer_room = 0x0506
fossil_lab = 0x0606
cinnabar_gym = 0x0706
seafoam_islands_b3f = 0x0b06
seafoam_islands_b4f = 0x0c06
route_21 = 0x0f06
cinnabar_tunnel = 0x1206
cinnabar_mart = 0x1406
cinnabar_home = 0x1706
cerulean_gym = 0x0507
moltres_chamber = 0x0907
route_10_n = 0x0d07
route_24 = 0x0e07
route_25 = 0x0f07
cerulean_cave_b1f = 0x1407
route_24_cave = 0x1707
azalea_gym = 0x0508
route_33 = 0x0608
azalea_home = 0x0808
lake_of_rage = 0x0609
forest_of_rage = 0x0709
violet_city = 0x050a
violet_gym = 0x070a
route_34 = 0x010b
goldenrod_gym = 0x030b
goldenrod_station = 0x070b
goldenrod_store_1f = 0x0b0b
goldenrod_game_corner = 0x130b
goldenrod_cafe = 0x1a0b
alph_forest = 0x1c0b
vermilion_gym = 0x0b0c
grullo_gorge = 0x0e0c
built_house = 0x150c
reds_house_1f = 0x030d
oaks_lab = 0x060d
pewter_gym = 0x040e
pewter_museum_1f = 0x080e
pewter_museum_2f = 0x090e
grizzs_lab = 0x0b0e
ace_trainer_hq_1f = 0x0c0e
ace_trainer_hq_2f = 0x0d0e
route_3 = 0x010e
vermilion_port = 0x020f
ss_aqua_cabins_se = 0x060f
mt_moon_square = 0x0a0f
tin_tower_rooftop = 0x0c0f
route_23 = 0x0110
e4_doom_chamber = 0x0410
e4_fibbef_chamber = 0x0510
hall_of_fame = 0x0810
battle_sim = 0x0b10
fuchsia_city = 0x0211
fuchsia_gym = 0x0511
safari_zone_forest = 0x0f11
route_13 = 0x0512
lavender_radio_tower = 0x0f12
route_28 = 0x0113
viridian_forest = 0x0513
pkmn_mansion_b1f = 0x0913
route_7 = 0x0115
celadon_store_1f = 0x0515
celadon_gym = 0x1415
celadon_mansion_3f = 0x0e15
celadon_game_corner_b1f = 0x1a15
route_40 = 0x0116
cianwood_gym = 0x0616
hint_house = 0x0c16
cianwood_home = 0x1016
viridian_gym = 0x0417
new_bark_town = 0x0418
golds_house_1f = 0x0618
lake_tohjo = 0x0f18
origin_plains = 0x1018
saffron_gym = 0x0219
silph_co_1f = 0x0719
cherrygrove_bay = 0x0c1a
ss_house = 0x0d1a
silph_co_2f = 0x1019
route_27 = 0x0218
route_30 = 0x011a

gym_rechallenge_level = byte(0xda50)
gym_rechallenge_location = byte(0xda51)
gym_rechallenge_active = byte(0xda52)
arena_wins = byte(0xdc2c)
arena_points = word_be(0xdc7a)
map_position = word(0xdcb7)
party_size = byte(0xdcd7)
party_pkmn = 0xdcd8

party_pkmn_1_move = 0xdce1
party_pkmn_2_move = 0xdd11
party_pkmn_3_move = 0xdd41
party_pkmn_4_move = 0xdd71
party_pkmn_5_move = 0xdda1
party_pkmn_6_move = 0xddd1
pay_day = 6
surf = 0x39
barrier = 0x70
splash = 0x96

pkmn_1_dvs = word(0xdcf4)
pkmn_2_dvs = word(0xdd24)
pkmn_3_dvs = word(0xdd54)
pkmn_4_dvs = word(0xdd84)
pkmn_5_dvs = word(0xddb4)
pkmn_6_dvs = word(0xdde4)

pkmn_1_level = byte(0xdcfe)
pkmn_2_level = byte(0xdd2e)
pkmn_3_level = byte(0xdd5e)
pkmn_4_level = byte(0xdd8e)
pkmn_5_level = byte(0xddbe)
pkmn_6_level = byte(0xddee)

pkmn_1_hp = word(0xdd01)

pkmn_1_name = 0xde41
pkmn_2_name = 0xde4c
pkmn_3_name = 0xde57
pkmn_4_name = 0xde62
pkmn_5_name = 0xde6d
pkmn_6_name = 0xde78

// ------------
// Achievements
// ------------

function achievement_catch(id, title, description, points, type, map_param, pkmn_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        type = type,
        trigger =
            map == map_param &&
            battle_type == wild &&
            opponent_pkmn_wild == pkmn_param &&
            battle_win == 0 &&
            sfx == catch_hatch_evolve
    )
}

achievement(
    id = 513323,
    title = "Lord of Thunder",
    description = "Catch Raikou",
    points = 3,
    trigger =
        battle_type == wild &&
        opponent_pkmn_wild == raikou &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve
)

achievement(
    id = 513324,
    title = "Lord of Fire",
    description = "Catch Entei",
    points = 3,
    trigger =
        battle_type == wild &&
        opponent_pkmn_wild == entei &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve
)

achievement_catch(
    id = 513325,
    title = "Beast of the Sea",
    description = "Catch Lugia",
    points = 5,
    type = "",
    map_param = lugia_chamber,
    pkmn_param = lugia
)

achievement_catch(
    id = 513326,
    title = "Mystery of the GS Ball",
    description = "Catch Celebi",
    points = 5,
    type = "",
    map_param = ilex_forest,
    pkmn_param = celebi
)

achievement_catch(
    id = 513327,
    title = "Icebird",
    description = "Catch Articuno",
    points = 3,
    type = "",
    map_param = seafoam_islands_b4f,
    pkmn_param = articuno
)

achievement_catch(
    id = 513328,
    title = "Thunderbird",
    description = "Catch Zapdos",
    points = 3,
    type = "",
    map_param = route_10_n,
    pkmn_param = zapdos
)

function achievement_bitflag(id, title, description, points, type, map_param, bitflag_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        type = type,
        trigger =
            prev(map) == map_param &&
            map == map_param &&
            bitflag_param > prev(bitflag_param)
    )
}

achievement_bitflag(
    id = 513329,
    title = "Soul Silver",
    description = "Steal the Egg from Prof. Elm's lab",
    points = 1,
    type = "MISSABLE",
    map_param = new_bark_town,
    bitflag_param = bit5(0xda77)
)

achievement(
    id = 513330,
    title = "Azalea Explorer",
    description = "Find a hidden entrance into Slowpoke Well",
    points = 1,
    trigger =
        prev(map) == azalea_home &&
        map == slowpoke_well_1f
)

achievement_bitflag(
    id = 513331,
    title = "A Star Is Born",
    description = "Present a shiny mascot for the Goldenrod Cafe's sign",
    points = 5,
    type = "MISSABLE",
    map_param = goldenrod_cafe,
    bitflag_param = bit1(0xdaaa)
)

achievement_bitflag(
    id = 513332,
    title = "Doom's Day Out",
    description = "Have lunch with Doom at the Goldenrod Cafe",
    points = 3,
    type = "",
    map_param = goldenrod_cafe,
    bitflag_param = bit7(0xda9f)
)

achievement(
    id = 513333,
    title = "You Never Saw Me",
    description = "Receive a bribe from the Arena Announcer in the Goldenrod Cafe",
    points = 1,
    type = "MISSABLE",
    trigger =
        never(map != goldenrod_cafe) &&
        repeated(5, arena_points > prev(arena_points))
)

achievement(
    id = 513334,
    title = "Day Care Gardener",
    description = "Permanently cut a special patch of grass in Route 34, then regrow it",
    points = 1,
    trigger =
        prev(map) == route_34 &&
        map == route_34 &&
        __ornext(
            bit5(0xdaaa) < prev(bit5(0xdaaa)) ||
            bit6(0xdaaa) < prev(bit6(0xdaaa))
        )
)

achievement_bitflag(
    id = 513335,
    title = "Wing Commander",
    description = "Obtain the Rainbow Wing without defeating the Sages in Sprout Tower",
    points = 1,
    type = "MISSABLE",
    map_param = violet_city,
    bitflag_param = bit6(0xdad8)
)

achievement(
    id = 513336,
    title = "The Fifth Puzzle",
    description = "Complete the puzzle in the northwestern chamber of the Ruins of Alph",
    points = 3,
    trigger =
        map == ruins_piloswine_puzzle &&
        map_position == 0x0503 &&
        player_sprite_facing == up &&
        sfx == ruins_puzzle_complete
)

achievement(
    id = 513337,
    title = "Who Needs Whirlpool?",
    description = "Find a hidden passage into the Whirl Islands",
    points = 1,
    trigger =
        prev(map) == cianwood_home &&
        map == whirl_islands_1f_nw
)

achievement(
    id = 513338,
    title = "Spending Spree",
    description = "Collect all decorations from the Mahogany Bazaar",
    points = 5,
    trigger =
        prev(bit5(0xdac6)) +
        prev(bit6(0xdac6)) +
        prev(bit7(0xdac6)) +
        (prev(bitcount(0xdac7)) - prev(bit7(0xdac7))) +
        prev(bitcount(0xdac8)) +
        prev(bitcount(0xdac9)) +
        prev(bitcount(0xdaca)) +
        (prev(bitcount(0xdacb)) - prev(bit4(0xdacb))) +
        prev(bit0(0xdacc)) +
        prev(bit1(0xdacc)) == 42 &&
        measured(
            bit5(0xdac6) +
            bit6(0xdac6) +
            bit7(0xdac6) +
            (bitcount(0xdac7) - bit7(0xdac7)) +
            bitcount(0xdac8) +
            bitcount(0xdac9) +
            bitcount(0xdaca) +
            (bitcount(0xdacb) - bit4(0xdacb)) +
            bit0(0xdacc) +
            bit1(0xdacc) == 43,
            when = map == mahogany_bazaar
        )
)

achievement_bitflag(
    id = 513339,
    title = "Entei Approves",
    description = "Help the old man find his granddaughter on the SS Aqua",
    points = 3,
    type = "",
    map_param = ss_aqua_cabins_se,
    bitflag_param = bit1(0xda78)
)

achievement_bitflag(
    id = 513340,
    title = "What's Wrong with You?",
    description = "Ruin a Pikachu's day in Pewter City",
    points = 1,
    type = "",
    map_param = pewter_museum_2f,
    bitflag_param = bit6(0xdaab)
)

achievement_bitflag(
    id = 513341,
    title = "Bricklayer",
    description = "Obtain the Oval Charm",
    points = 3,
    type = "",
    map_param = built_house,
    bitflag_param = bit3(0xd707)
)

achievement(
    id = 513342,
    title = "Hackerman",
    description = "Mess with the game program in Celadon Mansion",
    points = 1,
    trigger =
        map == celadon_mansion_3f &&
        map_position == 0x0107 &&
        player_sprite_facing == up &&
        sfx == error
)

achievement(
    id = 513343,
    title = "Cinnabar Explorer",
    description = "Find a hidden entrance into Cinnabar Tunnel",
    points = 1,
    trigger =
        prev(map) == cinnabar_home &&
        map == cinnabar_tunnel
)

achievement_bitflag(
    id = 513344,
    title = "Sound the Alarm",
    description = "Cause some trouble for the guard in Cinnabar Lab",
    points = 1,
    type = "",
    map_param = cinnabar_lab,
    bitflag_param = bit7(0xdb07)
)

achievement_bitflag(
    id = 513345,
    title = "When Life Gives You Lemons",
    description = "Get a drink from Chaos in New Cinnabar",
    points = 1,
    type = "",
    map_param = cinnabar_mart,
    bitflag_param = bit3(0xdb09)
)

// Blocks guaranteed encounters with perfect DVs - Pikablu, Crystalio, Bronzory, Snowcap, Alph Forest Sneasel & Tyranitar
achievement(
    id = 513346,
    title = "Off the Chain",
    description = "Using the Dex Tracker, catch a chained Pokemon with perfect DVs. Sweet Scent recommended!",
    points = 5,
    trigger =
        dex_tracker == 1 &&
        chain_count != 0 &&
        battle_type == wild &&
        opponent_pkmn_wild == chained_pkmn &&
        opponent_pkmn_dvs == 0xffff &&
        battle_win == 0 &&
        trigger_when(sfx == catch_hatch_evolve) &&
        unless(
            map == route_25 &&
            opponent_pkmn_wild == pikachu
        ) &&
        unless(
            map == fuchsia_city &&
            opponent_pkmn_wild == onix &&
            byte(opponent_pkmn_name) == 0x82
        ) &&
        unless(
            map == lake_of_rage &&
            opponent_pkmn_wild == skarmory &&
            byte(opponent_pkmn_name) == 0x81
        ) &&
        unless(
            map == ice_path_b3f &&
            opponent_pkmn_wild == piloswine &&
            byte(opponent_pkmn_name) == 0x92
        ) &&
        unless(
            map == alph_forest &&
            opponent_pkmn_wild == sneasel
        ) &&
        unless(
            map == alph_forest &&
            opponent_pkmn_wild == tyranitar
        )
)

achievement(
    id = 513347,
    title = "Thanks, Guy",
    description = "Have the Tradeback Guy help you evolve a Pokemon",
    points = 3,
    trigger =
        __ornext(
            map == goldenrod_store_1f ||
            map == celadon_store_1f
        ) &&
        __ornext(
            map_position == 0x0802 ||
            map_position == 0x0701
        ) &&
        sfx == catch_hatch_evolve &&
        (
            (
                prior(pkmn_display) == kadabra &&
                pkmn_display == alakazam
            ) ||
            (
                prior(pkmn_display) == machoke &&
                pkmn_display == machamp
            ) ||
            (
                prior(pkmn_display) == graveler &&
                pkmn_display == golem
            ) ||
            (
                prior(pkmn_display) == haunter &&
                pkmn_display == gengar
            ) ||
            (
                prior(pkmn_display) == poliwhirl &&
                pkmn_display == politoed
            ) ||
            (
                prior(pkmn_display) == slowpoke &&
                pkmn_display == slowking
            ) ||
            (
                prior(pkmn_display) == onix &&
                pkmn_display == steelix
            ) ||
            (
                prior(pkmn_display) == scyther &&
                pkmn_display == scizor
            ) ||
            (
                prior(pkmn_display) == seadra &&
                pkmn_display == kingdra
            ) ||
            (
                prior(pkmn_display) == porygon &&
                pkmn_display == porygon2
            )
        )
)

achievement(
    id = 513348,
    title = "Back in Business",
    description = "Revive a Pokemon from a fossil",
    points = 3,
    trigger =
        prev(map) == fossil_lab &&
        map == fossil_lab &&
        __ornext(
            bit3(0xda75) < prev(bit3(0xda75)) ||
            bit4(0xda75) < prev(bit4(0xda75)) ||
            bit5(0xda75) < prev(bit5(0xda75))
        )
)

achievement(
    id = 513349,
    title = "Battle Innovations",
    description = "Gain access to Grizz's PC",
    points = 1,
    trigger =
        bit3(0xda79) > prev(bit3(0xda79)) &&
        (
            (
                prev(map) == grizzs_lab &&
                map == grizzs_lab
            ) ||
            (
                prev(map) == dark_cave_w &&
                map == dark_cave_w
            )
        )
)

function check_moves(pkmn_param, move_param) {
    if (pkmn_param != 0) {
        logic_param_1 = byte(party_pkmn) == pkmn_param
        logic_param_2 = byte(party_pkmn + 1) == pkmn_param
        logic_param_3 = byte(party_pkmn + 2) == pkmn_param
        logic_param_4 = byte(party_pkmn + 3) == pkmn_param
        logic_param_5 = byte(party_pkmn + 4) == pkmn_param
        logic_param_6 = byte(party_pkmn + 5) == pkmn_param
    }
    else {
        logic_param_1 = always_true()
        logic_param_2 = always_true()
        logic_param_3 = always_true()
        logic_param_4 = always_true()
        logic_param_5 = always_true()
        logic_param_6 = always_true()
    }
    return
        (
            (
                logic_param_1 &&
                prev(byte(party_pkmn_1_move)) != move_param &&
                prev(byte(party_pkmn_1_move + 1)) != move_param &&
                prev(byte(party_pkmn_1_move + 2)) != move_param &&
                prev(byte(party_pkmn_1_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_1_move) == move_param ||
                    byte(party_pkmn_1_move + 1) == move_param ||
                    byte(party_pkmn_1_move + 2) == move_param ||
                    byte(party_pkmn_1_move + 3) == move_param
                )
            ) ||
            (
                logic_param_2 &&
                prev(byte(party_pkmn_2_move)) != move_param &&
                prev(byte(party_pkmn_2_move + 1)) != move_param &&
                prev(byte(party_pkmn_2_move + 2)) != move_param &&
                prev(byte(party_pkmn_2_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_2_move) == move_param ||
                    byte(party_pkmn_2_move + 1) == move_param ||
                    byte(party_pkmn_2_move + 2) == move_param ||
                    byte(party_pkmn_2_move + 3) == move_param
                )
            ) ||
            (
                logic_param_3 &&
                prev(byte(party_pkmn_3_move)) != move_param &&
                prev(byte(party_pkmn_3_move + 1)) != move_param &&
                prev(byte(party_pkmn_3_move + 2)) != move_param &&
                prev(byte(party_pkmn_3_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_3_move) == move_param ||
                    byte(party_pkmn_3_move + 1) == move_param ||
                    byte(party_pkmn_3_move + 2) == move_param ||
                    byte(party_pkmn_3_move + 3) == move_param
                )
            ) ||
            (
                logic_param_4 &&
                prev(byte(party_pkmn_4_move)) != move_param &&
                prev(byte(party_pkmn_4_move + 1)) != move_param &&
                prev(byte(party_pkmn_4_move + 2)) != move_param &&
                prev(byte(party_pkmn_4_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_4_move) == move_param ||
                    byte(party_pkmn_4_move + 1) == move_param ||
                    byte(party_pkmn_4_move + 2) == move_param ||
                    byte(party_pkmn_4_move + 3) == move_param
                )
            ) ||
            (
                logic_param_5 &&
                prev(byte(party_pkmn_5_move)) != move_param &&
                prev(byte(party_pkmn_5_move + 1)) != move_param &&
                prev(byte(party_pkmn_5_move + 2)) != move_param &&
                prev(byte(party_pkmn_5_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_5_move) == move_param ||
                    byte(party_pkmn_5_move + 1) == move_param ||
                    byte(party_pkmn_5_move + 2) == move_param ||
                    byte(party_pkmn_5_move + 3) == move_param
                )
            ) ||
            (
                logic_param_6 &&
                prev(byte(party_pkmn_6_move)) != move_param &&
                prev(byte(party_pkmn_6_move + 1)) != move_param &&
                prev(byte(party_pkmn_6_move + 2)) != move_param &&
                prev(byte(party_pkmn_6_move + 3)) != move_param &&
                __ornext(
                    byte(party_pkmn_6_move) == move_param ||
                    byte(party_pkmn_6_move + 1) == move_param ||
                    byte(party_pkmn_6_move + 2) == move_param ||
                    byte(party_pkmn_6_move + 3) == move_param
                )
            )
        )
}

achievement(
    id = 513350,
    title = "Tidal Wave!",
    description = "Teach Splash to a Snorlax",
    points = 1,
    trigger =
        repeated(5,
            map != 0 &&
            never(map == 0)
        ) &&
        battle_type == 0 &&
        check_moves(snorlax, splash)
)

achievement(
    id = 513351,
    title = "Lance's Heir",
    description = "Teach Barrier to a Dragonite",
    points = 1,
    trigger =
        repeated(5,
            map == dragons_den_shrine &&
            never(map != dragons_den_shrine)
        ) &&
        battle_type == 0 &&
        check_moves(dragonite, barrier)
)

achievement_bitflag(
    id = 513352,
    title = "Can't Stop the Rock",
    description = "Obtain a Big Rock. It's the perfect decoration!",
    points = 3,
    type = "",
    map_param = route_24_cave,
    bitflag_param = bit3(0xdadc)
)

achievement_bitflag(
    id = 513353,
    title = "Thunderstruck",
    description = "Obtain the Luster Ball",
    points = 3,
    type = "",
    map_param = forest_of_rage,
    bitflag_param = bit5(0xdb30)
)

achievement_bitflag(
    id = 513354,
    title = "Acetrainer Tech",
    description = "Clone a Pokemon using the Mirror Ball",
    points = 5,
    type = "",
    map_param = ace_trainer_hq_1f,
    bitflag_param = bit1(0xd704)
)

achievement_bitflag(
    id = 513355,
    title = "Swinub's Secret",
    description = "Follow the Swinub in Blackthorn City and unlock the 57th pack design",
    points = 1,
    type = "",
    map_param = mt_rose,
    bitflag_param = bit7(0xdae2)
)

achievement_bitflag(
    id = 513356,
    title = "Pack It Up",
    description = "Find a hidden Poke Doll and unlock the 59th pack design",
    points = 3,
    type = "",
    map_param = route_40,
    bitflag_param = bit0(0xdaa9)
)

achievement_bitflag(
    id = 513357,
    title = "The Song Remains the Same",
    description = "Obtain the Poke Flute",
    points = 3,
    type = "",
    map_param = seafoam_islands_b3f,
    bitflag_param = bit3(0xdab0)
)

// Can't retry after losing
achievement(
    id = 513358,
    title = "Yo! Champ in the Making!",
    description = "Defeat The Champ",
    points = 5,
    type = "MISSABLE",
    trigger =
        map == victory_road &&
        battle_type == wild &&
        opponent_pkmn_wild == machamp &&
        byte(opponent_pkmn_name) == char_T &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement(
    id = 513359,
    title = "Rock Climb",
    description = "Find a hidden ledge near Mt. Moon",
    points = 1,
    trigger =
        map == route_3 &&
        (
            (
                prev(map_position) == 0x2b04 &&
                map_position == 0x2a04
            ) ||
            (
                prev(map_position) == 0x2604 &&
                map_position == 0x2704
            )
        )
)

achievement_bitflag(
    id = 513360,
    title = "Outbreak",
    description = "Investigate a mysterious capsule in Pokemon Mansion",
    points = 3,
    type = "",
    map_param = pkmn_mansion_b1f,
    bitflag_param = bit0(0xda7a)
)

achievement_bitflag(
    id = 513361,
    title = "Just Chill: Astral Plane Edition",
    description = "Meditate with Eusine",
    points = 1,
    type = "",
    map_param = route_24_cave,
    bitflag_param = bit6(0xdae6)
)

achievement_bitflag(
    id = 513362,
    title = "Dig Deep",
    description = "Learn a secret from Cat at the Rooftop Sale, then obtain the treasure",
    points = 5,
    type = "MISSABLE",
    map_param = rock_tunnel_b1f,
    bitflag_param = bit1(0xd6f7)
)

achievement_bitflag(
    id = 513363,
    title = "Swinub Quest",
    description = "Receive a generous gift of Rare Candies from Pigy",
    points = 5,
    type = "",
    map_param = forge,
    bitflag_param = bit5(0xdaab)
)

achievement_bitflag(
    id = 513364,
    title = "Voice of the Forest",
    description = "Restore the flow of time to Alph Forest",
    points = 5,
    type = "",
    map_param = alph_forest,
    bitflag_param = bit4(0xdbf3)
)

// Maybe missable after losing and skipping to the next puzzle
achievement(
    id = 513365,
    title = "The Beast Unleashed",
    description = "Defeat the Guardian",
    points = 5,
    type = "MISSABLE",
    trigger =
        map == ruins_pillar_7 &&
        battle_type == wild &&
        opponent_pkmn_wild == entei &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement_bitflag(
    id = 513366,
    title = "The Final Riddle",
    description = "Empower the Unown Tablet",
    points = 5,
    type = "",
    map_param = ruins_library,
    bitflag_param = bit0(0xd6f6)
)

achievement(
    id = 513367,
    title = "Man of Letters",
    description = "Recharge the Unown Tablet",
    points = 3,
    trigger =
        prev(map) == hint_house &&
        map == hint_house &&
        unown_tablet_charges > prev(unown_tablet_charges)
)

achievement(
    id = 513368,
    title = "Apply Yourself",
    description = "Obtain the Applicator",
    points = 5,
    trigger =
        map == arena &&
        map_position == 0x1112 &&
        player_sprite_facing == up &&
        (
            // (
            //     prev(byte(key_item)) != applicator &&
            //     prev(byte(key_item + 1)) != applicator &&
            //     prev(byte(key_item + 2)) != applicator &&
            //     prev(byte(key_item + 3)) != applicator &&
            //     prev(byte(key_item + 4)) != applicator &&
            //     prev(byte(key_item + 5)) != applicator &&
            //     prev(byte(key_item + 6)) != applicator &&
            //     prev(byte(key_item + 7)) != applicator &&
            //     prev(byte(key_item + 8)) != applicator &&
            //     prev(byte(key_item + 9)) != applicator &&
            //     prev(byte(key_item + 10)) != applicator &&
            //     prev(byte(key_item + 11)) != applicator &&
            //     prev(byte(key_item + 12)) != applicator &&
            //     prev(byte(key_item + 13)) != applicator &&
            //     prev(byte(key_item + 14)) != applicator &&
            //     prev(byte(key_item + 15)) != applicator &&
            //     prev(byte(key_item + 16)) != applicator &&
            //     prev(byte(key_item + 17)) != applicator &&
            //     prev(byte(key_item + 18)) != applicator &&
            //     prev(byte(key_item + 19)) != applicator &&
            //     __ornext(
            //         byte(key_item) == applicator ||
            //         byte(key_item + 1) == applicator ||
            //         byte(key_item + 2) == applicator ||
            //         byte(key_item + 3) == applicator ||
            //         byte(key_item + 4) == applicator ||
            //         byte(key_item + 5) == applicator ||
            //         byte(key_item + 6) == applicator ||
            //         byte(key_item + 7) == applicator ||
            //         byte(key_item + 8) == applicator ||
            //         byte(key_item + 9) == applicator ||
            //         byte(key_item + 10) == applicator ||
            //         byte(key_item + 11) == applicator ||
            //         byte(key_item + 12) == applicator ||
            //         byte(key_item + 13) == applicator ||
            //         byte(key_item + 14) == applicator ||
            //         byte(key_item + 15) == applicator ||
            //         byte(key_item + 16) == applicator ||
            //         byte(key_item + 17) == applicator ||
            //         byte(key_item + 18) == applicator ||
            //         byte(key_item + 19) == applicator
            //     )
            // ) ||
            (
                prev(arena_points) - arena_points == 9000
            )
        )
)

achievement_bitflag(
    id = 514286,
    title = "Power PC",
    description = "Obtain the Laptop",
    points = 50,
    type = "",
    map_param = arena,
    bitflag_param = bit4(0xd707)
)

achievement(
    id = 513369,
    title = "Arena Master",
    description = "Win 100 consecutive battles in the Arena",
    points = 50,
    trigger =
        map == arena &&
        prev(arena_wins) == 99 &&
        arena_wins == 100
)

achievement(
    id = 513370,
    title = "House Hunter",
    description = "In one session, acquire all 7 residences outside of the starting ones",
    points = 5,
    trigger =
        measured(
            tally(7,
                once(player_home == acetrainer_hq_home),
                once(player_home == goldenrod_underground_home),
                once(player_home == dj_lilys_home),
                once(player_home == safari_zone_home),
                once(player_home == battle_tower_home),
                once(player_home == bills_cottage_home),
                once(player_home == dragons_den_home)
            ),
            when = map != 0
        )
)

// Can't be battled again
achievement_bitflag(
    id = 513371,
    title = "The Call That Never Came",
    description = "Defeat the last Team Rocket holdout",
    points = 3,
    type = "",
    map_param = celadon_game_corner_b1f,
    bitflag_param = bit0(0xdac2)
)

// Can't be battled again
achievement_bitflag(
    id = 513372,
    title = "Meet the Propaniacs",
    description = "Defeat Char King Vogner",
    points = 3,
    type = "",
    map_param = route_3,
    bitflag_param = bit1(0xdafb)
)

// Scales with badges, but not to a very high level
achievement_bitflag(
    id = 513373,
    title = "Don't Let Me See You on My Earth Again",
    description = "Defeat Blackbelt Mickdee",
    points = 3,
    type = "",
    map_param = cherrygrove_bay,
    bitflag_param = bit1(0xdb13)
)

// Scales with badges, but not to a very high level
achievement_bitflag(
    id = 513374,
    title = "Duck Amuck",
    description = "Defeat Boarder Colgate",
    points = 3,
    type = "",
    map_param = cherrygrove_bay,
    bitflag_param = bit2(0xdb13)
)

// Scales with badges, but not to a very high level
achievement_bitflag(
    id = 513375,
    title = "I'm an Agent of Chaos",
    description = "Defeat Beautifulman Chaos",
    points = 3,
    type = "",
    map_param = goldenrod_radio_tower_5f,
    bitflag_param = bit4(0xdc4f)
)

// Scales with badges, but not to a very high level
achievement_bitflag(
    id = 513376,
    title = "Elite Training",
    description = "Defeat Honeybun in Olivine City",
    points = 3,
    type = "",
    map_param = honeybuns_house,
    bitflag_param = bit1(0xdc4f)
)

// Scales with badges, but not to a very high level
achievement(
    id = 513377,
    title = "Roaming Rowan",
    description = "Defeat Chronicler Rowan",
    points = 3,
    trigger =
        bit5(0xdc4f) > prev(bit5(0xdc4f)) &&
        (
            (
                prev(map) == route_28 &&
                map == route_28
            ) ||
            (
                prev(map) == cherrygrove_bay &&
                map == cherrygrove_bay
            ) ||
            (
                prev(map) == route_24 &&
                map == route_24
            ) ||
            (
                prev(map) == ruins_of_alph &&
                map == ruins_of_alph
            ) ||
            (
                prev(map) == route_10_n &&
                map == route_10_n
            )
        )
)

// Scales with badges, but not to a very high level
achievement_bitflag(
    id = 513378,
    title = "Console War",
    description = "Disgrace the Wii and defeat Portablizer Shank",
    points = 3,
    type = "",
    map_param = mahogany_bazaar,
    bitflag_param = bit5(0xdad6)
)

achievement_bitflag(
    id = 513379,
    title = "The Real Professor Oak Challenge",
    description = "Catch all 251 Pokemon with 0 badges, then defeat Prof. Oak. This will not work in New Game+!",
    points = 50,
    type = "MISSABLE",
    map_param = oaks_lab,
    bitflag_param = bit7(0xd70b)
)

achievement_bitflag(
    id = 513380,
    title = "Underground Crackdown",
    description = "Defeat Burglar Frank for good and clear him out of the Goldenrod Underground",
    points = 5,
    type = "",
    map_param = goldenrod_underground,
    bitflag_param = bit5(0xdb33)
)

achievement(
    id = 513381,
    title = "Elite Beats",
    description = "Unlock all music tracks from battling Fibbef",
    points = 5,
    trigger =
        __ornext(
            map == e4_fibbef_chamber ||
            map == mt_moon_b2f ||
            map == route_7 ||
            map == cinnabar_tunnel ||
            map == silver_cave_chambers
        ) &&
        prev(bit1(0xdaea)) +
        prev(bit2(0xdaea)) +
        prev(bit3(0xdaea)) +
        prev(bit4(0xdaeb)) +
        prev(bit0(0xdaec)) == 4 &&
        measured(
            bit1(0xdaea) +
            bit2(0xdaea) +
            bit3(0xdaea) +
            bit4(0xdaeb) +
            bit0(0xdaec) == 5,
            when = map != 0
        )
)

achievement_bitflag(
    id = 513382,
    title = "Oooh Yeah!",
    description = "Unlock a music track from battling Savage Randy or Super Nerd Cosmo",
    points = 5,
    type = "",
    map_param = arena,
    bitflag_param = bit0(0xda98)
)

function achievement_trainer(id, title, description, map_param, trainer_param, level_param) {
    if (trainer_param == golds_mom || trainer_param == reds_mom) {
        badge_param = always_true()
    }
    else {
        badge_param = never(badges != 0xffff)
    }
    achievement(
        id = id,
        title = title,
        description = description,
        points = 10,
        trigger =
            never(map != map_param) &&
            badge_param &&
            never(battle_type == 0) &&
            prev(battle_win) == 0 &&
            trigger_when(battle_win == 1) &&
            (
                (
                    //unless(party_size != 6) &&
                    once(
                        party_size == 6 &&
                        pkmn_1_level <= level_param &&
                        pkmn_2_level <= level_param &&
                        pkmn_3_level <= level_param &&
                        pkmn_4_level <= level_param &&
                        pkmn_5_level <= level_param &&
                        pkmn_6_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                ) ||
                (
                    //unless(party_size != 5) &&
                    once(
                        party_size == 5 &&
                        pkmn_1_level <= level_param &&
                        pkmn_2_level <= level_param &&
                        pkmn_3_level <= level_param &&
                        pkmn_4_level <= level_param &&
                        pkmn_5_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                ) ||
                (
                    //unless(party_size != 4) &&
                    once(
                        party_size == 4 &&
                        pkmn_1_level <= level_param &&
                        pkmn_2_level <= level_param &&
                        pkmn_3_level <= level_param &&
                        pkmn_4_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                ) ||
                (
                    //unless(party_size != 3) &&
                    once(
                        party_size == 3 &&
                        pkmn_1_level <= level_param &&
                        pkmn_2_level <= level_param &&
                        pkmn_3_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                ) ||
                (
                    //unless(party_size != 2) &&
                    once(
                        party_size == 2 &&
                        pkmn_1_level <= level_param &&
                        pkmn_2_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                ) ||
                (
                    //unless(party_size != 1) &&
                    once(
                        party_size == 1 &&
                        pkmn_1_level <= level_param &&
                        opponent_trainer == trainer_param &&
                        prev(battle_type) == 0 &&
                        battle_type == trainer
                    )
                )
            )
    )
}

achievement_trainer(
    id = 513383,
    title = "Wooper's Quagmire",
    description = "Defeat PokeKid Muddy with 16 badges and no Pokemon over level 70 (at the start of the battle)",
    map_param = route_33,
    trainer_param = pokekid_muddy,
    level_param = 70
)

achievement_trainer(
    id = 513384,
    title = "Execute DUCK.EXE",
    description = "Defeat Ex-Rocket Zevach with 16 badges and no Pokemon over level 72 (at the start of the battle)",
    map_param = silph_co_1f,
    trainer_param = ex_rocket_zevach,
    level_param = 72
)

achievement_trainer(
    id = 513385,
    title = "Sounds of Lavender Town",
    description = "Defeat DJ Fef with 16 badges and no Pokemon over level 74 (at the start of the battle)",
    map_param = lavender_radio_tower,
    trainer_param = dj_fef,
    level_param = 74
)

achievement_trainer(
    id = 513386,
    title = "Mystic Arts",
    description = "Defeat Diviner Rain with 16 badges and no Pokemon over level 77 (at the start of the battle)",
    map_param = ruins_of_alph,
    trainer_param = diviner_rain,
    level_param = 77
)

achievement_trainer(
    id = 513387,
    title = "New Bark Battle",
    description = "Defeat Gold's Mom with no Pokemon over level 77 (at the start of the battle)",
    map_param = golds_house_1f,
    trainer_param = golds_mom,
    level_param = 77
)

achievement_trainer(
    id = 513388,
    title = "Like Mother, Like Son",
    description = "Defeat Red's Mom with no Pokemon over level 77 (at the start of the battle)",
    map_param = reds_house_1f,
    trainer_param = reds_mom,
    level_param = 77
)

achievement_trainer(
    id = 513389,
    title = "Giddy Up!",
    description = "Defeat Cowboy Noak with 16 badges and no Pokemon over level 78 (at the start of the battle)",
    map_param = grullo_gorge,
    trainer_param = cowboy_noak,
    level_param = 78
)

achievement_trainer(
    id = 513390,
    title = "Under the Moonlight",
    description = "Defeat Acetrainer Tiko with 16 badges and no Pokemon over level 79 (at the start of the battle)",
    map_param = mt_moon_square,
    trainer_param = acetrainer_tiko,
    level_param = 79
)

achievement_trainer(
    id = 513391,
    title = "Fellow Adventurer",
    description = "Defeat Adventurer Lena with 16 badges and no Pokemon over level 79 (at the start of the battle)",
    map_param = silver_cave_w,
    trainer_param = adventurer_lena,
    level_param = 79
)

achievement_trainer(
    id = 513392,
    title = "Magnetic Force",
    description = "Defeat Engineer Kensworth with 16 badges and no Pokemon over level 80 (at the start of the battle)",
    map_param = goldenrod_station,
    trainer_param = engineer_kensworth,
    level_param = 80
)

achievement_trainer(
    id = 513393,
    title = "Let's Get Wily",
    description = "Defeat Researcher Grizz with 16 badges and no Pokemon over level 81 (at the start of the battle)",
    map_param = grizzs_lab,
    trainer_param = researcher_grizz,
    level_param = 81
)

achievement_trainer(
    id = 513394,
    title = "Cat Fight",
    description = "Defeat Acetrainer Cat with 16 badges and no Pokemon over level 83 (at the start of the battle)",
    map_param = safari_zone_forest,
    trainer_param = acetrainer_cat,
    level_param = 83
)

achievement_trainer(
    id = 513395,
    title = "Back to the Battle Sim",
    description = "Defeat Nuzlocker SS with no Pokemon over level 90 (at the start of the battle)",
    map_param = battle_sim,
    trainer_param = ss,
    level_param = 90
)

achievement(
    id = 513396,
    title = "Duplicitous Duplica",
    description = "Win a Mirror Match against Copycat",
    points = 5,
    trigger =
        map == arena &&
        __ornext(
            map_position == 0x1207 ||
            map_position == 0x1209
        ) &&
        battle_type == trainer &&
        opponent_trainer == lass &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement(
    id = 513397,
    title = "Traveling Trader",
    description = "Complete all 14 in-game trades",
    points = 5,
    trigger =
        prev(bitcount(0xd961)) - 
        prev(bit6(0xd961)) - 
        prev(bit7(0xd961)) +
        prev(bitcount(0xd960)) == 13 &&
        measured(
            bitcount(0xd961) - 
            bit6(0xd961) - 
            bit7(0xd961) +
            bitcount(0xd960) == 14,
            when = map != 0
        )
)

// Respawns after re-entering area
achievement_catch(
    id = 513398,
    title = "Cliff Racers",
    description = "Catch an Aerodactyl in Grullo Gorge",
    points = 3,
    type = "",
    map_param = grullo_gorge,
    pkmn_param = aerodactyl
)

// Respawns after re-entering area
achievement_catch(
    id = 513399,
    title = "Rogue Programs",
    description = "Catch a Porygon in Silph Co.",
    points = 3,
    type = "",
    map_param = silph_co_2f,
    pkmn_param = porygon
)

// Respawns after re-entering area
achievement_catch(
    id = 513400,
    title = "Cute Critters",
    description = "Catch a Togepi in Mt. Mortar Peaks",
    points = 1,
    type = "",
    map_param = mt_mortar_peaks,
    pkmn_param = togepi
)

// Respawns after re-entering area
achievement(
    id = 513401,
    title = "Meet Me by the Lake",
    description = "Catch a daily overworld Pokemon at Lake Tohjo",
    points = 3,
    trigger =
        map == lake_tohjo &&
        battle_type == wild &&
        __ornext(
            opponent_pkmn_wild == stantler ||
            opponent_pkmn_wild == smeargle ||
            opponent_pkmn_wild == tyrogue ||
            opponent_pkmn_wild == elekid
        ) &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve
)

// Respawns after Elite 4
achievement_catch(
    id = 513402,
    title = "The Secret of Kangaskhan",
    description = "Catch the Kangaskhan in Viridian Forest",
    points = 3,
    type = "",
    map_param = viridian_forest,
    pkmn_param = kangaskhan
)

// Respawns after Elite 4
achievement_catch(
    id = 513403,
    title = "Lone Star",
    description = "Catch the Starmie in Tohjo Falls",
    points = 3,
    type = "",
    map_param = tohjo_falls_2f,
    pkmn_param = starmie
)

// None of them ever respawn
achievement(
    id = 513404,
    title = "The Marauders",
    description = "In one session, catch the 3 revitalized Pokemon in Alph Forest",
    points = 5,
    type = "MISSABLE",
    trigger =
        measured(
            tally(3,
                once(
                    map == alph_forest &&
                    battle_type == wild &&
                    opponent_pkmn_wild == sneasel &&
                    battle_win == 0 &&
                    sfx == catch_hatch_evolve
                ),
                once(
                    map == alph_forest &&
                    battle_type == wild &&
                    opponent_pkmn_wild == scizor &&
                    battle_win == 0 &&
                    sfx == catch_hatch_evolve
                ),
                once(
                    map == alph_forest &&
                    battle_type == wild &&
                    opponent_pkmn_wild == tyranitar &&
                    battle_win == 0 &&
                    sfx == catch_hatch_evolve
                )
            )
        )
)

achievement(
    id = 513405,
    title = "The Power of Nicknames",
    description = "Obtain Skulkraken and place it in slot 1 in your party",
    points = 1,
    trigger =
        __ornext(
            byte(party_pkmn) == magikarp ||
            byte(party_pkmn) == gyarados
        ) &&
        pkmn_1_dvs == 0xaafa &&
        __ornext(
            byte(pkmn_1_name) == 0x92 ||
            byte(pkmn_1_name) == 0xb2
        ) &&
        __ornext(
            byte(pkmn_1_name + 1) == 0x8a ||
            byte(pkmn_1_name + 1) == 0xaa
        ) &&
        __ornext(
            byte(pkmn_1_name + 2) == 0x94 ||
            byte(pkmn_1_name + 2) == 0xb4
        ) &&
        __ornext(
            byte(pkmn_1_name + 3) == 0x8b ||
            byte(pkmn_1_name + 3) == 0xab
        ) &&
        __ornext(
            byte(pkmn_1_name + 4) == 0x8a ||
            byte(pkmn_1_name + 4) == 0xaa
        ) &&
        __ornext(
            byte(pkmn_1_name + 5) == 0x91 ||
            byte(pkmn_1_name + 5) == 0xb1
        ) &&
        __ornext(
            byte(pkmn_1_name + 6) == 0x80 ||
            byte(pkmn_1_name + 6) == 0xa0
        ) &&
        __ornext(
            byte(pkmn_1_name + 7) == 0x8a ||
            byte(pkmn_1_name + 7) == 0xaa
        ) &&
        __ornext(
            byte(pkmn_1_name + 8) == 0x84 ||
            byte(pkmn_1_name + 8) == 0xa4
        ) &&
        __ornext(
            byte(pkmn_1_name + 9) == 0x8d ||
            byte(pkmn_1_name + 9) == 0xad
        )
)

function achievement_catch_special(id, title, description, points, type, map_param, pkmn_param, name_index, char_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        type = type,
        trigger =
            map == map_param &&
            battle_type == wild &&
            opponent_pkmn_wild == pkmn_param &&
            byte(opponent_pkmn_name + name_index) == char_param &&
            battle_win == 0 &&
            sfx == catch_hatch_evolve
    )
}

// Respawns after Elite 4
achievement_catch_special(
    id = 513406,
    title = "Simply Bort",
    description = "Catch Bort",
    points = 3,
    type = "",
    map_param = goldenrod_radio_tower_4f,
    pkmn_param = voltorb,
    name_index = 0,
    char_param = char_B
)

// Can't be retried after defeating
achievement_catch_special(
    id = 513407,
    title = "Meow Meow I'm a Cow",
    description = "Catch Bluebell",
    points = 3,
    type = "MISSABLE",
    map_param = route_39,
    pkmn_param = miltank,
    name_index = 0,
    char_param = char_B
)

// Never respawns
achievement_catch_special(
    id = 513408,
    title = "It's Real!",
    description = "Catch Pikablu",
    points = 3,
    type = "MISSABLE",
    map_param = route_25,
    pkmn_param = pikachu,
    name_index = 4,
    char_param = char_B
)

// Never respawns
achievement_catch_special(
    id = 513409,
    title = "Epic Meme",
    description = "Catch :B:",
    points = 3,
    type = "MISSABLE",
    map_param = alph_forest,
    pkmn_param = unown,
    name_index = 0,
    char_param = char_colon
)

// Never respawns
achievement(
    id = 513410,
    title = "Happy Little Tree",
    description = "Catch Bronzory, Snout, or Snowdrop",
    points = 3,
    type = "MISSABLE",
    trigger =
        map == lake_of_rage &&
        battle_type == wild &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve &&
        (
            (
                opponent_pkmn_wild == skarmory &&
                byte(opponent_pkmn_name) == char_B
            ) ||
            (
                opponent_pkmn_wild == mankey &&
                byte(opponent_pkmn_name) == char_S
            ) ||
            (
                opponent_pkmn_wild == sunkern &&
                byte(opponent_pkmn_name + 1) == char_N
            )
        )
)

// Never respawns
achievement_catch_special(
    id = 513411,
    title = "A Feat of Strength",
    description = "Catch Crystalio",
    points = 3,
    type = "MISSABLE",
    map_param = fuchsia_city,
    pkmn_param = onix,
    name_index = 0,
    char_param = char_C
)

// Never respawns
achievement_catch_special(
    id = 513412,
    title = "Hey Little Guy",
    description = "Catch Doug",
    points = 3,
    type = "MISSABLE",
    map_param = route_24,
    pkmn_param = spinarak,
    name_index = 0,
    char_param = char_D
)

// Never respawns
achievement(
    id = 513413,
    title = "Beyond the Sea I",
    description = "Catch Koholint or Long at their first location",
    points = 3,
    type = "MISSABLE",
    trigger =
        map == route_13 &&
        battle_type == wild &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve &&
        (
            (
                opponent_pkmn_wild == dewgong &&
                byte(opponent_pkmn_name) == char_K
            ) ||
            (
                opponent_pkmn_wild == dragonite &&
                byte(opponent_pkmn_name) == char_L
            )
        )
)

// Never respawns
achievement(
    id = 513414,
    title = "Beyond the Sea II",
    description = "Catch Koholint or Long at their second location",
    points = 3,
    type = "MISSABLE",
    trigger =
        map == route_21 &&
        battle_type == wild &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve &&
        (
            (
                opponent_pkmn_wild == dewgong &&
                byte(opponent_pkmn_name) == char_K
            ) ||
            (
                opponent_pkmn_wild == dragonite &&
                byte(opponent_pkmn_name) == char_L
            )
        )
)

// Probably can't retry after defeating
achievement_catch_special(
    id = 513415,
    title = "The Ancient One",
    description = "Catch Snowcap",
    points = 3,
    type = "MISSABLE",
    map_param = ice_path_b3f,
    pkmn_param = piloswine,
    name_index = 0,
    char_param = char_S
)

// Never respawns
achievement_catch_special(
    id = 513416,
    title = "Lost Soul",
    description = "Catch Spectre",
    points = 3,
    type = "MISSABLE",
    map_param = violet_city,
    pkmn_param = haunter,
    name_index = 0,
    char_param = char_S
)

// Never respawns
achievement_catch_special(
    id = 513417,
    title = "Be Water, My Friend",
    description = "Catch Spruce Lee",
    points = 3,
    type = "MISSABLE",
    map_param = grizzs_lab,
    pkmn_param = sudowoodo,
    name_index = 1,
    char_param = char_P
)

// Never respawns
achievement_catch_special(
    id = 513418,
    title = "Weird Mysteries",
    description = "Catch Weirdgrape",
    points = 3,
    type = "MISSABLE",
    map_param = rock_tunnel_b1f,
    pkmn_param = swinub,
    name_index = 0,
    char_param = char_W
)

// Missable if normal Lugia was caught instead
achievement_catch_special(
    id = 513419,
    title = "Gale of Darkness",
    description = "Catch XD001",
    points = 3,
    type = "MISSABLE",
    map_param = lugia_chamber,
    pkmn_param = lugia,
    name_index = 0,
    char_param = char_X
)

achievement_bitflag(
    id = 513420,
    title = "Otherworldly Egg",
    description = "Obtain an Egg from the Origin Plains",
    points = 5,
    type = "",
    map_param = origin_plains,
    bitflag_param = bit1(0xd700)
)

achievement(
    id = 514287,
    title = "When Pigs Flee",
    description = "Catch a roaming Pigy in New Game+",
    points = 10,
    type = "MISSABLE",
    trigger =
        //new_game_plus == 1 &&
        map != forge &&
        battle_type == wild &&
        opponent_pkmn_wild == swinub &&
        byte(opponent_pkmn_name) == char_P &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve
)

function achievement_nuzlocke(id, title, description, badge_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = 5,
        trigger =
            nuzlocke_mode == 1 &&
            prev(badges_johto) +
            prev(badges_kanto) == badge_param - 1 &&
            badges_johto +
            badges_kanto == badge_param &&
            prev(sfx) == get_badge
    )
}

achievement_nuzlocke(
    id = 513421,
    title = "Nuzlocke I",
    description = "Earn your first badge in Nuzlocke Mode",
    badge_param = 1
)

achievement_nuzlocke(
    id = 513422,
    title = "Nuzlocke II",
    description = "Earn your second badge in Nuzlocke Mode",
    badge_param = 2
)

achievement_nuzlocke(
    id = 513423,
    title = "Nuzlocke III",
    description = "Earn your third badge in Nuzlocke Mode",
    badge_param = 3
)

achievement_nuzlocke(
    id = 513424,
    title = "Nuzlocke IV",
    description = "Earn your fourth badge in Nuzlocke Mode",
    badge_param = 4
)

achievement_nuzlocke(
    id = 513425,
    title = "Nuzlocke V",
    description = "Earn your fifth badge in Nuzlocke Mode",
    badge_param = 5
)

achievement_nuzlocke(
    id = 513426,
    title = "Nuzlocke VI",
    description = "Earn your sixth badge in Nuzlocke Mode",
    badge_param = 6
)

achievement_nuzlocke(
    id = 513427,
    title = "Nuzlocke VII",
    description = "Earn your seventh badge in Nuzlocke Mode",
    badge_param = 7
)

achievement_nuzlocke(
    id = 513428,
    title = "Nuzlocke VIII",
    description = "Earn your eighth badge in Nuzlocke Mode",
    badge_param = 8
)

achievement_nuzlocke(
    id = 513429,
    title = "Nuzlocke IX",
    description = "Earn your ninth badge in Nuzlocke Mode",
    badge_param = 9
)

achievement_nuzlocke(
    id = 513430,
    title = "Nuzlocke X",
    description = "Earn your tenth badge in Nuzlocke Mode",
    badge_param = 10
)

achievement_nuzlocke(
    id = 513431,
    title = "Nuzlocke XI",
    description = "Earn your eleventh badge in Nuzlocke Mode",
    badge_param = 11
)

achievement_nuzlocke(
    id = 513432,
    title = "Nuzlocke XII",
    description = "Earn your twelfth badge in Nuzlocke Mode",
    badge_param = 12
)

achievement_nuzlocke(
    id = 513433,
    title = "Nuzlocke XIII",
    description = "Earn your thirteenth badge in Nuzlocke Mode",
    badge_param = 13
)

achievement_nuzlocke(
    id = 513434,
    title = "Nuzlocke XIV",
    description = "Earn your fourteenth badge in Nuzlocke Mode",
    badge_param = 14
)

achievement_nuzlocke(
    id = 513435,
    title = "Nuzlocke XV",
    description = "Earn your fifteenth badge in Nuzlocke Mode",
    badge_param = 15
)

achievement_nuzlocke(
    id = 513436,
    title = "Nuzlocke XVI",
    description = "Earn your sixteenth badge in Nuzlocke Mode",
    badge_param = 16
)

achievement(
    id = 513437,
    title = "Nuzlocke Silver",
    description = "Defeat ??? in Mt. Silver in Nuzlocke Mode",
    points = 10,
    trigger =
        nuzlocke_mode == 1 &&
        map == silver_cave_peak &&
        battle_type == trainer &&
        __ornext(
            opponent_trainer == red ||
            opponent_trainer == green ||
            opponent_trainer == gold ||
            opponent_trainer == crystal
        ) &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement(
    id = 513438,
    title = "Nuzlocke Gold",
    description = "Enter the Hall of Fame in Nuzlocke Mode",
    points = 10,
    trigger =
        nuzlocke_mode == 1 &&
        prev(map) == route_23 &&
        map == route_23 &&
        prev(hof_wins) == 0 &&
        hof_wins == 1
)

function achievement_trophy(id, title, description, address_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = 10,
        type = "MISSABLE",
        trigger =
            nuzlocke_mode == 1 &&
            map == route_23 &&
            prev(byte(address_param)) == 1 &&
            byte(address_param) == 2
    )
}

achievement_trophy(
    id = 513439,
    title = "The Kept Starter Nuzlocke",
    description = "Earn the Kept Starter Trophy in Nuzlocke Mode",
    address_param = 0x01209e
)

achievement_trophy(
    id = 513440,
    title = "The No Mistakes Nuzlocke",
    description = "Earn the No Mistakes Trophy in Nuzlocke Mode",
    address_param = 0x01209f
)

achievement_trophy(
    id = 513441,
    title = "The Hardest Options Nuzlocke",
    description = "Earn the Hardest Options Trophy in Nuzlocke Mode",
    address_param = 0x0120a0
)

achievement_trophy(
    id = 513442,
    title = "The Underleveled Nuzlocke",
    description = "Earn the Underleveled Trophy in Nuzlocke Mode",
    address_param = 0x0120a1
)

achievement_trophy(
    id = 513443,
    title = "The No Legendaries Nuzlocke",
    description = "Earn the No Legendaries Trophy in Nuzlocke Mode",
    address_param = 0x0120a2
)

achievement_trophy(
    id = 513444,
    title = "The Little Cup Only Nuzlocke",
    description = "Earn the Little Cup Only Trophy in Nuzlocke Mode",
    address_param = 0x0120a3
)

achievement(
    id = 513445,
    title = "Nuzlocke Shock",
    description = "Defeat SS for the final time in Nuzlocke Mode",
    points = 25,
    trigger =
        nuzlocke_mode == 1 &&
        prev(map) == forge &&
        map == forge &&
        bit7(0xda94) > prev(bit7(0xda94))
)

achievement(
    title = "The Pokemon Trail",
    description = "Learn about Pokemon footprints from Tiko (not in Nuzlocke Mode)",
    points = 1,
    trigger =
        bit2(0xdac4) > prev(bit2(0xdac4)) &&
        (
            (
                prev(map) == union_cave_1f &&
                map == union_cave_1f
            ) ||
            (
                prev(map) == mt_moon_1f_w &&
                map == mt_moon_1f_w
            )
        )
)

achievement(
    title = "Dragon's Fall",
    description = "Find a hidden entrance into the Dragon's Den",
    points = 1,
    trigger =
        prev(map) == mt_rose &&
        map == dragons_den
)

// ----------------
// Old Achievements
// ----------------

achievement(
    title = "Welcome to the World of Pokemon", points = 1,
    description = "Sit through ShockSlayer's optional intro speech. (It's a lot of text)",
    id = 83687, badge = "91067", published = "2019-09-18 2:36:53 PM", modified = "2020-01-10 4:52:27 PM",
    trigger = once(prev(byte(0x00C101)) == 147) && once(prev(byte(0x00C101)) == 93) && once(prev(byte(0x00C101)) == 0) &&
              never(byte(0x00C101) == 147) && never(byte(0x00C101) == 167) &&
              ((byte(0x00C101) == 27 && byte(0x00C2D8) == 47) ||
               (byte(0x00C101) == 55 && byte(0x00C2D8) == 1))
)

function achievement_badge(id, title, description, points, badge_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        type = "PROGRESSION",
        trigger =
            prev(badges_johto) +
            prev(badges_kanto) == badge_param - 1 &&
            badges_johto +
            badges_kanto == badge_param &&
            prev(sfx) == get_badge
    )
}

achievement_badge(
    id = 83633,
    title = "First of Many",
    description = "Obtain your first gym badge",
    points = 5,
    badge_param = 1
)

achievement_badge(
    id = 83634,
    title = "Another One",
    description = "Obtain your second gym badge",
    points = 5,
    badge_param = 2
)

achievement_badge(
    id = 83635,
    title = "Three's Company",
    description = "Obtain your third gym badge",
    points = 5,
    badge_param = 3
)

achievement_badge(
    id = 83636,
    title = "The Fourth Awakens",
    description = "Obtain your fourth gym badge",
    points = 5,
    badge_param = 4
)

achievement_badge(
    id = 83637,
    title = "Mambo Number Five",
    description = "Obtain your fifth gym badge",
    points = 5,
    badge_param = 5
)

achievement_badge(
    id = 83638,
    title = "Number of the Beast",
    description = "Obtain your sixth gym badge",
    points = 5,
    badge_param = 6
)

achievement_badge(
    id = 83639,
    title = "Lucky Number",
    description = "Obtain your seventh gym badge",
    points = 5,
    badge_param = 7
)

achievement_badge(
    id = 83640,
    title = "Ready for the League! ...Right?",
    description = "Obtain your eighth gym badge",
    points = 5,
    badge_param = 8
)

achievement_badge(
    id = 83641,
    title = "Running In The Nines",
    description = "Obtain your ninth gym badge",
    points = 10,
    badge_param = 9
)

achievement_badge(
    id = 83642,
    title = "Double Digits",
    description = "Obtain your tenth gym badge",
    points = 10,
    badge_param = 10
)

achievement_badge(
    id = 83643,
    title = "Seven Eleven",
    description = "Obtain your eleventh gym badge",
    points = 10,
    badge_param = 11
)

achievement_badge(
    id = 83644,
    title = "I'm Running Out Of Ideas",
    description = "Obtain your twelfth gym badge",
    points = 10,
    badge_param = 12
)

achievement_badge(
    id = 83645,
    title = "Unlucky Number",
    description = "Obtain your thirteenth gym badge",
    points = 10,
    badge_param = 13
)

achievement_badge(
    id = 83647,
    title = "Are We There Yet?",
    description = "Obtain your fourteenth gym badge",
    points = 10,
    badge_param = 14
)

achievement_badge(
    id = 83648,
    title = "Nearly There",
    description = "Obtain your fifteenth gym badge",
    points = 10,
    badge_param = 15
)

achievement_badge(
    id = 83649,
    title = "Completionist",
    description = "Obtain your sixteenth and final gym badge",
    points = 10,
    badge_param = 16
)

function achievement_rematch(id, title, description, location_param, trainer_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = 10,
        trigger =
            badges == 0xffff &&
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == location_param &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == trainer_param &&
            prev(battle_win) == 0 &&
            battle_win == 1
    )
}

achievement_rematch(
    id = 83650,
    title = "Chicken Fried",
    description = "Rematch Falkner on Set 16",
    location_param = 1,
    trainer_param = falkner
)

achievement_rematch(
    id = 83651,
    title = "Bugs Squashed",
    description = "Rematch Bugsy on Set 16",
    location_param = 2,
    trainer_param = bugsy
)

achievement_rematch(
    id = 83652,
    title = "Crybaby Cried",
    description = "Rematch Whitney on Set 16",
    location_param = 3,
    trainer_param = whitney
)

achievement_rematch(
    id = 83653,
    title = "Ghosts Busted",
    description = "Rematch Morty on Set 16",
    location_param = 4,
    trainer_param = morty
)

achievement_rematch(
    id = 83654,
    title = "Punches Dodged",
    description = "Rematch Chuck on Set 16",
    location_param = 6,
    trainer_param = chuck
)

achievement_rematch(
    id = 83655,
    title = "Iron Smelted",
    description = "Rematch Jasmine on Set 16",
    location_param = 5,
    trainer_param = jasmine
)

achievement_rematch(
    id = 83656,
    title = "Ice Broken",
    description = "Rematch Pryce on Set 16",
    location_param = 7,
    trainer_param = pryce
)

achievement_rematch(
    id = 83657,
    title = "Dragons Slain",
    description = "Rematch Clair on Set 16",
    location_param = 8,
    trainer_param = clair
)

achievement_rematch(
    id = 83658,
    title = "Rocks Smashed",
    description = "Rematch Brock on Set 16",
    location_param = 9,
    trainer_param = brock
)

achievement_rematch(
    id = 83659,
    title = "Water Boiled",
    description = "Rematch Misty on Set 16",
    location_param = 0x10,
    trainer_param = misty
)

achievement_rematch(
    id = 83660,
    title = "Earth Quaked",
    description = "Rematch Lt. Surge on Set 16",
    location_param = 0x11,
    trainer_param = surge
)

achievement_rematch(
    id = 83661,
    title = "Forest Fired",
    description = "Rematch Erika on Set 16",
    location_param = 0x12,
    trainer_param = erika
)

achievement_rematch(
    id = 83662,
    title = "Mind Blown",
    description = "Rematch Sabrina on Set 16",
    location_param = 0x13,
    trainer_param = sabrina
)

achievement_rematch(
    id = 83663,
    title = "Toxic Stalled",
    description = "Rematch Janine on Set 16",
    location_param = 0x14,
    trainer_param = janine
)

achievement_rematch(
    id = 83664,
    title = "Fire Extinguished",
    description = "Rematch Blaine on Set 16",
    location_param = 0x15,
    trainer_param = blaine
)

achievement_rematch(
    id = 83665,
    title = "Blue... Blew",
    description = "Rematch Blue on Set 16",
    location_param = 0x16,
    trainer_param = blue
)

achievement(
    id = 83964,
    title = "League Simulator",
    description = "Defeat the Elite Four and Lance in the Battle Sim without leaving the building, healing at the Pokemon Center, or depositing or withdrawing Pokemon in the PC",
    points = 5,
    trigger =
        once(
            battle_type == trainer &&
            opponent_trainer == e4_will &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            battle_type == trainer &&
            opponent_trainer == e4_koga &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            battle_type == trainer &&
            opponent_trainer == e4_bruno &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            battle_type == trainer &&
            opponent_trainer == e4_karen &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            battle_type == trainer &&
            opponent_trainer == champion_lance &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        never(pkmn_center_heal == 1) &&
        never(party_size != prev(party_size)) &&
        never(sfx == 0x9a) &&
        never(location_index != 0x5a)
)

achievement(
    id = 83965,
    title = "We Are the Champions",
    description = "Enter the Hall of Fame for the first time",
    points = 10,
    type = "WIN_CONDITION",
    trigger =
        prev(hof_wins) == 0 &&
        hof_wins == 1 &&
        (
            (
                prev(map) == route_23 &&
                map == route_23
            ) ||
            (
                prev(map) == hall_of_fame &&
                map == hall_of_fame
            )
        )
)

achievement(
    id = 83966,
    title = "Now Do That 198 More Times",
    description = "Enter the Hall of Fame again",
    points = 25,
    trigger =
        hof_wins > 1 &&
        hof_wins > prev(hof_wins) &&
        (
            (
                prev(map) == route_23 &&
                map == route_23
            ) ||
            (
                prev(map) == hall_of_fame &&
                map == hall_of_fame
            )
        )
)

achievement(
    id = 84028,
    title = "Journey Has Ended",
    description = "Defeat ??? in Mt. Silver",
    points = 10,
    trigger =
        map == silver_cave_peak &&
        battle_type == trainer &&
        __ornext(
            opponent_trainer == red ||
            opponent_trainer == green ||
            opponent_trainer == gold ||
            opponent_trainer == crystal
        ) &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement(
    id = 94406,
    title = "Legendary Sweep",
    description = "In one session, defeat all gym leaders on Set 16 and the Elite Four at their strongest with one Pokemon and without fainting",
    points = 50,
    trigger =
        badges == 0xffff &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 1 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == falkner &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 2 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == bugsy &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 3 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == whitney &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 4 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == morty &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 5 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == jasmine &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 6 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == chuck &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 7 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == pryce &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 8 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == clair &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 9 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == brock &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x10 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == misty &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x11 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == surge &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x12 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == erika &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x13 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == sabrina &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x14 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == janine &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x15 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == blaine &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        once(
            gym_rechallenge_active == 1 &&
            gym_rechallenge_location == 0x16 &&
            gym_rechallenge_level == 16 &&
            battle_type == trainer &&
            opponent_trainer == blue &&
            prev(battle_win) == 0 &&
            battle_win == 1
        ) &&
        never(party_size > 1) &&
        never(pkmn_1_dvs != prev(pkmn_1_dvs)) &&
        never(pkmn_1_hp == 0) &&
        (
            (
                once(
                    nuzlocke_mode == 0 &&
                    prev(map) == route_23 &&
                    map == route_23 &&
                    hof_wins > 1 &&
                    hof_wins > prev(hof_wins)
                )
            ) ||
            (
                once(
                    nuzlocke_mode == 0 &&
                    prev(map) == hall_of_fame &&
                    map == hall_of_fame &&
                    hof_wins > 1 &&
                    hof_wins > prev(hof_wins)
                )
            ) ||
            (
                once(
                    nuzlocke_mode == 1 &&
                    prev(map) == route_23 &&
                    map == route_23 &&
                    hof_wins > prev(hof_wins)
                )
            )
        )
)

achievement_bitflag(
    id = 83684,
    title = "Bad Time",
    description = "Defeat ??? in Slowpoke Well",
    points = 5,
    type = "",
    map_param = slowpoke_well_b1f,
    bitflag_param = bit5(0xdb5f)
)

achievement(
    id = 83685,
    title = "Top Percent",
    description = "Defeat Youngster Joey after getting all 16 badges",
    points = 5,
    trigger =
        badges == 0xffff &&
        map == route_30 &&
        battle_type == trainer &&
        opponent_pkmn == rattata &&
        opponent_pkmn_level == 100 &&
        prev(battle_win) == 0 &&
        battle_win == 1
)

achievement_bitflag(
    id = 84027,
    title = "Hidden Grotto",
    description = "Find and defeat Yellow in her secret fishing spot",
    points = 5,
    type = "",
    map_param = forest_path,
    bitflag_param = bit4(0xdb32)
)

achievement_catch(
    id = 94150,
    title = "Firebird",
    description = "Catch Moltres",
    points = 3,
    type = "",
    map_param = moltres_chamber,
    pkmn_param = moltres
)

achievement_catch(
    id = 94151,
    title = "Eusine's Dream",
    description = "Catch Suicune",
    points = 3,
    type = "",
    map_param = tin_tower_1f,
    pkmn_param = suicune
)

achievement_catch(
    id = 94152,
    title = "The Clone",
    description = "Catch Mewtwo",
    points = 5,
    type = "",
    map_param = cerulean_cave_b1f,
    pkmn_param = mewtwo
)

achievement_catch(
    id = 94153,
    title = "Behold the Sacred Fire",
    description = "Catch Ho-oh",
    points = 5,
    type = "",
    map_param = tin_tower_rooftop,
    pkmn_param = ho_oh
)

achievement(
    id = 94154,
    title = "The Mythical One",
    description = "Catch Mew",
    points = 5,
    trigger =
        battle_type == wild &&
        opponent_pkmn_wild == mew &&
        battle_win == 0 &&
        sfx == catch_hatch_evolve
)

achievement(
    id = 83802,
    title = "Gotta Catch 'em All - Crystal Clear",
    description = "Catch all 251 Pokemon. Yes, all of them.",
    points = 50,
    trigger = (prev(word(0x00DA0E)) + prev(word(0x00DA10)) + prev(word(0x00DA12)) + prev(word(0x00DA14)) +
              prev(word(0x00DA16)) + prev(word(0x00DA18)) + prev(word(0x00DA1A)) + prev(word(0x00DA1C)) +
              prev(word(0x00DA1E)) + prev(word(0x00DA20)) + prev(word(0x00DA22)) + prev(word(0x00DA24)) +
              prev(word(0x00DA26)) + prev(word(0x00DA28)) + prev(word(0x00DA2A)) + prev(word(0x00DA2C))) < 985072 &&
              (word(0x00DA0E) + word(0x00DA10) + word(0x00DA12) + word(0x00DA14) + word(0x00DA16) + word(0x00DA18) +
              word(0x00DA1A) + word(0x00DA1C) + word(0x00DA1E) + word(0x00DA20) + word(0x00DA22) + word(0x00DA24) +
              word(0x00DA26) + word(0x00DA28) + word(0x00DA2A) + word(0x00DA2C)) == 985072 &&
              never(prev(byte(0x00DA2D)) == 0)
)

achievement(
    id = 84197,
    title = "Gotta Spell 'em All",
    description = "Catch every variant of Unown",
    points = 10,
    trigger = (byte(0x00DED9) + byte(0x00DEDA) + byte(0x00DEDB) + byte(0x00DEDC) + byte(0x00DEDD) + byte(0x00DEDE) +
              byte(0x00DEDF) + byte(0x00DEE0) + byte(0x00DEE1) + byte(0x00DEE2) + byte(0x00DEE3) + byte(0x00DEE4) +
              byte(0x00DEE5) + byte(0x00DEE6) + byte(0x00DEE7) + byte(0x00DEE8) + byte(0x00DEE9) + byte(0x00DEEA) +
              byte(0x00DEEB) + byte(0x00DEEC) + byte(0x00DEED) + byte(0x00DEEE) + byte(0x00DEEF) + byte(0x00DEF0) +
              byte(0x00DEF1) + byte(0x00DEF2)) == 351 &&
              (byte(0x00DEF2) > prev(byte(0x00DEF2)) && prev(byte(0x00DED9)) != 0)
)

achievement(
    id = 83681,
    title = "He Follows You Around!",
    description = "Why doesn't every Pokemon game have this?",
    points = 1,
    trigger = never(byte(0x00DA3A) == 0) && never(byte(0x00DA3B) == 0) && never(byte(0x00DA3A) != prev(byte(0x00DA3A))) &&
              never(byte(0x00DA3B) != prev(byte(0x00DA3B))) && repeated(10, byte(0x00DA3A) == prev(byte(0x00DA3A))) &&
              repeated(10, byte(0x00DA3B) == prev(byte(0x00DA3B))) && never(byte(0x00DA03) > 6) &&
              prev(byte(0x00DA03)) == 0 && byte(0x00DA03) > 0
)

achievement(
    id = 83682,
    title = "Technology Is Amazing",
    description = "Change your appearance (after having started the game)",
    points = 1,
    trigger = byte(0x00DA3A) == 3 && byte(0x00DA3B) == 55 && byte(0x00DCB7) == 7 && byte(0x00DCB8) == 6 &&
              byte(0x00C1C9) == 84
)

achievement(
    id = 83799,
    title = "A Whole New (Open) World",
    points = 1,
    description = "Walk through the border between New Bark Town and Route 27",
    trigger =
        always_true() &&
        (
            (
                prev(map) == route_27 &&
                map == new_bark_town &&
                __ornext(
                    map_position == 0x130b ||
                    map_position == 0x130c
                )
            ) ||
            (
                prev(map) == new_bark_town &&
                map == route_27 &&
                __ornext(
                    map_position == 0x000b ||
                    map_position == 0x000c
                )
            )
        )
)

achievement(
    id = 83800,
    title = "Are You Proud of Yourself?",
    description = "Obtain the Old Amber without asking for it",
    points = 1,
    type = "MISSABLE",
    trigger = never((word(0x00DA3A) != 526 && word(0x00DCB7) != 4870)) && bit2(0x00DA7B) == 1 && byte(0x00C1C9) == 159
)

achievement_bitflag(
    id = 83801,
    title = "Hack the Planet",
    description = "Obtain the DV Viewer upgrade",
    points = 1,
    type = "",
    map_param = dv_viewer_room,
    bitflag_param = bit6(0xda9b)
)

achievement(
    id = 84024,
    title = "Golden Karp",
    description = "Get the Red Scale at the Lake of Rage with 3 or less badges",
    points = 1,
    type = "MISSABLE",
    trigger = (bit0(0x00D857) + bit1(0x00D857) + bit2(0x00D857) + bit3(0x00D857) + bit4(0x00D857) + bit5(0x00D857) +
              bit6(0x00D857) + bit7(0x00D857) + bit0(0x00D858) + bit1(0x00D858) + bit2(0x00D858) + bit3(0x00D858) +
              bit4(0x00D858) + bit5(0x00D858) + bit6(0x00D858) + bit7(0x00D858)) <= 3 &&
              repeated(5, bit1(0x00DB5C) == 0) && prev(bit1(0x00DB5C)) == 0 && bit1(0x00DB5C) == 1 &&
              never(word(0x00DA3A) != 1545)
)

achievement_bitflag(
    id = 84025,
    title = ":pigdab:",
    description = "Find a picture of the Pokemon so rare, it's not in the dex",
    points = 1,
    type = "",
    map_param = ss_house,
    bitflag_param = bit1(0xdadf)
)

achievement_bitflag(
    id = 84026,
    title = "It's Dangerous to Go Alone...",
    description = "Have SS forge you a sword",
    points = 1,
    type = "",
    map_param = forge,
    bitflag_param = bit2(0xdae4)
)

achievement(
    id = 84036,
    title = "RetroAchievement for Free ~Points~ Money",
    description = "Teach a Pokemon Pay Day from the Gen 1 TM Tutor in Kanto",
    points = 1,
    trigger =
        repeated(5,
            map != 0 &&
            never(map == 0)
        ) &&
        map == lavender_radio_tower &&
        __ornext(
            map_position == 0x0402 ||
            map_position == 0x0301 ||
            map_position == 0x0501
        ) &&
        battle_type == 0 &&
        check_moves(0, pay_day)
)

achievement(
    id = 84037,
    title = "No Stadium Required",
    description = "Teach Surf to a Pikachu",
    points = 1,
    trigger =
        repeated(5,
            map != 0 &&
            never(map == 0)
        ) &&
        battle_type == 0 &&
        check_moves(pikachu, surf)
)

achievement(
    id = 84199,
    title = "My Radio is Haunted!",
    description = "Tune in to a very spooky signal at the Ruins of Alph",
    points = 1,
    trigger = never(byte(0x00DA3A) == 0) && byte(0x00C101) == 70 && byte(0x00D958) == 52
)

achievement(
    id = 94347,
    title = "Just Chill",
    description = "Sit on a bench",
    points = 1,
    trigger = prev(word(0x00D4E6)) == 2824 && word(0x00D4E6) == 3080 && word(0x00DA3A) == 1040
)

achievement(
    id = 80923,
    title = "An Odd Egg",
    description = "Hatch a shiny Pokemon from an Egg (not Ditto)",
    points = 5,
    trigger = prev(byte(0x00C1C9)) == 0 && byte(0x00C1C9) == 2 &&
              ((unless(byte(0x00DCD8) == 132) && prior(byte(0x00DCD8)) == 253 && prior(byte(0x00DCFA)) == 0 &&
                unless(high4(0x00DCF4) == 1) && unless(high4(0x00DCF4) == 4) && unless(high4(0x00DCF4) == 5) &&
                unless(high4(0x00DCF4) == 8) && unless(high4(0x00DCF4) == 9) && unless(high4(0x00DCF4) == 12) &&
                unless(high4(0x00DCF4) == 13) && low4(0x00DCF4) == 10 && high4(0x00DCF5) == 10 && low4(0x00DCF5) == 10) ||
               (unless(byte(0x00DCD9) == 132) && prior(byte(0x00DCD9)) == 253 && prior(byte(0x00DD2A)) == 0 &&
                unless(high4(0x00DD24) == 1) && unless(high4(0x00DD24) == 4) && unless(high4(0x00DD24) == 5) &&
                unless(high4(0x00DD24) == 8) && unless(high4(0x00DD24) == 9) && unless(high4(0x00DD24) == 12) &&
                unless(high4(0x00DD24) == 13) && low4(0x00DD24) == 10 && high4(0x00DD25) == 10 && low4(0x00DD25) == 10) ||
               (unless(byte(0x00DCDA) == 132) && prior(byte(0x00DCDA)) == 253 && prior(byte(0x00DD5A)) == 0 &&
                unless(high4(0x00DD54) == 1) && unless(high4(0x00DD54) == 4) && unless(high4(0x00DD54) == 5) &&
                unless(high4(0x00DD54) == 8) && unless(high4(0x00DD54) == 9) && unless(high4(0x00DD54) == 12) &&
                unless(high4(0x00DD54) == 13) && low4(0x00DD54) == 10 && high4(0x00DD55) == 10 && low4(0x00DD55) == 10) ||
               (unless(byte(0x00DCDB) == 132) && prior(byte(0x00DCDB)) == 253 && prior(byte(0x00DD8A)) == 0 &&
                unless(high4(0x00DD84) == 1) && unless(high4(0x00DD84) == 4) && unless(high4(0x00DD84) == 5) &&
                unless(high4(0x00DD84) == 8) && unless(high4(0x00DD84) == 9) && unless(high4(0x00DD84) == 12) &&
                unless(high4(0x00DD84) == 13) && low4(0x00DD84) == 10 && high4(0x00DD85) == 10 && low4(0x00DD85) == 10) ||
               (unless(byte(0x00DCDC) == 132) && prior(byte(0x00DCDC)) == 253 && prior(byte(0x00DDBA)) == 0 &&
                unless(high4(0x00DDB4) == 1) && unless(high4(0x00DDB4) == 4) && unless(high4(0x00DDB4) == 5) &&
                unless(high4(0x00DDB4) == 8) && unless(high4(0x00DDB4) == 9) && unless(high4(0x00DDB4) == 12) &&
                unless(high4(0x00DDB4) == 13) && low4(0x00DDB4) == 10 && high4(0x00DDB5) == 10 && low4(0x00DDB5) == 10) ||
               (unless(byte(0x00DCDD) == 132) && prior(byte(0x00DCDD)) == 253 && prior(byte(0x00DDEA)) == 0 &&
                unless(high4(0x00DDE4) == 1) && unless(high4(0x00DDE4) == 4) && unless(high4(0x00DDE4) == 5) &&
                unless(high4(0x00DDE4) == 8) && unless(high4(0x00DDE4) == 9) && unless(high4(0x00DDE4) == 12) &&
                unless(high4(0x00DDE4) == 13) && low4(0x00DDE4) == 10 && high4(0x00DDE5) == 10 && low4(0x00DDE5) == 10))
)

achievement(
    id = 83688,
    title = "You Know What to Do",
    description = "Find something under the truck (without having seen data before)",
    points = 5,
    type = "MISSABLE",
    trigger = never(byte(0x00C2D8) != 61) && byte(0x00DBF5) == 1 && bit6(0x00DECB) == 1 &&
              prev(bit6(0x00DECB)) < bit6(0x00DECB) && prev(bit0(0x00DECB)) == bit0(0x00DECB) &&
              prev(bit1(0x00DECB)) == bit1(0x00DECB) && prev(bit2(0x00DECB)) == bit2(0x00DECB) &&
              prev(bit3(0x00DECB)) == bit3(0x00DECB) && prev(bit4(0x00DECB)) == bit4(0x00DECB) &&
              prev(bit5(0x00DECB)) == bit5(0x00DECB) && prev(bit7(0x00DECB)) == bit7(0x00DECB)
)

achievement(
    id = 84198,
    title = "Fun with Letters",
    description = "Teach an Unown a second move",
    points = 5,
    trigger = never(word(0x00DA3A) != 5635) &&
              ((byte(0x00DCDF) == 201 && byte(0x00DCE1) == 237 && prev(byte(0x00DCE2)) == 0 && byte(0x00DCE2) > 0) ||
               (byte(0x00DD0F) == 201 && byte(0x00DD11) == 237 && prev(byte(0x00DD12)) == 0 && byte(0x00DD12) > 0) ||
               (byte(0x00DD3F) == 201 && byte(0x00DD41) == 237 && prev(byte(0x00DD42)) == 0 && byte(0x00DD42) > 0) ||
               (byte(0x00DD6F) == 201 && byte(0x00DD71) == 237 && prev(byte(0x00DD72)) == 0 && byte(0x00DD72) > 0) ||
               (byte(0x00DD9F) == 201 && byte(0x00DDA1) == 237 && prev(byte(0x00DDA2)) == 0 && byte(0x00DDA2) > 0) ||
               (byte(0x00DDCF) == 201 && byte(0x00DDD1) == 237 && prev(byte(0x00DDD2)) == 0 && byte(0x00DDD2) > 0))
)

achievement(
    id = 94136,
    title = "What's Your Password?",
    description = "Max out your Blue Card and get Buena's number",
    points = 5,
    trigger = never(word(0x00DA3A) != 4611) && measured(byte(0x00DC4B) == 30) && byte(0x00C1C9) == 147
)

achievement(
    id = 94148,
    title = "The Oddest Egg",
    description = "Hatch a shiny Ditto from an Egg",
    points = 5,
    trigger = prev(byte(0x00C1C9)) == 0 && byte(0x00C1C9) == 2 &&
              ((byte(0x00DCD8) == 132 && prior(byte(0x00DCD8)) == 253 && prior(byte(0x00DCFA)) == 0 &&
                unless(high4(0x00DCF4) == 1) && unless(high4(0x00DCF4) == 4) && unless(high4(0x00DCF4) == 5) &&
                unless(high4(0x00DCF4) == 8) && unless(high4(0x00DCF4) == 9) && unless(high4(0x00DCF4) == 12) &&
                unless(high4(0x00DCF4) == 13) && low4(0x00DCF4) == 10 && high4(0x00DCF5) == 10 && low4(0x00DCF5) == 10) ||
               (byte(0x00DCD9) == 132 && prior(byte(0x00DCD9)) == 253 && prior(byte(0x00DD2A)) == 0 &&
                unless(high4(0x00DD24) == 1) && unless(high4(0x00DD24) == 4) && unless(high4(0x00DD24) == 5) &&
                unless(high4(0x00DD24) == 8) && unless(high4(0x00DD24) == 9) && unless(high4(0x00DD24) == 12) &&
                unless(high4(0x00DD24) == 13) && low4(0x00DD24) == 10 && high4(0x00DD25) == 10 && low4(0x00DD25) == 10) ||
               (byte(0x00DCDA) == 132 && prior(byte(0x00DCDA)) == 253 && prior(byte(0x00DD5A)) == 0 &&
                unless(high4(0x00DD54) == 1) && unless(high4(0x00DD54) == 4) && unless(high4(0x00DD54) == 5) &&
                unless(high4(0x00DD54) == 8) && unless(high4(0x00DD54) == 9) && unless(high4(0x00DD54) == 12) &&
                unless(high4(0x00DD54) == 13) && low4(0x00DD54) == 10 && high4(0x00DD55) == 10 && low4(0x00DD55) == 10) ||
               (byte(0x00DCDB) == 132 && prior(byte(0x00DCDB)) == 253 && prior(byte(0x00DD8A)) == 0 &&
                unless(high4(0x00DD84) == 1) && unless(high4(0x00DD84) == 4) && unless(high4(0x00DD84) == 5) &&
                unless(high4(0x00DD84) == 8) && unless(high4(0x00DD84) == 9) && unless(high4(0x00DD84) == 12) &&
                unless(high4(0x00DD84) == 13) && low4(0x00DD84) == 10 && high4(0x00DD85) == 10 && low4(0x00DD85) == 10) ||
               (byte(0x00DCDC) == 132 && prior(byte(0x00DCDC)) == 253 && prior(byte(0x00DDBA)) == 0 &&
                unless(high4(0x00DDB4) == 1) && unless(high4(0x00DDB4) == 4) && unless(high4(0x00DDB4) == 5) &&
                unless(high4(0x00DDB4) == 8) && unless(high4(0x00DDB4) == 9) && unless(high4(0x00DDB4) == 12) &&
                unless(high4(0x00DDB4) == 13) && low4(0x00DDB4) == 10 && high4(0x00DDB5) == 10 && low4(0x00DDB5) == 10) ||
               (byte(0x00DCDD) == 132 && prior(byte(0x00DCDD)) == 253 && prior(byte(0x00DDEA)) == 0 &&
                unless(high4(0x00DDE4) == 1) && unless(high4(0x00DDE4) == 4) && unless(high4(0x00DDE4) == 5) &&
                unless(high4(0x00DDE4) == 8) && unless(high4(0x00DDE4) == 9) && unless(high4(0x00DDE4) == 12) &&
                unless(high4(0x00DDE4) == 13) && low4(0x00DDE4) == 10 && high4(0x00DDE5) == 10 && low4(0x00DDE5) == 10))
)

achievement_bitflag(
    id = 84038,
    title = "Family Friendly Alternative",
    description = "Reach Round 7 in Voltorb Flip in the Goldenrod Game Corner, then defeat Musician Frogg",
    points = 10,
    type = "",
    map_param = goldenrod_game_corner,
    bitflag_param = bit0(0xdae5)
)

achievement(
    id = 84039,
    title = "1 Credit Clear",
    description = "Win in the Celadon Game Corner slots three times by betting one coin (don't leave the machine)",
    points = 10,
    trigger = unless(byte(0x00C70A) != 1) &&
              measured(repeated(3,
                  word(0x00C711) != prev(word(0x00C711)) && byte(0x00C711) >= prev(byte(0x00C711)) &&
                  byte(0x00C712) > prev(byte(0x00C712)))
              ) &&
              ((never(word(0x00DA3A) != 4629) && never(byte(0x00C1C9) == 157) && never(byte(0x00C70A) > 3) &&
                never(byte(0x00C711) > 3)) ||
               (always_true()))
)

achievement_bitflag(
    id = 94149,
    title = "ShockSlayer's Final Challenge",
    description = "You've beaten the game entirely",
    points = 25,
    type = "",
    map_param = forge,
    bitflag_param = bit7(0xda94)
)

achievement_catch_special(
    id = 94155,
    title = "The Mascot",
    description = "Catch Pigy in the Forge",
    points = 5,
    type = "MISSABLE",
    map_param = forge,
    pkmn_param = swinub,
    name_index = 0,
    char_param = char_P
)

achievement(
    title = "HOF Master", points = 50,
    description = "Enter the Hall of Fame for the 200th time.",
    id = 84009, badge = "103944", published = "2019-09-22 10:58:42 AM", modified = "2020-05-01 5:37:37 PM",
    trigger = never(word(0x00DA3A) != 2064) && repeated(5, byte(0x00D95E) == 199) && prev(byte(0x00D95E)) == 199 &&
              measured(byte(0x00D95E) == 200)
)

rich_presence_display("🎖{0}/16 📱{1}/251 ⏰{2}",
    rich_presence_value("Value", bit0(0x00D857) + bit1(0x00D857) + bit2(0x00D857) + bit3(0x00D857) + bit4(0x00D857) +
                            bit5(0x00D857) + bit6(0x00D857) + bit7(0x00D857) + bit0(0x00D858) + bit1(0x00D858) +
                            bit2(0x00D858) + bit3(0x00D858) + bit4(0x00D858) + bit5(0x00D858) + bit6(0x00D858) +
                            bit7(0x00D858)
                        ),
    rich_presence_value("Value", bit0(0x00DA0E) + bit1(0x00DA0E) + bit2(0x00DA0E) + bit3(0x00DA0E) + bit4(0x00DA0E) +
                            bit5(0x00DA0E) + bit6(0x00DA0E) + bit7(0x00DA0E) + bit0(0x00DA0F) + bit1(0x00DA0F) +
                            bit2(0x00DA0F) + bit3(0x00DA0F) + bit4(0x00DA0F) + bit5(0x00DA0F) + bit6(0x00DA0F) +
                            bit7(0x00DA0F) + bit0(0x00DA10) + bit1(0x00DA10) + bit2(0x00DA10) + bit3(0x00DA10) +
                            bit4(0x00DA10) + bit5(0x00DA10) + bit6(0x00DA10) + bit7(0x00DA10) + bit0(0x00DA11) +
                            bit1(0x00DA11) + bit2(0x00DA11) + bit3(0x00DA11) + bit4(0x00DA11) + bit5(0x00DA11) +
                            bit6(0x00DA11) + bit7(0x00DA11) + bit0(0x00DA12) + bit1(0x00DA12) + bit2(0x00DA12) +
                            bit3(0x00DA12) + bit4(0x00DA12) + bit5(0x00DA12) + bit6(0x00DA12) + bit7(0x00DA12) +
                            bit0(0x00DA13) + bit1(0x00DA13) + bit2(0x00DA13) + bit3(0x00DA13) + bit4(0x00DA13) +
                            bit5(0x00DA13) + bit6(0x00DA13) + bit7(0x00DA13) + bit0(0x00DA14) + bit1(0x00DA14) +
                            bit2(0x00DA14) + bit3(0x00DA14) + bit4(0x00DA14) + bit5(0x00DA14) + bit6(0x00DA14) +
                            bit7(0x00DA14) + bit0(0x00DA15) + bit1(0x00DA15) + bit2(0x00DA15) + bit3(0x00DA15) +
                            bit4(0x00DA15) + bit5(0x00DA15) + bit6(0x00DA15) + bit7(0x00DA15) + bit0(0x00DA16) +
                            bit1(0x00DA16) + bit2(0x00DA16) + bit3(0x00DA16) + bit4(0x00DA16) + bit5(0x00DA16) +
                            bit6(0x00DA16) + bit7(0x00DA16) + bit0(0x00DA17) + bit1(0x00DA17) + bit2(0x00DA17) +
                            bit3(0x00DA17) + bit4(0x00DA17) + bit5(0x00DA17) + bit6(0x00DA17) + bit7(0x00DA17) +
                            bit0(0x00DA18) + bit1(0x00DA18) + bit2(0x00DA18) + bit3(0x00DA18) + bit4(0x00DA18) +
                            bit5(0x00DA18) + bit6(0x00DA18) + bit7(0x00DA18) + bit0(0x00DA19) + bit1(0x00DA19) +
                            bit2(0x00DA19) + bit3(0x00DA19) + bit4(0x00DA19) + bit5(0x00DA19) + bit6(0x00DA19) +
                            bit7(0x00DA19) + bit0(0x00DA1A) + bit1(0x00DA1A) + bit2(0x00DA1A) + bit3(0x00DA1A) +
                            bit4(0x00DA1A) + bit5(0x00DA1A) + bit6(0x00DA1A) + bit7(0x00DA1A) + bit0(0x00DA1B) +
                            bit1(0x00DA1B) + bit2(0x00DA1B) + bit3(0x00DA1B) + bit4(0x00DA1B) + bit5(0x00DA1B) +
                            bit6(0x00DA1B) + bit7(0x00DA1B) + bit0(0x00DA1C) + bit1(0x00DA1C) + bit2(0x00DA1C) +
                            bit3(0x00DA1C) + bit4(0x00DA1C) + bit5(0x00DA1C) + bit6(0x00DA1C) + bit7(0x00DA1C) +
                            bit0(0x00DA1D) + bit1(0x00DA1D) + bit2(0x00DA1D) + bit3(0x00DA1D) + bit4(0x00DA1D) +
                            bit5(0x00DA1D) + bit6(0x00DA1D) + bit7(0x00DA1D) + bit0(0x00DA1E) + bit1(0x00DA1E) +
                            bit2(0x00DA1E) + bit3(0x00DA1E) + bit4(0x00DA1E) + bit5(0x00DA1E) + bit6(0x00DA1E) +
                            bit7(0x00DA1E) + bit0(0x00DA1F) + bit1(0x00DA1F) + bit2(0x00DA1F) + bit3(0x00DA1F) +
                            bit4(0x00DA1F) + bit5(0x00DA1F) + bit6(0x00DA1F) + bit7(0x00DA1F) + bit0(0x00DA20) +
                            bit1(0x00DA20) + bit2(0x00DA20) + bit3(0x00DA20) + bit4(0x00DA20) + bit5(0x00DA20) +
                            bit6(0x00DA20) + bit7(0x00DA20) + bit0(0x00DA21) + bit1(0x00DA21) + bit2(0x00DA21) +
                            bit3(0x00DA21) + bit4(0x00DA21) + bit5(0x00DA21) + bit6(0x00DA21) + bit7(0x00DA21) +
                            bit0(0x00DA22) + bit1(0x00DA22) + bit2(0x00DA22) + bit3(0x00DA22) + bit4(0x00DA22) +
                            bit5(0x00DA22) + bit6(0x00DA22) + bit7(0x00DA22) + bit0(0x00DA23) + bit1(0x00DA23) +
                            bit2(0x00DA23) + bit3(0x00DA23) + bit4(0x00DA23) + bit5(0x00DA23) + bit6(0x00DA23) +
                            bit7(0x00DA23) + bit0(0x00DA24) + bit1(0x00DA24) + bit2(0x00DA24) + bit3(0x00DA24) +
                            bit4(0x00DA24) + bit5(0x00DA24) + bit6(0x00DA24) + bit7(0x00DA24) + bit0(0x00DA25) +
                            bit1(0x00DA25) + bit2(0x00DA25) + bit3(0x00DA25) + bit4(0x00DA25) + bit5(0x00DA25) +
                            bit6(0x00DA25) + bit7(0x00DA25) + bit0(0x00DA26) + bit1(0x00DA26) + bit2(0x00DA26) +
                            bit3(0x00DA26) + bit4(0x00DA26) + bit5(0x00DA26) + bit6(0x00DA26) + bit7(0x00DA26) +
                            bit0(0x00DA27) + bit1(0x00DA27) + bit2(0x00DA27) + bit3(0x00DA27) + bit4(0x00DA27) +
                            bit5(0x00DA27) + bit6(0x00DA27) + bit7(0x00DA27) + bit0(0x00DA28) + bit1(0x00DA28) +
                            bit2(0x00DA28) + bit3(0x00DA28) + bit4(0x00DA28) + bit5(0x00DA28) + bit6(0x00DA28) +
                            bit7(0x00DA28) + bit0(0x00DA29) + bit1(0x00DA29) + bit2(0x00DA29) + bit3(0x00DA29) +
                            bit4(0x00DA29) + bit5(0x00DA29) + bit6(0x00DA29) + bit7(0x00DA29) + bit0(0x00DA2A) +
                            bit1(0x00DA2A) + bit2(0x00DA2A) + bit3(0x00DA2A) + bit4(0x00DA2A) + bit5(0x00DA2A) +
                            bit6(0x00DA2A) + bit7(0x00DA2A) + bit0(0x00DA2B) + bit1(0x00DA2B) + bit2(0x00DA2B) +
                            bit3(0x00DA2B) + bit4(0x00DA2B) + bit5(0x00DA2B) + bit6(0x00DA2B) + bit7(0x00DA2B) +
                            bit0(0x00DA2C) + bit1(0x00DA2C) + bit2(0x00DA2C) + bit3(0x00DA2C) + bit4(0x00DA2C) +
                            bit5(0x00DA2C) + bit6(0x00DA2C) + bit7(0x00DA2C) + bit0(0x00DA2D) + bit1(0x00DA2D) +
                            bit2(0x00DA2D) + bit3(0x00DA2D) + bit4(0x00DA2D) + bit5(0x00DA2D) + bit6(0x00DA2D) +
                            bit7(0x00DA2D)
                        ),
    rich_presence_value("Time", byte(0x00D4C4) * 15300 + byte(0x00D4C5) * 60 + byte(0x00D4C6), format="SECS")
)

// --------
// Outdated
// --------

// achievement(
//     id = 513350,
//     title = "Tidal Wave!",
//     description = "Teach Splash to a Snorlax",
//     points = 1,
//     trigger =
//         always_true() &&
//         (
//             (
//                 byte(party_pkmn) == snorlax &&
//                 prev(byte(party_pkmn_1_move)) != splash &&
//                 prev(byte(party_pkmn_1_move + 1)) != splash &&
//                 prev(byte(party_pkmn_1_move + 2)) != splash &&
//                 prev(byte(party_pkmn_1_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_1_move) == splash ||
//                     byte(party_pkmn_1_move + 1) == splash ||
//                     byte(party_pkmn_1_move + 2) == splash ||
//                     byte(party_pkmn_1_move + 3) == splash
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 1) == snorlax &&
//                 prev(byte(party_pkmn_2_move)) != splash &&
//                 prev(byte(party_pkmn_2_move + 1)) != splash &&
//                 prev(byte(party_pkmn_2_move + 2)) != splash &&
//                 prev(byte(party_pkmn_2_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_2_move) == splash ||
//                     byte(party_pkmn_2_move + 1) == splash ||
//                     byte(party_pkmn_2_move + 2) == splash ||
//                     byte(party_pkmn_2_move + 3) == splash
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 2) == snorlax &&
//                 prev(byte(party_pkmn_3_move)) != splash &&
//                 prev(byte(party_pkmn_3_move + 1)) != splash &&
//                 prev(byte(party_pkmn_3_move + 2)) != splash &&
//                 prev(byte(party_pkmn_3_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_3_move) == splash ||
//                     byte(party_pkmn_3_move + 1) == splash ||
//                     byte(party_pkmn_3_move + 2) == splash ||
//                     byte(party_pkmn_3_move + 3) == splash
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 3) == snorlax &&
//                 prev(byte(party_pkmn_4_move)) != splash &&
//                 prev(byte(party_pkmn_4_move + 1)) != splash &&
//                 prev(byte(party_pkmn_4_move + 2)) != splash &&
//                 prev(byte(party_pkmn_4_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_4_move) == splash ||
//                     byte(party_pkmn_4_move + 1) == splash ||
//                     byte(party_pkmn_4_move + 2) == splash ||
//                     byte(party_pkmn_4_move + 3) == splash
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 4) == snorlax &&
//                 prev(byte(party_pkmn_5_move)) != splash &&
//                 prev(byte(party_pkmn_5_move + 1)) != splash &&
//                 prev(byte(party_pkmn_5_move + 2)) != splash &&
//                 prev(byte(party_pkmn_5_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_5_move) == splash ||
//                     byte(party_pkmn_5_move + 1) == splash ||
//                     byte(party_pkmn_5_move + 2) == splash ||
//                     byte(party_pkmn_5_move + 3) == splash
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 5) == snorlax &&
//                 prev(byte(party_pkmn_6_move)) != splash &&
//                 prev(byte(party_pkmn_6_move + 1)) != splash &&
//                 prev(byte(party_pkmn_6_move + 2)) != splash &&
//                 prev(byte(party_pkmn_6_move + 3)) != splash &&
//                 __ornext(
//                     byte(party_pkmn_6_move) == splash ||
//                     byte(party_pkmn_6_move + 1) == splash ||
//                     byte(party_pkmn_6_move + 2) == splash ||
//                     byte(party_pkmn_6_move + 3) == splash
//                 )
//             )
//         )
// )

// achievement(
//     id = 513351,
//     title = "Lance's Heir",
//     description = "Teach Barrier to a Dragonite",
//     points = 1,
//     trigger =
//         map == dragons_den_shrine &&
//         (
//             (
//                 byte(party_pkmn) == dragonite &&
//                 prev(byte(party_pkmn_1_move)) != barrier &&
//                 prev(byte(party_pkmn_1_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_1_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_1_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_1_move) == barrier ||
//                     byte(party_pkmn_1_move + 1) == barrier ||
//                     byte(party_pkmn_1_move + 2) == barrier ||
//                     byte(party_pkmn_1_move + 3) == barrier
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 1) == dragonite &&
//                 prev(byte(party_pkmn_2_move)) != barrier &&
//                 prev(byte(party_pkmn_2_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_2_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_2_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_2_move) == barrier ||
//                     byte(party_pkmn_2_move + 1) == barrier ||
//                     byte(party_pkmn_2_move + 2) == barrier ||
//                     byte(party_pkmn_2_move + 3) == barrier
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 2) == dragonite &&
//                 prev(byte(party_pkmn_3_move)) != barrier &&
//                 prev(byte(party_pkmn_3_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_3_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_3_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_3_move) == barrier ||
//                     byte(party_pkmn_3_move + 1) == barrier ||
//                     byte(party_pkmn_3_move + 2) == barrier ||
//                     byte(party_pkmn_3_move + 3) == barrier
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 3) == dragonite &&
//                 prev(byte(party_pkmn_4_move)) != barrier &&
//                 prev(byte(party_pkmn_4_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_4_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_4_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_4_move) == barrier ||
//                     byte(party_pkmn_4_move + 1) == barrier ||
//                     byte(party_pkmn_4_move + 2) == barrier ||
//                     byte(party_pkmn_4_move + 3) == barrier
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 4) == dragonite &&
//                 prev(byte(party_pkmn_5_move)) != barrier &&
//                 prev(byte(party_pkmn_5_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_5_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_5_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_5_move) == barrier ||
//                     byte(party_pkmn_5_move + 1) == barrier ||
//                     byte(party_pkmn_5_move + 2) == barrier ||
//                     byte(party_pkmn_5_move + 3) == barrier
//                 )
//             ) ||
//             (
//                 byte(party_pkmn + 5) == dragonite &&
//                 prev(byte(party_pkmn_6_move)) != barrier &&
//                 prev(byte(party_pkmn_6_move + 1)) != barrier &&
//                 prev(byte(party_pkmn_6_move + 2)) != barrier &&
//                 prev(byte(party_pkmn_6_move + 3)) != barrier &&
//                 __ornext(
//                     byte(party_pkmn_6_move) == barrier ||
//                     byte(party_pkmn_6_move + 1) == barrier ||
//                     byte(party_pkmn_6_move + 2) == barrier ||
//                     byte(party_pkmn_6_move + 3) == barrier
//                 )
//             )
//         )
// )

// achievement(
//     title = "What Did They Mean by This",
//     description = "Find and defeat the following unusual trainers: Lass Tiffany, Char King Vogner, Blackbelt Mickdee, and Boarder Colgate",
//     points = 3,
//     trigger =
//         prev(bit0(0xdab6)) +
//         prev(bit1(0xdafb)) +
//         prev(bit1(0xdb13)) +
//         prev(bit2(0xdb13)) == 3 &&
//         measured(
//             bit0(0xdab6) +
//             bit1(0xdafb) +
//             bit1(0xdb13) +
//             bit2(0xdb13) == 4
//         )
// )

// achievement(
//     title = "The Power of Nicknames",
//     description = "Obtain Skulkraken and place it in your party",
//     points = 1,
//     trigger =
//         always_true() &&
//         (
//             (
//                 __ornext(
//                     byte(party_pkmn) == magikarp ||
//                     byte(party_pkmn) == gyarados
//                 ) &&
//                 pkmn_1_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_1_name) == 0x92 ||
//                     byte(pkmn_1_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 1) == 0x8a ||
//                     byte(pkmn_1_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 2) == 0x94 ||
//                     byte(pkmn_1_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 3) == 0x8b ||
//                     byte(pkmn_1_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 4) == 0x8a ||
//                     byte(pkmn_1_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 5) == 0x91 ||
//                     byte(pkmn_1_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 6) == 0x80 ||
//                     byte(pkmn_1_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 7) == 0x8a ||
//                     byte(pkmn_1_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 8) == 0x84 ||
//                     byte(pkmn_1_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_1_name + 9) == 0x8d ||
//                     byte(pkmn_1_name + 9) == 0xad
//                 )
//             ) ||
//             (
//                 __ornext(
//                     byte(party_pkmn + 1) == magikarp ||
//                     byte(party_pkmn + 1) == gyarados
//                 ) &&
//                 pkmn_2_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_2_name) == 0x92 ||
//                     byte(pkmn_2_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 1) == 0x8a ||
//                     byte(pkmn_2_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 2) == 0x94 ||
//                     byte(pkmn_2_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 3) == 0x8b ||
//                     byte(pkmn_2_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 4) == 0x8a ||
//                     byte(pkmn_2_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 5) == 0x91 ||
//                     byte(pkmn_2_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 6) == 0x80 ||
//                     byte(pkmn_2_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 7) == 0x8a ||
//                     byte(pkmn_2_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 8) == 0x84 ||
//                     byte(pkmn_2_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_2_name + 9) == 0x8d ||
//                     byte(pkmn_2_name + 9) == 0xad
//                 )
//             ) ||
//             (
//                 __ornext(
//                     byte(party_pkmn + 2) == magikarp ||
//                     byte(party_pkmn + 2) == gyarados
//                 ) &&
//                 pkmn_3_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_3_name) == 0x92 ||
//                     byte(pkmn_3_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 1) == 0x8a ||
//                     byte(pkmn_3_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 2) == 0x94 ||
//                     byte(pkmn_3_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 3) == 0x8b ||
//                     byte(pkmn_3_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 4) == 0x8a ||
//                     byte(pkmn_3_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 5) == 0x91 ||
//                     byte(pkmn_3_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 6) == 0x80 ||
//                     byte(pkmn_3_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 7) == 0x8a ||
//                     byte(pkmn_3_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 8) == 0x84 ||
//                     byte(pkmn_3_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_3_name + 9) == 0x8d ||
//                     byte(pkmn_3_name + 9) == 0xad
//                 )
//             ) ||
//             (
//                 __ornext(
//                     byte(party_pkmn + 3) == magikarp ||
//                     byte(party_pkmn + 3) == gyarados
//                 ) &&
//                 pkmn_4_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_4_name) == 0x92 ||
//                     byte(pkmn_4_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 1) == 0x8a ||
//                     byte(pkmn_4_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 2) == 0x94 ||
//                     byte(pkmn_4_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 3) == 0x8b ||
//                     byte(pkmn_4_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 4) == 0x8a ||
//                     byte(pkmn_4_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 5) == 0x91 ||
//                     byte(pkmn_4_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 6) == 0x80 ||
//                     byte(pkmn_4_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 7) == 0x8a ||
//                     byte(pkmn_4_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 8) == 0x84 ||
//                     byte(pkmn_4_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_4_name + 9) == 0x8d ||
//                     byte(pkmn_4_name + 9) == 0xad
//                 )
//             ) ||
//             (
//                 __ornext(
//                     byte(party_pkmn + 4) == magikarp ||
//                     byte(party_pkmn + 4) == gyarados
//                 ) &&
//                 pkmn_5_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_5_name) == 0x92 ||
//                     byte(pkmn_5_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 1) == 0x8a ||
//                     byte(pkmn_5_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 2) == 0x94 ||
//                     byte(pkmn_5_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 3) == 0x8b ||
//                     byte(pkmn_5_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 4) == 0x8a ||
//                     byte(pkmn_5_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 5) == 0x91 ||
//                     byte(pkmn_5_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 6) == 0x80 ||
//                     byte(pkmn_5_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 7) == 0x8a ||
//                     byte(pkmn_5_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 8) == 0x84 ||
//                     byte(pkmn_5_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_5_name + 9) == 0x8d ||
//                     byte(pkmn_5_name + 9) == 0xad
//                 )
//             ) ||
//             (
//                 __ornext(
//                     byte(party_pkmn + 5) == magikarp ||
//                     byte(party_pkmn + 5) == gyarados
//                 ) &&
//                 pkmn_6_dvs == 0xaafa &&
//                 __ornext(
//                     byte(pkmn_6_name) == 0x92 ||
//                     byte(pkmn_6_name) == 0xb2
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 1) == 0x8a ||
//                     byte(pkmn_6_name + 1) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 2) == 0x94 ||
//                     byte(pkmn_6_name + 2) == 0xb4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 3) == 0x8b ||
//                     byte(pkmn_6_name + 3) == 0xab
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 4) == 0x8a ||
//                     byte(pkmn_6_name + 4) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 5) == 0x91 ||
//                     byte(pkmn_6_name + 5) == 0xb1
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 6) == 0x80 ||
//                     byte(pkmn_6_name + 6) == 0xa0
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 7) == 0x8a ||
//                     byte(pkmn_6_name + 7) == 0xaa
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 8) == 0x84 ||
//                     byte(pkmn_6_name + 8) == 0xa4
//                 ) &&
//                 __ornext(
//                     byte(pkmn_6_name + 9) == 0x8d ||
//                     byte(pkmn_6_name + 9) == 0xad
//                 )
//             )
//         )
// )