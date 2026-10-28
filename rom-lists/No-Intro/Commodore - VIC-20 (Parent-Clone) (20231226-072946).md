# VIC-20 curation

<p align="center">
  <strong>69.0% smaller</strong><br>
  310 catalogue ROMs → <strong>96 selected ROMs</strong><br>
  <strong>93 games</strong>
</p>

## Intent

A generous cartridge collection for a small machine with a surprisingly lively games library. Gridrunner, Omega Race, Capture the Flag, Lode Runner and the stronger arcade conversions are the anchors. Around them, keep inventive action games, approachable discoveries and a few revealing curiosities.

This is a selection from the installed cartridge DAT, not a complete survey of VIC-20 gaming. Tape releases and later games outside this catalogue need a complementary list. The 310-ROM denominator includes BIOS files, utilities and alternative releases; it does not mean 310 distinct games.

There are 93 selected games across 96 files. Cannonball Blitz, K-Razy Antiks and Lunar Leeper each have two ROM parts, and both parts are included. Those extra files are components, not extra games.

## What earns a place

| Strand | Examples | Why keep it |
|---|---|---|
| Defining originals | Gridrunner, Attack of the Mutant Camels, Lazer Zone, Capture the Flag | Distinctive ideas and ambitious play that make the VIC worth exploring on its own terms. |
| Arcade anchors | Omega Race, Donkey Kong, Dig Dug, Ms. Pac-Man, Frogger, Gorf | Recognisable starting points, with different movement and scoring challenges. |
| Platform and exploration | Lode Runner, Miner 2049'er, Pharaoh's Curse, Mountain King, Shamus | Longer challenges alongside the short score chasers. These reward learning layouts and movement. |
| Rescue and navigation | Choplifter, Lunar Leeper, River Rescue, Seafox | More to think about than simply firing at everything on screen. |
| Fast shooting | Demon Attack, Turmoil, A.E., Bandits, Star Battle, Skyblazer, Threshold | Varied patterns, pressure and spatial demands. |
| Unusual action | Serpentine, Pipes, Garden Wars, Money Wars, Tooth Invaders | Smaller games with an identifiable hook rather than another familiar licence. |
| Discoveries | Creepy Corridors, Fast Eddie, Alien Blitz, Robot Panic, Trashman | Games worth encountering while browsing, even when they are less celebrated than the anchors. |
| Driving and climbing | Moon Patrol, Pole Position, Motocross Racer, Spike's Peak | A change of rhythm from maze games and shooters. |

Capture the Flag is an especially valuable inclusion: a first-person maze pursuit game adds something different to the collection. Its computer opponent means it is not dependent on arranging a second player.

The list is broad rather than ruthless. Congo Bongo, Sir Lancelot, Ghost Manor and Motocross Racer are qualified inclusions, not endorsements of the same strength as Omega Race. Their variety earns them room. Conversely, a recognisable title alone is insufficient: Chuck Norris Superkicks and E.T. are omitted.

Some familiar concepts appear more than once. Pac-Man, Ms. Pac-Man, Jelly Monsters and Cosmic Cruncher stay because exploring the machine's maze-game interpretations is part of the appeal. That is intentional breadth, rather than a rule to collect every similar game. Likewise, Amok! and Super Amok remain separate selections; a sequel is not automatically a redundant regional duplicate.

## Release decisions

- Use one release per DAT parent/clone group, without alternative dumps. Where the DAT offers Europe and Japan/USA versions, select Europe; otherwise use the available World or English release. This keeps a consistent PAL preference without excluding games released elsewhere.
- Select **Clowns (Joystick)**, not the paddle version. The DAT explicitly distinguishes the control schemes.
- **Attack of the Mutant Camels** here is **Matrix / Gridrunner II**, the grid-based follow-up. It is not the horizontally scrolling C64 game about shooting giant camels.
- Keep **Defender (v1.1)** and the ordinary, unnumbered alternatives for titles such as Miner 2049'er, Pharaoh's Curse and Capture the Flag. An Alt tag alone is not evidence of a better release.
- Keep the DAT extensions exactly: `.a0`, `.60`, `.20` and `.bin` are meaningful to cartridge handling. They are not cosmetic substitutes for a universal ROM extension.
- No BIOS ROMs, programming tools, educational packages, prototypes or marked bad dumps are selected. In particular, the catalogue's `[b]` Space Ric-O-Shay is excluded.

## Cartridge parts and controls

**This manifest preserves the verified cartridge parts; it does not configure their launch.** The simple copy helper can deliver the files, but it does not arrange simultaneous cartridge attachments or create a combined container.

| Cartridge | Parts that belong together |
|---|---|
| Cannonball Blitz | `.20` and `.a0` |
| K-Razy Antiks | `.60` and `.a0` |
| Lunar Leeper | `.20` and `.a0` |

The address-style extensions identify where parts belong in memory. A deployment must preserve that information and attach every part of the selected cartridge. Do not treat the second part as a second launchable game, or assume copying both files makes the launcher combine them. VICE also supports cartridge containers, but preparing one is a separate deployment decision.

Expect some games to need a keyboard action to start or choose options. Wacky Waiters explicitly carries **SYS 48896** in its DAT name; keep the game, while retaining that startup information. Capture the Flag's movement scheme and Lazer Zone's multiple firing directions also deserve their instructions and suitable button mappings. Curation does not imply that the installed NextUI emulator has been tested with each file.

The Scott Adams adventures are held despite their historical importance: typing commands is a substantial part of playing them. IFR and Submarine Commander are also outside this approachable handheld selection. Sargon II Chess is a possible later addition for someone specifically wanting chess, rather than an automatic inclusion because it is a respected program. Typing tutors, school exercises and music or drawing packages do not serve this collection's purpose.

## Sources informing the choices

- [Jeff Minter's A History of Llamasoft](https://s3.amazonaws.com/lsshop/AHistoryofLlamasoft.pdf): the developer's account of Gridrunner, its successors and their confusing names.
- [Electronic Games' 1984 software guide](https://www.ataricompendium.com/archives/magazines/electronic_games/electronic_games_1984_software.pdf): contemporary play and control assessments, including Robot Panic and Sargon II.
- [Retro Games' game instructions, including Capture the Flag](https://cdnc.heyzine.com/files/uploaded/d610c5ff9495b465a6c86cb3d2d3403d1db11800.pdf): movement, game modes and the computer opponent.
- [VICE manual: VIC-20 cartridge handling](https://vice-emu.sourceforge.io/vice_7.html): address-based images, multipart cartridges and manual startup commands.
- [VICE cartridge format specification](https://vice-emu.sourceforge.io/vice_17.html): the memory blocks represented by VIC-20 cartridge containers.
