# Redump DATs

Disc catalogues and their supporting files. Keep each DAT's original filename, including its snapshot information.

## PlayStation

The PlayStation DAT, CUE collection and SBI collection come from the **2026-10-27 23-02-45** snapshot downloaded from [redump.info](https://redump.info/downloads).

| Item | Purpose |
|---|---|
| `Sony - PlayStation - Datfile (10982) (2026-10-27 23-02-45).dat` | Filenames and checksums for 10,982 disc entries, including regional variants, revisions and individual discs of multidisc games. |
| `Sony - PlayStation - Cuesheets (10982) (2026-10-27 23-02-45).zip` | 10,982 CUE sheets describing the matching BIN tracks and their layout. Kept archived to avoid thousands of individual repository files. |
| `sbi/` | 235 SBI files supplying subchannel information needed by certain protected PlayStation games. |

This DAT includes CUE checksums as well as BIN-track checksums. Library building therefore needs the supplied CUE ZIP as an additional Igir input alongside the user's disc dumps. Igir reads the archive directly; no separate extraction step is needed. A CUE sheet describes tracks; it does not contain their game or audio data.

Deployment must keep each selected disc's CUE and BIN tracks together, and include its SBI file where required. Multidisc games also need an appropriate launch arrangement, such as an M3U playlist. The flat copy manifest alone does not assemble these relationships.

Update the DAT and its supporting collections together. Preserve the matching filenames when selecting CUEs from the archive and SBI files from `sbi/`; a different disc revision may need different supporting data.
