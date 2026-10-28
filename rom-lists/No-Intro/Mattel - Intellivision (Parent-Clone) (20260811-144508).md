# Intellivision curation

<p align="center">
  <strong>74.9% smaller</strong><br>
  315 catalogue ROMs → <strong>79 curated games</strong>
</p>

## Intent

A broad collection that gives Intellivision its own identity: BurgerTime, Diner, Thunder Castle, Shark! Shark!, Night Stalker, Astrosmash and Worm Whomper are anchors. Add worthwhile arcade conversions, unusual adventures and a selection of the later sports games with computer opponents.

The original controller is part of the decision. Its directional disc, side buttons and twelve-key pad cannot always be reduced to movement and one fire button. Retain important games that merit a deliberate mapping, but avoid filling the collection with multiplayer-only games or unexplained hardware dependencies.

The 315-ROM denominator includes BIOS files, prototypes, alternatives and aftermarket releases, including entries with more than one file. It is not 315 distinct original retail games. Every selected game uses one `.int` file.

## What earns a place

| Strand | Examples | Why keep it |
|---|---|---|
| Defining arcade play | BurgerTime, Diner, Thunder Castle, Shark! Shark!, Astrosmash, Night Stalker | Distinctive, repeatable games that make the collection worth preparing. |
| Strong shooting | Beamrider, Worm Whomper, The Dreadnaught Factor, Demon Attack, River Raid | Different movement and scoring demands rather than one repeated formula. |
| Puzzle and maze discoveries | Happy Trails, Loco-Motion, Lock 'N' Chase, Lady Bug, SNAFU | Varied planning and navigation challenges suited to shorter sessions. |
| Unusual action | Beauty & the Beast, Dracula, Microsurgeon, Safecracker, White Water! | Games with their own ideas, even when instructions or extra controls are needed. |
| Adventures | Advanced Dungeons & Dragons, Treasure of Tarmin, Tower of Doom, Swords & Serpents | Exploration and deeper sessions beyond score chasing. |
| Arcade conversions | Bump 'n' Jump, Dig Dug, Centipede, Pac-Man, Frogger, Popeye | Familiar starting points with enough variety to earn places. |
| Movement and sport | Mountain Madness, Stadium Mud Buggies, Chip Shot, Pinball, Spiker | Different rhythms and skills from the shooters and maze games. |
| Team sport | World Championship Baseball, Slam Dunk, Slap Shot, Super Pro Football, World Cup Soccer | Later options that make more sense for solo play than simply collecting the original head-to-head sports range. |
| Voice-assisted curiosities | B-17 Bomber, Space Spartans | Two distinctive uses of Intellivoice, retained with an explicit compatibility and control requirement. |
| Historical management | Utopia | An important change of pace, with a clear limitation on its solo experience. |

Not every selection is equally strong. Ice Trek, Kool-Aid Man, Pole Position and Star Strike remain qualified curiosities. They provide variety and context rather than competing with the anchors for a strongest-games ranking. Hover Force and Safecracker require more learning; reputation alone does not make their controls immediate.

## Release decisions

- **Auto Racing** uses **Screen-Relative Steering**, a deliberate choice over the alternative car-relative version for a handheld collection.
- **Pac-Man** uses the **INTV Corp.** release. It represents the game's parent/clone group without duplicating the Atarisoft entry.
- **Space Battle** uses v1.1; **Super Pro Football** uses the entry tagged Revision. **Thin Ice** uses the ordinary retail release, not Duncan's Thin Ice or a beta.
- Keep the ordinary original releases rather than the separate Intellivision Lives! variants. **Advanced Dungeons & Dragons** is also known through later rereleases as **Adventure** or **Cloudy Mountain**; its original DAT title is retained here.
- Mountain Madness represents the skiing games rather than automatically adding US Ski Team Skiing. Later solo-capable team-sport titles similarly take precedence over collecting each earlier licence.
- No prototypes, betas, diagnostic cartridges, demonstration cartridges, BIOS images or aftermarket releases are selected. Modern homebrew deserves a separate assessment rather than automatic inclusion.

Donkey Kong and Congo Bongo are omitted rather than included solely for familiar names. The original Donkey Kong Junior is also held. The strong selection of maze and platform games already gives this collection better starting points.

## Controls and qualified inclusions

**Night Stalker** needs separate firing directions as well as movement. **TRON Deadly Discs** similarly needs access to keypad-directed attacks. These are worth keeping, but a generic single-fire mapping loses an important part of play.

Treasure of Tarmin, Tower of Doom, Microsurgeon, Safecracker, Sub Hunt and the strategy or sports games need their manuals and keypad layouts. Some original games also assign a specific role to the other controller. Controller swapping can therefore matter even in a solo session.

**Utopia has no computer opponent.** Solo play can explore island management and score building, but it does not reproduce the full competitive game. Keep it as a deliberate historical exception, not as a conventional single-player strategy campaign.

**B-17 Bomber and Space Spartans require Intellivoice emulation.** Current FreeIntv source includes voice support, but that does not establish which version an installed NextUI pak contains. Voice and keypad operation must be confirmed for these two games before treating their deployment as ready. B-17 is also a more demanding control commitment than an arcade shooter. Bomb Squad and TRON Solar Sailer are held to avoid expanding this demanding part of the collection further.

FreeIntv provides a miniature keypad and a way to reuse a selected key. Its documentation also distinguishes the original disc's sixteen directions from ordinary eight-way D-pad movement. These facilities help, but an overlay image alone is not a finished handheld mapping. The selected games have not been individually tested on the installed pak.

## Deliberate holds and deployment

Armor Battle, Sea Battle, Boxing, Tennis and Triple Action are held as primarily head-to-head experiences. Their absence does not imply poor quality. The goal is a useful solo handheld collection, with Utopia's limited solo use explicitly acknowledged.

ECS-dependent software such as World Series Major League Baseball, Melody Blaster and the associated learning or programming packages is held. FreeIntv documents that ECS functionality is not emulated; ordinary firmware setup does not add it.

The NextUI pak catalogue lists an Intellivision FreeINTV addition. Use an INTV-tagged deployment folder with that pak and retain the DAT `.int` filenames. FreeIntv requires the Executive and Graphics firmware as separate emulator setup. This list neither installs the pak nor enables a deployment mapping.

## Sources informing the choices

- [Blue Sky Rangers: Astrosmash production history](https://history.blueskyrangers.com/mattelelectronics/games/astrosmash.html): the original development team's account.
- [Original Night Stalker instructions](https://history.blueskyrangers.com/instructions/nightstalker.html): its enemies, ammunition and control demands.
- [Original Utopia instructions](https://history.blueskyrangers.com/instructions/utopia.html): the island-management systems and two-controller design.
- [INTV Funhouse: Thunder Castle](https://intvfunhouse.com/games/thun.php): firsthand play assessment and preserved release information.
- [FreeIntv documentation](https://docs.libretro.com/library/freeintv/) and [upstream source documentation](https://github.com/libretro/FreeIntv): firmware, keypad handling, ECS limits and voice support.
- [NextUI Intellivision pak](https://github.com/K2Retro2nd/minui-intv-pak): the separate FreeINTV emulator addition.
