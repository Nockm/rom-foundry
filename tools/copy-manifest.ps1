. (Join-Path $PSScriptRoot 'write-missing-report.ps1')

function Copy-ManifestFiles {
    <#
    .SYNOPSIS
    Copies filenames listed one per line from a source folder to a destination.
    .DESCRIPTION
    Blank lines are ignored. Entries must be filenames, without directories.
    Existing destination files are overwritten; unlisted files are left alone.
    Missing files produce warnings and are counted in the returned summary.
    With MissingReport, missing filenames are written there instead of warned
    individually. The sorted report is replaced only after a completed run.
    Exact source filenames take priority, with same-stem ZIPs as a fallback.
    ZIPs are copied unchanged unless ExtractFromZip is set. When extracting,
    a non-ZIP manifest entry selects that exact archive entry; a ZIP manifest
    entry extracts all contents, preserving names and subdirectories.
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$SourceFolder,
        [Parameter(Mandatory)][string]$DestinationFolder,
        [Parameter(Mandatory)][string]$ManifestFile,
        [switch]$ExtractFromZip,
        [string]$MissingReport
    )

    $ErrorActionPreference = 'Stop'
    $source = (Resolve-Path -LiteralPath $SourceFolder).Path
    $destination = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($DestinationFolder)
    if ($source.TrimEnd('\', '/') -eq $destination.TrimEnd('\', '/')) {
        throw 'Source and destination folders must be different.'
    }
    $files = @(Get-Content -LiteralPath $ManifestFile |
        ForEach-Object { $_.Trim() } | Where-Object { $_ } | Select-Object -Unique)
    foreach ($file in $files) {
        if ($file -in @('.', '..') -or $file.IndexOfAny([IO.Path]::GetInvalidFileNameChars()) -ge 0) {
            throw "Manifest entries must be filenames without directories: $file"
        }
    }
    if ($ExtractFromZip) { Add-Type -AssemblyName System.IO.Compression.FileSystem }
    New-Item -ItemType Directory -Path $destination -Force | Out-Null

    $copied = 0
    $missing = 0
    $missingFiles = @()
    $expectedOutputs = @()
    foreach ($file in $files) {
        $inputName = $file
        $inputPath = Join-Path $source $inputName
        if (-not (Test-Path -LiteralPath $inputPath -PathType Leaf)) {
            $inputName = [IO.Path]::ChangeExtension($file, '.zip')
            $inputPath = Join-Path $source $inputName
        }
        if (-not (Test-Path -LiteralPath $inputPath -PathType Leaf)) {
            if (-not $MissingReport) { Write-Warning "Missing source file: $inputName" }
            $missingFiles += $file
            $missing++
            continue
        }
        if ($ExtractFromZip -and [IO.Path]::GetExtension($inputPath) -ieq '.zip') {
            $zip = [IO.Compression.ZipFile]::OpenRead($inputPath)
            try {
                $entries = if ([IO.Path]::GetExtension($file) -ieq '.zip') {
                    @($zip.Entries | Where-Object { $_.Name })
                } else { @($zip.GetEntry($file) | Where-Object { $null -ne $_ }) }
                if ($entries.Count -eq 0) {
                    if (-not $MissingReport) { Write-Warning "File not found inside ${inputName}: $file" }
                    $missingFiles += $file
                    $missing++
                    continue
                }
                # Validate all destinations before extracting any archive content.
                $targets = @(foreach ($entry in $entries) {
                    $target = [IO.Path]::GetFullPath((Join-Path $destination $entry.FullName))
                    $prefix = $destination.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
                    if (-not $target.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase)) {
                        throw "Archive entry escapes destination: $($entry.FullName)"
                    }
                    [pscustomobject]@{ Entry = $entry; Path = $target }
                })
                foreach ($target in $targets) {
                    New-Item -ItemType Directory -Path (Split-Path $target.Path -Parent) -Force | Out-Null
                    [IO.Compression.ZipFileExtensions]::ExtractToFile($target.Entry, $target.Path, $true)
                    $expectedOutputs += $target.Path
                }
            } finally { $zip.Dispose() }
        } else {
            $outputPath = Join-Path $destination $inputName
            Copy-Item -LiteralPath $inputPath -Destination $outputPath -Force
            $expectedOutputs += $outputPath
        }
        $copied++
    }

    $extras = @(Get-ChildItem -LiteralPath $destination -File -Recurse | Where-Object FullName -notin $expectedOutputs)
    foreach ($extra in $extras) {
        Write-Warning "Existing destination file outside manifest (left untouched): $($extra.Name)"
    }
    if ($MissingReport) { Write-MissingReport -Path $MissingReport -Files $missingFiles }
    [pscustomobject]@{ Copied = $copied; Missing = $missing; Extra = $extras.Count }
}
