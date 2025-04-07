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

if (Get-Command jabba -ErrorAction SilentlyContinue) {
 $env:JABBA_HOME="$((scoop config root_path).Trim())\apps\jabba\current"

  function jabba
  {
      $fd3=$([System.IO.Path]::GetTempFileName())
      $command="& '$env:JABBA_HOME\bin\jabba.exe' $args --fd3 `"$fd3`""
      & { $env:JABBA_SHELL_INTEGRATION="ON"; Invoke-Expression $command }
      $fd3content=$(Get-Content $fd3)
      if ($fd3content) {
          $expression=$fd3content.replace("export ","`$env:").replace("unset ","Remove-Item env:") -join "`n"
          if (-not $expression -eq "") { Invoke-Expression $expression }
      }
      Remove-Item -Force $fd3
  }
  # 初始化 jabba 环境
  $env:JABBA_SHELL_INTEGRATION="ON"
  jabba use default
}

Clear-Host
