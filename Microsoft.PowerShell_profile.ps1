Import-Module oh-my-posh
Set-Alias edit neovide
oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/negligible.omp.json | Invoke-Expression
