# Arcade / FBNeo selection

<p align="center">
  <strong>94.8% smaller</strong><br>
  8,047 catalogue sets → <strong>416 selected sets</strong><br>
  411 games + 5 BIOS / support sets
</p>

## Approach

A broad arcade collection for a handheld: familiar classics, strong genre coverage and discoveries worth trying. Selection favours games built around a joystick and buttons, with enjoyable solo play. This is editorial curation, not a ranking or a claim that every game has been tested on the Brick.

| Area | Examples |
|---|---|
| Early arcade classics | Pac-Man, Ms. Pac-Man, Galaga, Donkey Kong, Frogger, Dig Dug, Q*bert, Joust, Asteroids, Defender |
| Platform and action | Bubble Bobble, Rainbow Islands, Shinobi, Strider, Black Tiger, Toki, Wonder Boy in Monster Land, Osman, Psychic 5 |
| Beat-'em-ups | Final Fight, Alien vs. Predator, Cadillacs and Dinosaurs, Battle Circuit, Dungeons & Dragons, Guardians, Ninja Baseball Bat Man, The Simpsons |
| Run-and-gun | Contra, Super Contra, Metal Slug, Shock Troopers, Sunset Riders, Mystic Warriors, Out Zone, Gunforce II |
| Shooters | R-Type, Gradius, Darius Gaiden, Raiden Fighters, Battle Garegga, Batrider, Batsugun, DoDonPachi, ESP Ra.De., Progear, Pulstar |
| Fighters | Street Fighter II, Alpha and III; Darkstalkers; Marvel crossovers; Garou; Samurai Shodown; The Last Blade; selected King of Fighters entries |
| Puzzle and short sessions | Puzzle Bobble, Magical Drop, Money Puzzle Exchanger, Puyo Puyo, Cleopatra Fortune, Pang, Snow Bros., Tumble Pop, Neo Bomberman |
| Sports and racing | Windjammers, Neo Turf Masters, Baseball Stars 2, NBA Jam, WWF WrestleFest, Super Sidekicks 3, Neo Drift Out, Over Top |

## Release decisions

- One ordinary release per game, normally an English-friendly World, European or US set. Japanese releases remain where the action is accessible without reading much text. Bootlegs, hacks, prototypes, gambling games, quiz catalogues and mahjong are excluded.
- Prefer two-player character-select versions of Teenage Mutant Ninja Turtles, Turtles in Time, The Simpsons, X-Men, Sunset Riders and Vendetta. Four-player cabinet versions can tie the chosen character to the player slot. Full non-merged builds allow these clone sets to be selected without also deploying their parent games.
- Bubble Bobble uses the US revision; Undercover Cops uses the World Alpha Renewal version, preserving the expanded mechanics absent from the original World release. Gradius and Nemesis are represented once, by Gradius. Rainbow Islands uses the ordinary game rather than Extra Version.
- Metal Slug X represents the revised Metal Slug 2 experience; Metal Slug 2 is omitted. Metal Slug 4 is omitted in favour of stronger series entries. King of Fighters is represented broadly, but 2001 is omitted. Breakers Revenge represents Breakers.
- Street Fighter II, Champion Edition, Hyper Fighting and Super Turbo are deliberate gameplay variants. Alpha and Street Fighter III sequels, Fatal Fury branches and Samurai Shodown sequels also retain meaningful differences. This is not a strict one-game-per-series list.
- Vertical shooters are included despite their smaller image on a landscape handheld. Original multi-screen Darius games are omitted in favour of single-screen Darius Gaiden. Later Cave CV1000 games, including Deathsmiles and DoDonPachi Dai-Fukkatsu, are left out of this handheld-focused selection.
- Lightgun, spinner, trackball, rotary-stick and steering-wheel showcases are outside the selection: for example Arkanoid, Tempest, Marble Madness, Heavy Barrel and Out Run. Conventional overhead racers remain. Defender and Stargate's crowded controls favour Defender as the single representative; it still merits a custom mapping.
- Six-button fighters and demanding boards such as CPS3, PGM, later Psikyo and Seibu remain worthwhile selections, with performance and control comfort to establish on the device. Inclusion is not a full-speed compatibility claim.

## Arcade filenames and support

The manifest lists exact set ZIP names, such as `mslug.zip`, rather than the individual ROM chips listed inside a DAT game. Keep those names unchanged. NextUI can use `map.txt` for readable display names; that is a separate presentation step.

The five support entries are `neogeo.zip`, `pgm.zip`, `cchip.zip`, `nmk004.zip` and `midssio.zip`. They correspond to BIOS or device dependencies of the selected games and are not additional playable games. Keeping them explicitly also accommodates emulator BIOS lookup; the library builder produces full non-merged game ZIPs with their ROM dependencies included.

External sound samples are separate from this ROM manifest. Some early games, including Donkey Kong, use samples for parts of their audio. NextUI expects these under `Bios/FBN/fbneo/samples/`; they should not replace game ZIPs or be mixed into the verified ROM catalogue.

## References

- [NextUI: ROMs and Arcade / FBNeo](https://nextui.loveretro.games/getting-started/roms/) — original set names, BIOS placement, samples and version matching.
- [Libretro: FinalBurn Neo](https://docs.libretro.com/library/fbneo/) — core controls and mapping options.
- [Racketboy: The Best Undiscovered Beat-'Em-Ups](https://racketboy.com/retro/the-best-undiscovered-beat-em-ups) — discovery reference for selections such as Guardians, Bucky O'Hare, Armored Warriors, Sengoku 3 and Undercover Cops. The wider selection is editorial judgement, not a reproduction of that article's recommendations.
- [Pinned FBNeo DAT notes](../../rom-dats/FBNeo/README.md) — the catalogue matched to the installed NextUI release.
