$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
. (Join-Path $projectRoot 'tools\copy-manifest.ps1')

$systems = @(
    # @{ Dat = 'FBNeo\FinalBurn Neo (ClrMame Pro XML, Arcade only).dat'; Folder = 'Arcade (FBN)' }
    # @{ Dat = 'No-Intro\Amstrad - CPC (Misc) (Parent-Clone) (20230406-091045).dat'; Folder = 'Amstrad CPC (CPC)' }
    # @{ Dat = 'No-Intro\Atari - Atari 2600 (Parent-Clone) (20261024-053438).dat'; Folder = 'Atari 2600 (A2600)' }
    # @{ Dat = 'No-Intro\Atari - Atari 5200 (Parent-Clone) (20260412-121350).dat'; Folder = 'Atari 5200 (A5200)' }
    # @{ Dat = 'No-Intro\Atari - Atari 7800 (BIN) (Parent-Clone) (20260903-044143).dat'; Folder = 'Atari 7800 (A7800)' }
    # @{ Dat = 'No-Intro\Atari - Atari Lynx (LYX) (Parent-Clone) (20260625-122811).dat'; Folder = 'Atari Lynx (LYNX)' }
    # @{ Dat = 'No-Intro\Coleco - ColecoVision (Parent-Clone) (20260710-180934).dat'; Folder = 'Colecovision (COLECO)' }
    # @{ Dat = 'No-Intro\Commodore - Amiga (Parent-Clone) (20260817-003537).dat'; Folder = 'Amiga (PUAE)' }
    # @{ Dat = 'No-Intro\Commodore - Commodore 64 (Parent-Clone) (20261024-051621).dat'; Folder = 'Commodore 64 (C64)' }
    # @{ Dat = 'No-Intro\Commodore - Plus-4 (Parent-Clone) (20090105-000000).dat'; Folder = 'Commodore Plus4 (PLUS4)' }
    # @{ Dat = 'No-Intro\Commodore - VIC-20 (Parent-Clone) (20231226-072946).dat'; Folder = 'Commodore VIC20 (VIC)' }
    # @{ Dat = 'No-Intro\Microsoft - MSX (Parent-Clone) (20260618-055428).dat'; Folder = 'Microsoft MSX (MSX)' }
    # @{ Dat = 'No-Intro\Microsoft - MSX2 (Parent-Clone) (20261025-205303).dat'; Folder = 'Microsoft MSX (MSX)' }
    # @{ Dat = 'No-Intro\NEC - PC Engine - TurboGrafx-16 (Parent-Clone) (20260124-120557).dat'; Folder = 'TurboGrafx-16 (PCE)' }
    # @{ Dat = 'No-Intro\Nintendo - Family Computer Disk System (FDS) (Parent-Clone) (20261020-110152).dat'; Folder = 'Famicom Disk System (FDS)' }
    # @{ Dat = 'No-Intro\Nintendo - Game Boy (Parent-Clone) (20261024-134731).dat'; Folder = 'Game Boy (GB)' }
    # @{ Dat = 'No-Intro\Nintendo - Game Boy (Parent-Clone) (20261024-134731).dat'; Folder = 'Super Game Boy (SGB)' }
    # @{ Dat = 'No-Intro\Nintendo - Game Boy Advance (Parent-Clone) (20261025-113312).dat'; Folder = 'Game Boy Advance (GBA)' }
    # @{ Dat = 'No-Intro\Nintendo - Game Boy Color (Parent-Clone) (20261026-034426).dat'; Folder = 'Game Boy Color (GBC)' }
    # @{ Dat = 'No-Intro\Nintendo - Nintendo Entertainment System (Headered) (Parent-Clone) (20261025-205653).dat'; Folder = 'Nintendo Entertainment System (FC)' }
    # @{ Dat = 'No-Intro\Nintendo - Pokemon Mini (Parent-Clone) (20260529-125415).dat'; Folder = 'Pokémon mini (PKM)' }
    # @{ Dat = 'No-Intro\Nintendo - Super Nintendo Entertainment System (Parent-Clone) (20261023-215722).dat'; Folder = 'Super Nintendo Entertainment System (SFC)' }
    # @{ Dat = 'No-Intro\Nintendo - Super Nintendo Entertainment System (Parent-Clone) (20261023-215722).dat'; Folder = 'Super Nintendo Entertainment System (SUPA)' }
    # @{ Dat = 'No-Intro\Nintendo - Virtual Boy (Parent-Clone) (20260804-192036).dat'; Folder = 'Virtual Boy (VB)' }
    # @{ Dat = 'No-Intro\Sega - 32X (Parent-Clone) (20261010-152927).dat'; Folder = 'Sega 32X (32X)' }
    # @{ Dat = 'No-Intro\Sega - Game Gear (Parent-Clone) (20261023-073103).dat'; Folder = 'Sega Game Gear (GG)' }
    # @{ Dat = 'No-Intro\Sega - Master System - Mark III (Parent-Clone) (20261013-064924).dat'; Folder = 'Sega Master System (SMS)' }
    # @{ Dat = 'No-Intro\Sega - Mega Drive - Genesis (Parent-Clone) (20261025-103445).dat'; Folder = 'Sega Genesis (MD)' }
    # @{ Dat = 'No-Intro\Sega - SG-1000 - SC-3000 (Parent-Clone) (20231205-110448).dat'; Folder = 'Sega SG-1000 (SG1000)' }
    # @{ Dat = 'No-Intro\SNK - NeoGeo Pocket (Parent-Clone) (20250904-215533).dat'; Folder = 'Neo Geo Pocket (NGP)' }
    # @{ Dat = 'No-Intro\SNK - NeoGeo Pocket Color (Parent-Clone) (20260919-122044).dat'; Folder = 'Neo Geo Pocket Color (NGPC)' }
    # @{ Dat = 'TOSEC\Amstrad CPC - Games - [DSK] (TOSEC-v2025-01-15_CM).dat'; Folder = 'Amstrad CPC (CPC)' }
    # @{ Dat = 'TOSEC\Commodore C128 - Games - [D64] (TOSEC-v2025-01-15_CM).dat'; Folder = 'Commodore 128 (C128)' }
    # @{ Dat = 'TOSEC\Commodore C128 - Games - [D71] (TOSEC-v2025-01-15_CM).dat'; Folder = 'Commodore 128 (C128)' }
    # @{ Dat = 'TOSEC\Commodore C128 - Games - [PRG] (TOSEC-v2025-01-15_CM).dat'; Folder = 'Commodore 128 (C128)' }
    # @{ Dat = 'TOSEC\Commodore PET - Games - [D64] (TOSEC-v2024-01-15_CM).dat'; Folder = 'Commodore PET (PET)' }
    # @{ Dat = 'TOSEC\Commodore PET - Games - [PRG] (TOSEC-v2025-01-15_CM).dat'; Folder = 'Commodore PET (PET)' }

    # @{ Dat = $null; Folder = 'Pico-8 (P8)' } # TODO: choose DAT and build recipe for pico-8
    # @{ Dat = $null; Folder = 'Doom (PRBOOM)' } # TODO: choose DAT and build recipe for doom
)

foreach ($system in $systems) {
    if (-not $system.Dat) { throw "$($system.Folder) needs a DAT and deployment recipe configured before it can be enabled." }
    $dat = Join-Path $projectRoot "rom-dats\$($system.Dat)"
    if (-not (Test-Path -LiteralPath $dat -PathType Leaf)) { throw "DAT not found: $dat" }
    $catalogue = [IO.Path]::Combine([IO.Path]::GetDirectoryName($system.Dat), [IO.Path]::GetFileNameWithoutExtension($system.Dat))
    $source = Join-Path $projectRoot "rom-verified\$catalogue"
    $destination = Join-Path $projectRoot "rom-deploy\NextUI\Roms\$($system.Folder)"
    $manifest = Join-Path $projectRoot "rom-lists\$catalogue.txt"
    $missingReport = Join-Path $projectRoot "reports\missing\deploy-nextui\$catalogue.txt"

    Write-Output "Deploying $($system.Dat) to $($system.Folder)"
    Copy-ManifestFiles -SourceFolder $source -DestinationFolder $destination -ManifestFile $manifest -MissingReport $missingReport
}

