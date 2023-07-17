oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/sim-web.omp.json" | Invoke-Expression


Import-Module PSReadLine

Set-PSReadLineOption -EditMode Emacs
