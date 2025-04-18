$ScoopDir = "D:\Scoop\Applications"
$ScoopGlobalDir = "D:\Scoop\Global"

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir "$ScoopDir" -ScoopGlobalDir "$ScoopGlobalDir" -NoProxy
Remove-Item -Path ".\install.ps1"

winget install --id Microsoft.PowerShell --source winget

scoop install git
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add extras
scoop install fnm
scoop install python27
scoop install python311
scoop install firacode-nf
scoop install Cousine-NF
scoop install peazip
scoop install ripgrep
scoop install lazygit
scoop install neovim
scoop install gsudo
scoop install zig
scoop install gcc
scoop install context-menu-manager
scoop install ccleaner
scoop install another-redis-desktop-manager
scoop install postman
scoop install oh-my-posh
scoop install extras/unlocker

pip install neovim
npm install -g neovim

New-Item -ItemType Directory -Path "D:\workspace" | Set-Location

git clone https://github.com/ilaipi/dotfiles.git

cd dotfiles

# Powershell
Install-Module PSReadLine
$sourcePath = (Get-Item -Path .\Microsoft.PowerShell_profile.ps1).FullName
$destinationPath = $PROFILE.AllUsersAllHosts

if (Test-Path -Path $destinationPath) {
    Write-Host "软链接已存在：$destinationPath"
    gsudo Remove-Item -Path `"$destinationPath`"
}
Write-Host "创建软链接：$destinationPath -> $sourcePath"
gsudo New-Item -ItemType SymbolicLink -Path `"$destinationPath`" -Target `"$sourcePath`"

$sourcePath = ".\zsh-5.9-2-x86_64.pkg"
$destinationPath = "$ScoopDir\apps\git\current"

Copy-Item -Path "$sourcePath\usr" -Destination "$destinationPath\" -Recurse -Force -ErrorAction SilentlyContinue

Copy-Item -Path "$sourcePath\etc" -Destination "$destinationPath\" -Recurse -Force -ErrorAction SilentlyContinue

Start-Process -FilePath "cmd.exe" -ArgumentList "/c start start_cmd.bat" -Wait

Copy-Item -Path ".\switch-to-zsh.sh" -Destination $ScoopDir\apps\git\current\usr\bin\

$sourcePath = (Get-Item -Path .\zshrc).FullName
$destinationPath = "$env:USERPROFILE\.zshrc"
Remove-Item -Path "$destinationPath"
gsudo New-Item -ItemType SymbolicLink -Path $destinationPath -Target $sourcePath

$sourcePath = (Get-Item -Path .\p10k.zsh).FullName
$destinationPath = "$env:USERPROFILE\.p10k.zsh"
gsudo New-Item -ItemType SymbolicLink -Path $destinationPath -Target $sourcePath

$sourcePath = (Get-Item -Path .\Windows_Terminal_config.json).FullName
$destinationPath = $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
Copy-Item -Path ".\Windows_Terminal_config.json" -Destination $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
