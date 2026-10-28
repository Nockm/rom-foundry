# SuperGrafx curation

<p align="center">
  <strong>16.7% smaller</strong><br>
  6 catalogue entries → <strong>5 curated games</strong>
</p>

## Intent

Keep the five original SuperGrafx-exclusive retail games. This is a tiny catalogue with enough variety to retain the weaker entries as qualified curiosities, rather than forcing a large reduction for its own sake.

The strongest reasons to prepare SuperGrafx are Daimakaimura, 1941 and Aldynes. Granzort adds a different style of action, while Battle Ace earns its place as a brief look at the machine's launch-era ambitions. Inclusion does not imply equal quality.

## The selection

| DAT title | Why keep it |
|---|---|
| Daimakaimura | Ghouls 'n Ghosts under its Japanese title. The main action-platforming attraction, with a substantial challenge and a celebrated arcade conversion to explore. |
| 1941 - Counter Attack | The vertical shooter and another major reason to visit the system. Distinct from 1942, rather than a regional name for it. |
| Aldynes - The Misson Code for Rage Crisis | A demanding horizontal shooter that gives the collection another substantial arcade challenge. |
| Madou King Granzort | A qualified action-platforming inclusion, with three selectable forms providing its central hook. Worth exploring even though it is not one of the strongest reasons to own the system. |
| Battle Ace | A qualified curiosity: cockpit-view arcade shooting and a different rhythm from the other four games. Keep for variety and context, without presenting it as a hidden masterpiece. |

## Release decisions

- Use the single ordinary Japanese retail entry for each game. Four carry an English tag in this DAT; 1941's absence of that tag is not a reason to exclude an approachable arcade shooter.
- Keep the exact `.sgx` filenames, including the DAT's spelling **Misson** in Aldynes. Correcting a catalogue typo belongs in display metadata, not the manifest.
- Exclude **Axelay (Demo) (Aftermarket) (Unl)**. It is a later demonstration, not a sixth completed original retail game.
- The existing PC Engine list already includes the compatible Darius Plus release. Do not duplicate it here merely because it benefits from SuperGrafx hardware. The SuperGrafx-exclusive games remain in this separate DAT-based list.

## Deployment boundary

These games require SuperGrafx emulation. A PC Engine folder or a familiar-looking HuCard filename does not establish that the installed emulator supports them.

NextUI's pak catalogue lists SuperGrafx emulator additions, but the emulator pak and matching ROM folder must be confirmed before deployment. The README therefore records the curation with its folder unassigned. No deployment mapping is enabled by this list.

Beetle SuperGrafx documents `.sgx` support. Retain that extension and use a compatible emulator, rather than renaming files to imply ordinary PC Engine compatibility. Normal directional controls and the standard action buttons suit the games; their difficulty, rather than text entry, is the main accessibility consideration.

## Sources informing the choices

- [Hardcore Gamer's SuperGrafx feature, preserved by Defunct Games](https://www.yumpu.com/en/document/view/7044688/worth-importing-defunct-games/30): firsthand assessment of the small library and its strongest arcade games.
- [NextUI pak catalogue](https://github.com/LoveRetro/nextui-pak-store/blob/main/storefront_base.json): the separately listed SuperGrafx emulator additions.
- [Beetle SuperGrafx documentation](https://docs.libretro.com/library/beetle_sgx/): supported formats and SuperGrafx emulation behaviour.
