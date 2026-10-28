# Commodore 128 disk selection

<p align="center">
  <strong>86.7% smaller</strong><br>
  195 catalogue entries → <strong>26 selected disk images</strong><br>
  24 games, including both sides of two adventures
</p>

## Approach

A compact introduction to native C128 gaming rather than another C64 collection. Action and puzzles lead, with modern homebrew making a substantial contribution. These are editorial selections, not a ranking or a device-tested compatibility list.

| Area | Selections |
|---|---|
| Leading discoveries | Amaurote Isometric 128, Frantic Freddie II 128, QWAK Reset Edition 1.3 128 |
| Commercial-era interest | Kik-start 2, The Last V8, The Rocky Horror Show |
| Short-session puzzles | 4GRAVITY!, SOKO64+, Mah-Jongg Solitaire, Tetris80 |
| Arcade and small games | Alien Invaders, Blitz! 128, Burgerwhop, Maggot |
| Cross-Lib variety | Cross Bomber, Cross Chase, Cross Horde, Cross Shoot, Cross Shuriken, Cross Snake, Cross Stinger, Cross Trex |
| Keyboard-heavy exceptions | A Mind Forever Voyaging, Trinity |

A Mind Forever Voyaging and Trinity earn their places for their writing and exploration, despite being much less convenient on a handheld than the action games. They are exceptions rather than a commitment to include every Infocom release. Ultima V's substantial keyboard and disk-management demands, trivia, casino games and large strategy catalogues are outside this selection.

## Release decisions

- Prefer one edition per game and use the exact DAT filenames. Prefer an ordinary image or a labelled autoboot edition over alternate dumps and cracked variants. The catalogue's `[!]` label is retained on The Last V8; it is not a claim of independent testing here.
- Amaurote uses its VIC/40-column edition. The developer describes distinct native C128 VIC and VDC builds; the second display version is not a second game to deploy.
- Select the latest catalogued edition of each Cross-Lib game, normally in 40 columns. Cross Bomber and Cross Shoot use their catalogued 80-column editions. Do not include their development history, every CPU/display build, previews or turn-based alternatives. These are distinct games sharing a development framework, not eight versions of Cross Chase.
- Retain both Side A and Side B for A Mind Forever Voyaging and Trinity, with the autoboot Side A where catalogued. A side is not counted as another game.
- Keep the DAT's `Kik-start 2 (1985)` name. Do not silently substitute a similarly titled C64 image or infer that every C64 release belongs in the native C128 catalogue.
- D64 is the preferred container when the same game also appears in the PRG catalogue. The companion PRG list adds two different curiosities; the D71 list adds two modern text adventures. The three manifests form one selection without repeated game titles.

## Handheld considerations

Use native C128 mode rather than C64 mode. Games labelled `80 column` or `80col` need the VDC display; others may use the VIC display. Display selection, firmware, keyboard access and control mappings are deployment concerns to establish on the actual NextUI emulator. A D64 extension alone does not determine the required display.

Maggot uses numeric-keypad directions, so map those keys rather than assuming joystick input. The text adventures require sustained typing and readable text. The copy-only deployment step neither prepares those mappings nor automates disk-side changes.

## References

- [Elysium: Amaurote 64 & 128](https://elysium64.itch.io/amaurote) — native C128 editions and VIC/VDC differences.
- [CSDb: QWAK Reset Edition 1.3 128](https://csdb.dk/release/?id=158598) — release identity and native C128 confirmation by its developer.
- [CROSS-LIB: developer's introduction](https://github.com/Fabrizio-Caruso/CROSS-LIB/blob/master/docs/EnglishArticle.md) — background and game mechanics. Select versions from the pinned DAT, not unlisted newer releases.
- [Demozoo: Maggot](https://demozoo.org/productions/192904/) — quotes its author's description and numeric-keypad controls.
- [Lemon64: C128-tagged games](https://www.lemon64.com/games/list.php?list_tag=c128) — discovery reference; tags can include C128-enhanced C64 games, so the installed DAT defines this selection's boundaries.
