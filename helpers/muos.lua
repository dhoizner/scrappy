local muos = {
  SD1_PATH = "/mnt/mmc",
  SD2_PATH = "/mnt/sdcard",
  CATALOGUE = "/MUOS/info/catalogue",
  platforms = {
    ["amstradcpc"] = "Amstrad",
    ["arcade"] = "Arcade",
    ["arduboy"] = "Arduboy",
    ["atari2600"] = "Atari 2600",
    ["atari5200"] = "Atari 5200",
    ["atari7800"] = "Atari 7800",
    ["atarijaguar"] = "Atari Jaguar",
    ["atarilynx"] = "Atari Lynx",
    -- "Atari ST-STE-TT-Falcon",
    ["wonderswancolor"] = "Bandai WonderSwan-Color",
    -- "CHIP-8",
    -- "Cannonball",
    -- "Cave Story",
    -- "ChaiLove",
    ["coleco"] = "ColecoVision",
    ["amiga"] = "Commodore Amiga",
    ["c128"] = "Commodore C128",
    ["c64"] = "Commodore C64",
    -- "Commodore CBM-II",
    -- "Commodore PET",
    ["vic20"] = "Commodore VIC-20",
    ["pc"] = "DOS",
    -- "Dinothawr",
    -- "Doom",
    -- "External - Ports",
    ["channelf"] = "Fairchild ChannelF",
    -- "Flashback",
    -- "Folder",
    ["vectrex"] = "GCE-Vectrex",
    -- "Game Music Emu",
    ["gameandwatch"] = "Handheld Electronic - Game and Watch",
    -- "Java J2ME",
    -- "Lowres NX",
    -- "Lua Engine",
    ["coleco_"] = "MSX-SVI-ColecoVision-SG1000",
    ["intellivision"] = "Mattel - Intellivision",
    ["msx"] = "Microsoft - MSX",
    -- "Mr. Boom",
    ["pcengine"] = "NEC PC Engine",
    ["pcenginecd"] = "NEC PC Engine CD",
    -- "NEC PC Engine SuperGrafx",
    -- "NEC PC-8000 - PC-8800 series",
    ["pcfx"] = "NEC PC-FX",
    ["pc98"] = "NEC PC98",
    ["nds"] = "Nintendo DS",
    ["gb"] = "Nintendo Game Boy",
    ["gba"] = "Nintendo Game Boy Advance",
    ["gbc"] = "Nintendo Game Boy Color",
    ["n64"] = "Nintendo N64",
    ["nes"] = "Nintendo NES-Famicom",
    ["pokemini"] = "Nintendo Pokemon Mini",
    ["snes"] = "Nintendo SNES-SFC",
    ["virtualboy"] = "Nintendo Virtual Boy",
    -- "OpenBOR",
    ["pico8"] = "PICO-8",
    ["palm"] = "Palm OS",
    ["cdi"] = "Philips CDi",
    -- "Quake",
    -- "RPG Maker 2000 - 2003",
    -- "Rick Dangerous",
    -- "Root",
    ["neogeo"] = "SNK Neo Geo",
    ["neogeocd"] = "SNK Neo Geo CD",
    ["ngpc"] = "SNK Neo Geo Pocket - Color",
    ["scummvm"] = "ScummVM",
    ["sega32x"] = "Sega 32X",
    ["atomiswave"] = "Sega Atomiswave Naomi",
    ["dreamcast"] = "Sega Dreamcast",
    ["gamegear"] = "Sega Game Gear",
    ["mastersystem"] = "Sega Master System",
    ["segacd"] = "Sega Mega CD - Sega CD",
    ["megadrive"] = "Sega Mega Drive - Genesis",
    ["mastersystem_"] = "Sega SG-1000",
    ["saturn"] = "Sega Saturn",
    -- "Sharp X1",
    ["x68000"] = "Sharp X68000",
    ["zx81"] = "Sinclair ZX 81",
    ["zxspectrum"] = "Sinclair ZX Spectrum",
    ["psx"] = "Sony PlayStation",
    ["psp"] = "Sony Playstation Portable",
    ["tic80"] = "TIC-80",
    -- "Texas Instruments TI-83",
    -- "The 3DO Company - 3DO",
    -- "Uzebox",
    -- "VeMUlator",
    -- "Video Player",
    -- "Vircon32",
    -- "WASM-4",
    ["supervision"] = "Watara Supervision",
    -- "Wolfenstein 3D",
  },
  assign = {
    ["64"] = "n64",
    ["2600"] = "atari2600",
    ["5200"] = "atari5200",
    ["7800"] = "atari7800",
    ["amstrad"] = "amstradcpc",
    ["amstrad cpc"] = "amstradcpc",
    ["amstrad gx4000"] = "amstradcpc",
    ["cpc"] = "amstradcpc",
    ["gx4000"] = "amstradcpc",
    ["arcade"] = "arcade",
    ["cps"] = "arcade",
    ["arcade - cps1"] = "arcade",
    ["cps1"] = "arcade",
    ["capcom play system 1"] = "arcade",
    ["arcade - cps2"] = "arcade",
    ["cps2"] = "arcade",
    ["capcom play system 2"] = "arcade",
    ["arcade - cps3"] = "arcade",
    ["cps3"] = "arcade",
    ["capcom play system 3"] = "arcade",
    ["fba"] = "arcade",
    ["final burn alpha"] = "arcade",
    ["finalburn alpha"] = "arcade",
    ["arcade - fba"] = "arcade",
    ["arcade - finalburnalpha"] = "arcade",
    ["arcade - finalburn alpha"] = "arcade",
    ["arcade - final burn alpha"] = "arcade",
    ["fbneo"] = "arcade",
    ["final burn neo"] = "arcade",
    ["finalburn neo"] = "arcade",
    ["arcade - fbneo"] = "arcade",
    ["arcade - finalburnneo"] = "arcade",
    ["arcade - finalburn neo"] = "arcade",
    ["arcade - final burn neo"] = "arcade",
    ["hbmame"] = "arcade",
    ["arcade - hbmame"] = "arcade",
    ["mame"] = "arcade",
    ["arcade - mame"] = "arcade",
    ["mame2000"] = "arcade",
    ["mame-2000"] = "arcade",
    ["mame 2000"] = "arcade",
    ["arcade - mame2000"] = "arcade",
    ["arcade - mame-2000"] = "arcade",
    ["arcade - mame 2000"] = "arcade",
    ["mame2003"] = "arcade",
    ["mame-2003"] = "arcade",
    ["mame 2003"] = "arcade",
    ["arcade - mame2003"] = "arcade",
    ["arcade - mame-2003"] = "arcade",
    ["arcade - mame 2003"] = "arcade",
    ["mame2003plus"] = "arcade",
    ["mame2003-plus"] = "arcade",
    ["mame2003 plus"] = "arcade",
    ["mame 2003 plus"] = "arcade",
    ["arcade - mame2003plus"] = "arcade",
    ["arcade - mame2003-plus"] = "arcade",
    ["arcade - mame-2003-plus"] = "arcade",
    ["arcade - mame 2003 plus"] = "arcade",
    ["mame2010"] = "arcade",
    ["mame-2010"] = "arcade",
    ["mame 2010"] = "arcade",
    ["arcade - mame2010"] = "arcade",
    ["arcade - mame-2010"] = "arcade",
    ["arcade - mame 2010"] = "arcade",
    ["mame2016"] = "arcade",
    ["mame-2016"] = "arcade",
    ["mame 2016"] = "arcade",
    ["arcade - mame2016"] = "arcade",
    ["arcade - mame-2016"] = "arcade",
    ["arcade - mame 2016"] = "arcade",
    ["arcade - vertical"] = "arcade",
    ["arcade - vertical arcade"] = "arcade",
    ["vertical arcade"] = "arcade",
    ["vertical_arcade"] = "arcade",
    ["varcade"] = "arcade",
    ["vertarcade"] = "arcade",
    ["arduboy"] = "arduboy",
    ["atari"] = "atari2600",
    ["atari2600"] = "atari2600",
    ["atari 2600"] = "atari2600",
    ["atari - 2600"] = "atari2600",
    ["a2600"] = "atari2600",
    ["twentysixhundred"] = "atari2600",
    ["a5200"] = "atari5200",
    ["atari5200"] = "atari5200",
    ["atari 5200"] = "atari5200",
    ["atari - 5200"] = "atari5200",
    ["fiftytwohundred"] = "atari5200",
    ["a7800"] = "atari7800",
    ["atari7800"] = "atari7800",
    ["atari 7800"] = "atari7800",
    ["atari - 7800"] = "atari7800",
    ["seventyeighthundred"] = "atari7800",
    ["atarijaguar"] = "atarijaguar",
    ["atari jaguar"] = "atarijaguar",
    ["atari - jaguar"] = "atarijaguar",
    ["jaguar"] = "atarijaguar",
    ["atarilynx"] = "atarilynx",
    ["atari lynx"] = "atarilynx",
    ["atari - lynx"] = "atarilynx",
    ["lynx"] = "atarilynx",
    ["atarist"] = "atarist",
    ["st"] = "atarist",
    ["atari st"] = "atarist",
    ["ast"] = "atarist",
    ["atari - st"] = "atarist",
    ["a800"] = "atarist",
    ["ws"] = "wonderswancolor",
    ["bandai wonderswan"] = "wonderswancolor",
    ["wonderswancolor"] = "wonderswancolor",
    ["wsc"] = "wonderswancolor",
    ["wonderswan"] = "wonderswancolor",
    ["bandai wonderswan color"] = "wonderswancolor",
    ["bandai - wonderswan color"] = "wonderswancolor",
    ["bws"] = "wonderswancolor",
    ["bwsc"] = "wonderswancolor",
    ["colecovision"] = "coleco",
    ["coleco"] = "coleco",
    ["amiga"] = "amiga",
    ["amiga 500"] = "amiga",
    ["amiga500"] = "amiga",
    ["commodore amiga"] = "amiga",
    ["commodore - amiga"] = "amiga",
    ["commodore c64"] = "c64",
    ["commodore 64"] = "c64",
    ["c64"] = "c64",
    ["commodore"] = "c64",
    ["commodore - c64"] = "c64",
    ["commodore c128"] = "c128",
    ["c128"] = "c128",
    ["commodore 128"] = "c128",
    ["commodore - c128"] = "c128",
    ["commodore vic-20"] = "vic20",
    ["vic-20"] = "vic20",
    ["vic20"] = "vic20",
    ["dos"] = "pc",
    ["ms dos"] = "pc",
    ["dosbox"] = "pc",
    ["microsoft - dos"] = "pc",
    ["pc"] = "pc",
    -- ["port"] = "ps5",
    -- ["ports"] = "ps5",
    -- ["external"] = "ps5",
    -- ["external - port"] = "ps5",
    -- ["external - ports"] = "ps5",
    ["fairchild"] = "channelf",
    ["channelf"] = "channelf",
    ["fairchild channelf"] = "channelf",
    ["gce - vectrex"] = "vectrex",
    ["gce"] = "vectrex",
    ["vectrex"] = "vectrex",
    ["gw"] = "gameandwatch",
    ["handheld electronic"] = "gameandwatch",
    ["game and watch"] = "gameandwatch",
    ["gameandwatch"] = "gameandwatch",
    ["gamenwatch"] = "gameandwatch",
    ["g+w"] = "gameandwatch",
    ["ngw"] = "gameandwatch",
    ["nintendo - game and watch"] = "gameandwatch",
    ["nintendo game and watch"] = "gameandwatch",
    ["nintendo gw"] = "gameandwatch",
    ["nintendogw"] = "gameandwatch",
    ["mattel - intellivision"] = "intellivision",
    ["intellivision"] = "intellivision",
    ["msx"] = "msx",
    ["msx1"] = "msx",
    ["microsoft-msx"] = "msx",
    ["microsoft_msx"] = "msx",
    ["microsoft - msx"] = "msx",
    ["nec pc98"] = "pc98",
    ["pc98"] = "pc98",
    ["pc-98"] = "pc98",
    ["necpc98"] = "pc98",
    ["nec pc-8000"] = "pc88",
    ["pc-8000"] = "pc88",
    ["pce"] = "pcengine",
    ["pcecd"] = "pcengine",
    ["turbografx"] = "pcengine",
    ["turbografx-16"] = "pcengine",
    ["tg16"] = "pcengine",
    ["turbografx cd"] = "pcengine",
    ["turbografxcd"] = "pcengine",
    ["pcengine"] = "pcengine",
    ["pc engine"] = "pcengine",
    ["pc engine cd"] = "pcengine",
    ["pcenginecd"] = "pcengine",
    ["nec - turbografx-16"] = "pcengine",
    ["nec - turbografx16"] = "pcengine",
    ["nec - tg16"] = "pcengine",
    ["nec turbografx cd"] = "pcengine",
    ["nec turbografx"] = "pcengine",
    ["nec pc engine cd"] = "pcengine",
    ["nec - turbografx cd"] = "pcengine",
    ["nec - turbografx"] = "pcengine",
    ["nec - pc engine cd"] = "pcengine",
    ["nec - tgcd"] = "pcengine",
    ["nec_pc_engine"] = "pcengine",
    ["nec_pce"] = "pcengine",
    ["tgfx"] = "pcengine",
    ["tgrafx"] = "pcengine",
    ["tgrafx16"] = "pcengine",
    ["tg"] = "pcengine",
    ["tg-16"] = "pcengine",
    ["turbographix"] = "pcengine",
    ["necpce"] = "pcengine",
    ["necpcecd"] = "pcengine",
    ["tgcd"] = "pcengine",
    ["sgfx"] = "pcenginecd",
    ["supergrafx"] = "pcenginecd",
    ["nec supergrafx"] = "pcenginecd",
    ["nec - supergrafx"] = "pcenginecd",
    ["nec - sgfx"] = "pcenginecd",
    ["nec pc-fx"] = "pcfx",
    ["nec - pc-fx"] = "pcfx",
    ["pc-fx"] = "pcfx",
    ["ds"] = "nds",
    ["nds"] = "nds",
    ["nintendo ds"] = "nds",
    ["nintendods"] = "nds",
    ["nintendo - ds"] = "nds",
    ["nintendo - nintendo dsi"] = "nds",
    ["nintendo_ds"] = "nds",
    ["n-ds"] = "nds",
    ["nin-ds"] = "nds",
    ["dsi"] = "nds",
    ["nintendodsi"] = "nds",
    ["drastic"] = "nds",
    ["nintendo-ds"] = "nds",
    ["gb"] = "gb",
    ["game boy"] = "gb",
    ["gameboy"] = "gb",
    ["nintendo game boy"] = "gb",
    ["nintendo - game boy"] = "gb",
    ["nintendo - gb"] = "gb",
    ["nintendo_gameboy"] = "gb",
    ["nintendo_game_boy"] = "gb",
    ["nintendo_gb"] = "gb",
    ["ngb"] = "gb",
    ["n-gb"] = "gb",
    ["nintendo-gameboy"] = "gb",
    ["nintendogameboy"] = "gb",
    ["dmg"] = "gb",
    ["originalgameboy"] = "gb",
    ["original gameboy"] = "gb",
    ["gb-dmg"] = "gb",
    ["gbhacks"] = "gb",
    ["gba"] = "gba",
    ["game boy advance"] = "gba",
    ["gameboy advance"] = "gba",
    ["nintendo gba"] = "gba",
    ["nintendo game boy advance"] = "gba",
    ["nintendo gameboy advance"] = "gba",
    ["nintendo - gameboy advance"] = "gba",
    ["nintendo - gba"] = "gba",
    ["gb advance"] = "gba",
    ["nintendo_gameboy_advance"] = "gba",
    ["nintendo_gameboyadvance"] = "gba",
    ["nintendo_gba"] = "gba",
    ["gbsp"] = "gba",
    ["mgba"] = "gba",
    ["gbadvance"] = "gba",
    ["ngba"] = "gba",
    ["n-gba"] = "gba",
    ["nin-gba"] = "gba",
    ["gb-advance"] = "gba",
    ["gbahacks"] = "gba",
    ["gbc"] = "gbc",
    ["nintendo gbc"] = "gbc",
    ["nintendo game boy color"] = "gbc",
    ["nintendo gameboy color"] = "gbc",
    ["nintendo - gameboy color"] = "gbc",
    ["nintendo - gbc"] = "gbc",
    ["gb color"] = "gbc",
    ["nintendo_gbc"] = "gbc",
    ["nintendo_gameboy_color"] = "gbc",
    ["gambatte"] = "gbc",
    ["sameboy"] = "gbc",
    ["bgb"] = "gbc",
    ["gb-color"] = "gbc",
    ["gb-c"] = "gbc",
    ["n-gbc"] = "gbc",
    ["ngbc"] = "gbc",
    ["nin-gbc"] = "gbc",
    ["gbcolor"] = "gbc",
    ["gbchacks"] = "gbc",
    ["n64"] = "n64",
    ["nintendo 64"] = "n64",
    ["nintendo n64"] = "n64",
    ["nintendo - n64"] = "n64",
    ["nintendo - nintendo 64"] = "n64",
    ["nintendo - nintendo 64dd"] = "n64",
    ["nintendo_n64"] = "n64",
    ["nintendo64"] = "n64",
    ["mupen"] = "n64",
    ["mupen64plus"] = "n64",
    ["mupen64"] = "n64",
    ["64dd"] = "n64",
    ["n64dd"] = "n64",
    ["n64hacks"] = "n64",
    ["fc"] = "nes",
    ["fds"] = "nes",
    ["nes"] = "nes",
    ["famicom"] = "nes",
    ["nintendo famicom"] = "nes",
    ["nintendo entertainment system"] = "nes",
    ["nintendo - nes"] = "nes",
    ["nintendo - nintendo entertainment system"] = "nes",
    ["nintendo_NES"] = "nes",
    ["nintendo"] = "nes",
    ["nin"] = "nes",
    ["nes cd"] = "nes",
    ["nescd"] = "nes",
    ["nesds"] = "nes",
    ["famicomds"] = "nes",
    ["fcds"] = "nes",
    ["nin-nes"] = "nes",
    ["fc-nes"] = "nes",
    ["nes-fc"] = "nes",
    ["neshacks"] = "nes",
    ["poke"] = "pokemini",
    ["pokemon mini"] = "pokemini",
    ["pokemini"] = "pokemini",
    ["nintendo pokemon mini"] = "pokemini",
    ["nintendo - pokemini"] = "pokemini",
    ["sfc"] = "snes",
    ["snes"] = "snes",
    ["super famicom"] = "snes",
    ["super nintendo"] = "snes",
    ["super nes"] = "snes",
    ["super nintendo entertainment system"] = "snes",
    ["nintendo - snes"] = "snes",
    ["nintendo - super nintendo entertainment system"] = "snes",
    ["nintendo - sfc"] = "snes",
    ["snesmsu"] = "snes",
    ["snesmsu1"] = "snes",
    ["nintendo - snes msu1"] = "snes",
    ["nintendo - snesmsu"] = "snes",
    ["nintendo_super_nintendo"] = "snes",
    ["zsnes"] = "snes",
    ["snes9x"] = "snes",
    ["bsnes"] = "snes",
    ["supernintendo"] = "snes",
    ["nin-snes"] = "snes",
    ["nsnes"] = "snes",
    ["satellaview"] = "snes",
    ["satella"] = "snes",
    ["nsv"] = "snes",
    ["snes-hacks"] = "snes",
    ["superpretendo"] = "snes",
    ["vb"] = "virtualboy",
    ["virtual boy"] = "virtualboy",
    ["virtualboy"] = "virtualboy",
    ["nintendo virtual boy"] = "virtualboy",
    ["nintendo - virtual boy"] = "virtualboy",
    ["nintendo - virtualboy"] = "virtualboy",
    ["nintendo - vb"] = "virtualboy",
    ["nvb"] = "virtualboy",
    ["n-vb"] = "virtualboy",
    ["nintendovb"] = "virtualboy",
    ["virtboy"] = "virtualboy",
    ["virtuaboy"] = "virtualboy",
    ["nintendo_vitrualboy"] = "virtualboy",
    ["palm os"] = "palm",
    ["palmos"] = "palm",
    ["palm - palmos"] = "palm",
    ["palm"] = "palm",
    ["philips cdi"] = "cdi",
    ["cdi"] = "cdi",
    ["philips - cdi"] = "cdi",
    ["pico"] = "pico8",
    ["pico-8"] = "pico8",
    ["pico8"] = "pico8",
    ["scummvm"] = "scummvm",
    ["scumm"] = "scummvm",
    ["32x"] = "sega32x",
    ["sega 32x"] = "sega32x",
    ["sega32x"] = "sega32x",
    ["thirtytwox"] = "sega32x",
    ["sega - 32x"] = "sega32x",
    ["sega-32x"] = "sega32x",
    ["sega_32x"] = "sega32x",
    ["s32x"] = "sega32x",
    ["gen-32x"] = "sega32x",
    ["md-32x"] = "sega32x",
    ["md32x"] = "sega32x",
    ["gen32x"] = "sega32x",
    ["dreamcast"] = "dreamcast",
    ["sega dreamcast"] = "dreamcast",
    ["sega - dc"] = "dreamcast",
    ["sega - dreamcast"] = "dreamcast",
    ["dc"] = "dreamcast",
    ["sdc"] = "dreamcast",
    ["sega naomi"] = "atomiswave",
    ["sega - naomi"] = "atomiswave",
    ["naomi"] = "atomiswave",
    ["atomiswave"] = "atomiswave",
    ["aw"] = "atomiswave",
    ["arcade - atomiswave"] = "atomiswave",
    ["arcade - naomi"] = "atomiswave",
    ["arcade - sega naomi"] = "atomiswave",
    ["seganaomi"] = "atomiswave",
    ["segaatomiswave"] = "atomiswave",
    ["flycast"] = "dreamcast",
    ["redream"] = "dreamcast",
    ["segadreamcast"] = "dreamcast",
    ["sega-dc"] = "dreamcast",
    ["sega-dreamcast"] = "dreamcast",
    ["sega_dreamcast"] = "dreamcast",
    ["sega_naomi"] = "atomiswave",
    ["sega_atomiswave"] = "atomiswave",
    ["arcade-naomi"] = "atomiswave",
    ["arcade-atomiswave"] = "atomiswave",
    ["arcade-seganaomi"] = "atomiswave",
    ["arcade-segaatomiswave"] = "atomiswave",
    ["arcade_naomi"] = "atomiswave",
    ["arcade_atomiswave"] = "atomiswave",
    ["arc-naomi"] = "atomiswave",
    ["arc-atomiswave"] = "atomiswave",
    ["arc-seganaomi"] = "atomiswave",
    ["arc-segaatomiswave"] = "atomiswave",
    ["arc_naomi"] = "atomiswave",
    ["arc_atomiswave"] = "atomiswave",
    ["gg"] = "gamegear",
    ["game gear"] = "gamegear",
    ["sega game gear"] = "gamegear",
    ["sega - game gear"] = "gamegear",
    ["sega - gamegear"] = "gamegear",
    ["sega gg"] = "gamegear",
    ["sega - gg"] = "gamegear",
    ["sega gamegear"] = "gamegear",
    ["gamegear"] = "gamegear",
    ["sega_gamegear"] = "gamegear",
    ["sgg"] = "gamegear",
    ["sega-gamegear"] = "gamegear",
    ["sega-gg"] = "gamegear",
    ["seg-gg"] = "gamegear",
    ["gamegearhacks"] = "gamegear",
    ["ms"] = "mastersystem",
    ["sms"] = "mastersystem",
    ["master system"] = "mastersystem",
    ["mastersystem"] = "mastersystem",
    ["sega master system"] = "mastersystem",
    ["sega - sms"] = "mastersystem",
    ["sega - master system"] = "mastersystem",
    ["sega ms"] = "mastersystem",
    ["segasgone"] = "mastersystem",
    ["sg-1000"] = "mastersystem",
    ["sega sg-1000"] = "mastersystem",
    ["sega-sms"] = "mastersystem",
    ["sega_sms"] = "mastersystem",
    ["seg-ms"] = "mastersystem",
    ["sega_sg1000"] = "mastersystem",
    ["sg1000"] = "mastersystem",
    ["smsgg"] = "mastersystem",
    ["ggsms"] = "mastersystem",
    ["sms-gg"] = "mastersystem",
    ["gg-sms"] = "mastersystem",
    ["sms_gg"] = "mastersystem",
    ["gg_sms"] = "mastersystem",
    ["mastersystemhacks"] = "mastersystem",
    ["sega cd"] = "segacd",
    ["sega - segacd"] = "segacd",
    ["sega - sega cd"] = "segacd",
    ["sega - scd"] = "segacd",
    ["mega cd"] = "segacd",
    ["segacd"] = "segacd",
    ["megacd"] = "segacd",
    ["sega mega cd"] = "segacd",
    ["scd"] = "segacd",
    ["mdcd"] = "segacd",
    ["gencd"] = "segacd",
    ["genesis_cd"] = "segacd",
    ["megadrive_cd"] = "segacd",
    ["genesis-cd"] = "segacd",
    ["megadrive-cd"] = "segacd",
    ["sega-cd"] = "segacd",
    ["mega-cd"] = "segacd",
    ["sega-mcd"] = "segacd",
    ["sega_cd"] = "segacd",
    ["mega_cd"] = "segacd",
    ["gen-segacd"] = "segacd",
    ["md-segacd"] = "segacd",
    ["md"] = "megadrive",
    ["megadrive"] = "megadrive",
    ["mega drive"] = "megadrive",
    ["sega mega drive"] = "megadrive",
    ["genesis"] = "megadrive",
    ["sega genesis"] = "megadrive",
    ["sega megadrive"] = "megadrive",
    ["sega - genesis"] = "megadrive",
    ["sega - megadrive"] = "megadrive",
    ["sega - mdmsu1"] = "megadrive",
    ["sega - mdmsu"] = "megadrive",
    ["sega - genesis msu"] = "megadrive",
    ["mdmsu1"] = "megadrive",
    ["mdmsu"] = "megadrive",
    ["gen"] = "megadrive",
    ["gens"] = "megadrive",
    ["kega"] = "megadrive",
    ["segagenesis"] = "megadrive",
    ["sega_genesis"] = "megadrive",
    ["sega_megadrive"] = "megadrive",
    ["sega_mega_drive"] = "megadrive",
    ["sega-genesis"] = "megadrive",
    ["sega-megadrive"] = "megadrive",
    ["sega_mega-drive"] = "megadrive",
    ["md-gen"] = "megadrive",
    ["gen-md"] = "megadrive",
    ["gen_md"] = "megadrive",
    ["md_gen"] = "megadrive",
    ["megadrivehacks"] = "megadrive",
    ["genesishacks"] = "megadrive",
    ["saturn"] = "saturn",
    ["sega saturn"] = "saturn",
    ["sega - saturn"] = "saturn",
    ["ss"] = "saturn",
    ["yabasanshiro"] = "saturn",
    ["yabause"] = "saturn",
    ["satourne"] = "saturn",
    ["segasat"] = "saturn",
    ["sega-sat"] = "saturn",
    ["segasaturn"] = "saturn",
    ["sega_saturn"] = "saturn",
    ["sega-saturn"] = "saturn",
    ["sat"] = "saturn",
    ["sharp x68000"] = "x68000",
    ["x68000"] = "x68000",
    ["sinclair zx 81"] = "zx81",
    ["zx 81"] = "zx81",
    ["zx81"] = "zx81",
    ["neogeo"] = "neogeo",
    ["snk neo geo"] = "neogeo",
    ["snk neogeo"] = "neogeo",
    ["fbn_neogeo"] = "neogeo",
    ["neo-geo"] = "neogeo",
    ["neo_geo"] = "neogeo",
    ["snk-neogeo"] = "neogeo",
    ["snk_neogeo"] = "neogeo",
    ["snk_neo_geo"] = "neogeo",
    ["snkneogeo"] = "neogeo",
    ["ng"] = "neogeo",
    ["sng"] = "neogeo",
    ["arcade - neogeo"] = "neogeo",
    ["arcade - neo geo"] = "neogeo",
    ["arcade - snk neogeo"] = "neogeo",
    ["arcade - snk neo geo"] = "neogeo",
    ["arcade - snk"] = "neogeo",
    ["arcade_neogeo"] = "neogeo",
    ["arcade-neogeo"] = "neogeo",
    ["arc-neogeo"] = "neogeo",
    ["arc_neogeo"] = "neogeo",
    ["neocd"] = "neogeocd",
    ["neogeocd"] = "neogeocd",
    ["neo geo cd"] = "neogeocd",
    ["neogeo cd"] = "neogeocd",
    ["snk neogeo cd"] = "neogeocd",
    ["snk neo geo cd"] = "neogeocd",
    ["snk - neo geo cd"] = "neogeocd",
    ["snk - neogeo cd"] = "neogeocd",
    ["neocdz"] = "neogeocd",
    ["ngcd"] = "neogeocd",
    ["snk-ngcd"] = "neogeocd",
    ["snk_ngcd"] = "neogeocd",
    ["snk-neogeocd"] = "neogeocd",
    ["snk_neogeocd"] = "neogeocd",
    ["snk_neo_geo_cd"] = "neogeocd",
    ["arcade_neogeocd"] = "neogeocd",
    ["arcade-neogeocd"] = "neogeocd",
    ["arc-neogeocd"] = "neogeocd",
    ["arc_neogeocd"] = "neogeocd",
    ["snkneogeocd"] = "neogeocd",
    ["ngp"] = "ngpc",
    ["ngpc"] = "ngpc",
    ["neogeo pocket"] = "ngpc",
    ["neogeo pocket color"] = "ngpc",
    ["neo geo pocket"] = "ngpc",
    ["neo geo pocket color"] = "ngpc",
    ["snk neogeo pocket"] = "ngpc",
    ["snk neogeo pocket color"] = "ngpc",
    ["snk neo geo pocket"] = "ngpc",
    ["snk neo geo pocket color"] = "ngpc",
    ["snk - neogeo pocket"] = "ngpc",
    ["snk - neogeo pocket color"] = "ngpc",
    ["snk - neo geo pocket"] = "ngpc",
    ["snk - neo geo pocket color"] = "ngpc",
    ["ngpocket"] = "ngpc",
    ["ngpocketcolor"] = "ngpc",
    ["neogeopocketcolor"] = "ngpc",
    ["ng-pc"] = "ngpc",
    ["ng_pc"] = "ngpc",
    ["snk-ngpc"] = "ngpc",
    ["snk-ngp"] = "ngpc",
    ["snk_ngpc"] = "ngpc",
    ["snk_ngp"] = "ngpc",
    ["ps"] = "psx",
    ["ps1"] = "psx",
    ["psx"] = "psx",
    ["playstation"] = "psx",
    ["sony playstation"] = "psx",
    ["sony - playstation"] = "psx",
    ["sony - ps1"] = "psx",
    ["sony - psx"] = "psx",
    ["sony - ps"] = "psx",
    ["sony_ps"] = "psx",
    ["sony_ps1"] = "psx",
    ["sony_psx"] = "psx",
    ["sony_playstation"] = "psx",
    ["sony-ps"] = "psx",
    ["sony-ps1"] = "psx",
    ["sony-psx"] = "psx",
    ["sony-playstation"] = "psx",
    ["pcsx"] = "psx",
    ["swanstation"] = "psx",
    ["epsxe"] = "psx",
    ["pbps"] = "psx",
    ["pbp"] = "psx",
    ["playstation chds"] = "psx",
    ["playstation pbps"] = "psx",
    ["ps-chd"] = "psx",
    ["ps-pbp"] = "psx",
    ["ps-isos"] = "psx",
    ["ps_pbp"] = "psx",
    ["ps_chd"] = "psx",
    ["ps_iso"] = "psx",
    ["psx-chd"] = "psx",
    ["psx-pbp"] = "psx",
    ["psx-iso"] = "psx",
    ["psx_pbp"] = "psx",
    ["psx_chd"] = "psx",
    ["ps-chds"] = "psx",
    ["ps-pbps"] = "psx",
    ["ps_pbps"] = "psx",
    ["ps_chds"] = "psx",
    ["ps_isos"] = "psx",
    ["psx-chds"] = "psx",
    ["psx-pbps"] = "psx",
    ["psx-isos"] = "psx",
    ["psx_pbps"] = "psx",
    ["psx_chds"] = "psx",
    ["psx_isos"] = "psx",
    ["psp"] = "psp",
    ["playstation portable"] = "psp",
    ["sony psp"] = "psp",
    ["sony playstation portable"] = "psp",
    ["sony - psp"] = "psp",
    ["sony - playstation portable"] = "psp",
    ["sony-psp"] = "psp",
    ["sony_psp"] = "psp",
    ["playstationportable"] = "psp",
    ["ppsspp"] = "psp",
    ["tic-80"] = "tic80",
    ["tic80"] = "tic80",
    ["watara supervision"] = "supervision",
    ["supervision"] = "supervision",
    ["watara - supervision"] = "supervision",
    ["zxs"] = "zxspectrum",
  }
}

return muos
