$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent

Push-Location $projectRoot
try {
    git reset --mixed '085795a439ff3e672a016c483c079f834652dd59' # initial commit

    git add -- tools/igir.exe;     git commit -m 'chore: add Igir executable'
    git add -- .gitignore;         git commit -m 'chore: add .gitignore'
    git add -- tools scripts;      git commit -m 'feat: add build scripts'
    git add -- rom-dats/No-Intro;  git commit -m 'chore: add No-Intro DAT files'
    git add -- rom-dats/FBNeo;     git commit -m 'chore: add FBNeo DAT files'
    git add -- rom-dats/TOSEC;     git commit -m 'chore: add TOSEC DAT files'
    git add -- rom-dats/Redump;    git commit -m 'chore: add Redump DAT files'
    git add -- rom-lists;          git commit -m 'feat: add rom-lists'
    git add -- reports/missing;    git commit -m 'feat: add reports/missing'
    git add -- README.md;          git commit -m 'feat: update README'

    git status --short
} finally {
    Pop-Location
}
