$ScoopDir = "D:\Scoop\Applications"
$ScoopGlobalDir = "D:\Scoop\Global"

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir "$ScoopDir" -ScoopGlobalDir "$ScoopGlobalDir" -NoProxy
Remove-Item -Path ".\install.ps1"
scoop install git
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add extras
scoop install nodejs16
scoop install nodejs18
scoop install python27
scoop install python311
scoop install firacode-nf
scoop install Cousine-NF
scoop install peazip
scoop install ripgrep
scoop install lazygit
scoop install neovim
scoop install gsudo

pip install neovim
npm install -g neovim

New-Item -ItemType Directory -Path "D:\workspace" | Set-Location

git clone https://github.com/ilaipi/dotfiles.git

cd dotfiles

$sourcePath = ".\zsh-5.9-2-x86_64.pkg"
$destinationPath = "$ScoopDir\apps\git\current"

Copy-Item -Path "$sourcePath\usr" -Destination "$destinationPath\" -Recurse -Force -ErrorAction SilentlyContinue

Copy-Item -Path "$sourcePath\etc" -Destination "$destinationPath\" -Recurse -Force -ErrorAction SilentlyContinue

Start-Process -FilePath "cmd.exe" -ArgumentList "/c start start_cmd.bat" -Wait

Copy-Item -Path ".\switch-to-zsh.sh" -Destination $ScoopDir\apps\git\current\usr\bin\

$sourcePath = (Get-Item -Path .\zshrc).FullName
$destinationPath = "$env:USERPROFILE\.zshrc"
Remove-Item -Path "$destinationPath"
sudo New-Item -ItemType SymbolicLink -Path $destinationPath -Target $sourcePath

$sourcePath = (Get-Item -Path .\p10k.zsh).FullName
$destinationPath = "$env:USERPROFILE\.p10k.zsh"
sudo New-Item -ItemType SymbolicLink -Path $destinationPath -Target $sourcePath

Copy-Item -Path ".\Windows_Terminal_config.json" -Destination $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
