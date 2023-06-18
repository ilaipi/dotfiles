## Scoop

### 普通终端

在桌面或者任意文件夹中右击，然后点击：在终端中打开

```

$ScoopDir = "D:\Scoop\Applications"
$ScoopGlobalDir = "D:\Scoop\Global"

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir "$ScoopDir" -ScoopGlobalDir "$ScoopGlobalDir" -NoProxy
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

```



## nodejs global packages

```
npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
```

同步多个nodejs版本之间的 global packages。步骤：

- 先在要同步的版本，执行这个命令，生成 global_npm.sh
- 然后切换到目标版本，执行生成的 global_npm.sh
