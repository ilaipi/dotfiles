oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/avit.omp.json" | Invoke-Expression


Import-Module PSReadLine

Set-PSReadLineOption -EditMode Emacs
