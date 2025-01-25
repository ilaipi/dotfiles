function Run-Step([string] $Description, [ScriptBlock]$script)
{
  Write-Host  -NoNewline "Loading " $Description.PadRight(20)
  & $script
  Write-Host "`u{2705}" # checkmark emoji
}

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding


# oh-my-posh
Run-Step "oh-my-posh" {
  oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/sim-web.omp.json" | Invoke-Expression
}
Run-Step "PSReadline" {
  Import-Module PSReadLine
  Set-PSReadLineOption -EditMode Emacs
}

if (Get-Command fnm -ErrorAction SilentlyContinue) {
  fnm env --use-on-cd | Out-String | Invoke-Expression
}

Clear-Host
