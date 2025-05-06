oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_macchiato.omp.json" | Invoke-Expression
Get-ChildItem "$PROFILE\..\Completions\" | ForEach-Object {
    . $_.FullName
}
fastfetch
