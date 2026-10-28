$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
. (Join-Path $projectRoot 'tools\write-missing-report.ps1')

$dats = @(
    # 'FBNeo\FinalBurn Neo (ClrMame Pro XML, Arcade only).dat'
    # 'No-Intro\Amstrad - CPC (Misc) (Parent-Clone) (20230406-091045).dat'
    # 'No-Intro\Atari - Atari 2600 (Parent-Clone) (20261024-053438).dat'
    # 'No-Intro\Atari - Atari 5200 (Parent-Clone) (20260412-121350).dat'
    # 'No-Intro\Atari - Atari 7800 (BIN) (Parent-Clone) (20260903-044143).dat'
    # 'No-Intro\Atari - Atari Lynx (LYX) (Parent-Clone) (20260625-122811).dat'
    # 'No-Intro\Coleco - ColecoVision (Parent-Clone) (20260710-180934).dat'
    # 'No-Intro\Commodore - Amiga (Parent-Clone) (20260817-003537).dat'
    # 'No-Intro\Commodore - Commodore 64 (Parent-Clone) (20261024-051621).dat'
    # 'No-Intro\Commodore - Plus-4 (Parent-Clone) (20090105-000000).dat'
    # 'No-Intro\Commodore - VIC-20 (Parent-Clone) (20231226-072946).dat'
    # 'No-Intro\Microsoft - MSX (Parent-Clone) (20260618-055428).dat'
    # 'No-Intro\Microsoft - MSX2 (Parent-Clone) (20261025-205303).dat'
    # 'No-Intro\NEC - PC Engine - TurboGrafx-16 (Parent-Clone) (20260124-120557).dat'
    # 'No-Intro\Nintendo - Family Computer Disk System (FDS) (Parent-Clone) (20261020-110152).dat'
    # 'No-Intro\Nintendo - Game Boy (Parent-Clone) (20261024-134731).dat'
    # 'No-Intro\Nintendo - Game Boy Advance (Parent-Clone) (20261025-113312).dat'
    # 'No-Intro\Nintendo - Game Boy Color (Parent-Clone) (20261026-034426).dat'
    # 'No-Intro\Nintendo - Nintendo Entertainment System (Headered) (Parent-Clone) (20261025-205653).dat'
    # 'No-Intro\Nintendo - Pokemon Mini (Parent-Clone) (20260529-125415).dat'
    # 'No-Intro\Nintendo - Super Nintendo Entertainment System (Parent-Clone) (20261023-215722).dat'
    # 'No-Intro\Nintendo - Virtual Boy (Parent-Clone) (20260804-192036).dat'
    # 'No-Intro\Sega - 32X (Parent-Clone) (20261010-152927).dat'
    # 'No-Intro\Sega - Game Gear (Parent-Clone) (20261023-073103).dat'
    # 'No-Intro\Sega - Master System - Mark III (Parent-Clone) (20261013-064924).dat'
    # 'No-Intro\Sega - Mega Drive - Genesis (Parent-Clone) (20261025-103445).dat'
    # 'No-Intro\Sega - SG-1000 - SC-3000 (Parent-Clone) (20231205-110448).dat'
    # 'No-Intro\SNK - NeoGeo Pocket (Parent-Clone) (20250904-215533).dat'
    # 'No-Intro\SNK - NeoGeo Pocket Color (Parent-Clone) (20260919-122044).dat'
    # 'TOSEC\Amstrad CPC - Games - [DSK] (TOSEC-v2025-01-15_CM).dat'
    # 'TOSEC\Commodore C128 - Games - [D64] (TOSEC-v2025-01-15_CM).dat'
    # 'TOSEC\Commodore C128 - Games - [D71] (TOSEC-v2025-01-15_CM).dat'
    # 'TOSEC\Commodore C128 - Games - [PRG] (TOSEC-v2025-01-15_CM).dat'
    # 'TOSEC\Commodore PET - Games - [D64] (TOSEC-v2024-01-15_CM).dat'
    # 'TOSEC\Commodore PET - Games - [PRG] (TOSEC-v2025-01-15_CM).dat'
)

foreach ($relativeDat in $dats) {
    $dat = Join-Path $projectRoot "rom-dats\$relativeDat"
    if (-not (Test-Path -LiteralPath $dat -PathType Leaf)) { throw "DAT not found: $dat" }
    $catalogue = [IO.Path]::Combine([IO.Path]::GetDirectoryName($relativeDat), [IO.Path]::GetFileNameWithoutExtension($relativeDat))
    $source = Join-Path $projectRoot "rom-sources\$catalogue"
    $verified = Join-Path $projectRoot "rom-verified\$catalogue"
    # Sources are an optional inbox; the verified catalogue is also an input.
    [IO.Directory]::CreateDirectory($source) | Out-Null
    $inputFolders = @($source, $verified | Where-Object { Test-Path -LiteralPath $_ -PathType Container })
    $report = Join-Path $projectRoot "reports\local\$catalogue.csv"
    $temporaryReport = Join-Path (Split-Path $report -Parent) "$([guid]::NewGuid().ToString('N')).csv"
    New-Item -ItemType Directory -Path (Split-Path $report -Parent) -Force | Out-Null

    # FBNeo publishes CRC32 hashes; the other catalogues use SHA1.
    $checksumMinimum = if ($relativeDat.StartsWith('FBNeo\')) { 'CRC32' } else { 'SHA1' }
    & (Join-Path $projectRoot 'tools\igir.exe') copy zip test report --dat $dat --input $inputFolders --input-checksum-min $checksumMinimum --merge-roms fullnonmerged --output $verified --report-output $temporaryReport
    if ($LASTEXITCODE -ne 0) { throw "$relativeDat build failed with exit code $LASTEXITCODE" }

    $rows = @(Import-Csv -LiteralPath $temporaryReport)
    if (-not $rows.Count -or 'Status' -notin $rows[0].PSObject.Properties.Name) { throw "Invalid Igir report: $temporaryReport" }
    [xml]$database = Get-Content -LiteralPath $dat -Raw
    $games = @{}
    foreach ($game in $database.datafile.game) { $games[$game.name] = $game }
    $missingFiles = @(foreach ($row in $rows | Where-Object Status -eq 'MISSING') {
        $game = $games[$row.'Game Name']
        if (-not $game) { throw "Missing report entry not found in DAT: $($row.'Game Name')" }
        # Arcade chip filenames overlap between sets; report the deployable set ZIP instead.
        if ($relativeDat.StartsWith('FBNeo\')) { "$($game.name).zip" }
        else { foreach ($rom in $game.rom) { [string]$rom.name } }
    })
    Move-Item -LiteralPath $temporaryReport -Destination $report -Force
    Write-MissingReport -Path (Join-Path $projectRoot "reports\missing\library\$catalogue.txt") -Files $missingFiles
    Write-Output "$relativeDat`: $($missingFiles.Count) missing catalogue ROMs."
}

