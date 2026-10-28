function Write-MissingReport {
    param(
        [Parameter(Mandatory)][string]$Path,
        [AllowEmptyCollection()][string[]]$Files = @()
    )
    $ErrorActionPreference = 'Stop'
    $fullPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Path)
    New-Item -ItemType Directory -Path (Split-Path $fullPath -Parent) -Force | Out-Null
    $temporaryPath = "$fullPath.$([guid]::NewGuid().ToString('N')).tmp"
    try {
        [string[]]$sorted = @($Files | Sort-Object -Unique -CaseSensitive)
        [Array]::Sort($sorted, [StringComparer]::Ordinal)
        [IO.File]::WriteAllLines($temporaryPath, $sorted, [Text.UTF8Encoding]::new($false))
        Move-Item -LiteralPath $temporaryPath -Destination $fullPath -Force
    } finally {
        if (Test-Path -LiteralPath $temporaryPath) { Remove-Item -LiteralPath $temporaryPath }
    }
}
