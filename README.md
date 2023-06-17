## Scoop

### 普通终端

```

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir 'D:\Scoop\Applications' -ScoopGlobalDir 'D:\Scoop\Global' -NoProxy
scoop install git
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add extras
scoop install nodejs18
scoop install nodejs16
scoop install python27
scoop install python311
scoop install firacode-nf
scoop install Cousine-NF
scoop install peazip
scoop install ripgrep
scoop install lazygit
scoop install neovim

pip install neovim
npm install -g neovim


```

## Windows Terminal

必须先关闭当前的终端，然后重新打开一个终端，字体文件才能生效，然后执行复制：

```

New-Item -ItemType Directory -Path "D:\workspace" | Set-Location

git clone https://github.com/ilaipi/dotfiles.git

cd dotfiles

Copy-Item -Path ".\switch-to-zsh.sh" -Destination D:\Scoop\Applications\apps\git\current\usr\bin\
Copy-Item -Path ".\Windows_Terminal_config.json" -Destination $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

```

## Install ZSH

在当前终端窗口，新打开一个标签页，打开的时候选择： 命令提示符。

```

d:
cd .\workspace\dotfiles

"D:\Scoop\Applications\apps\peazip\current\res\bin\zstd\zstd.exe" -d ".\zsh-5.9-2-x86_64.pkg.tar.zst" -o "D:\Scoop\Applications\apps\git\current\zsh-5.9-2-x86_64.pkg.tar" --long=31
"D:\Scoop\Applications\apps\peazip\current\res\bin\7z\7z.exe" x -aos -bb0 -bse0 -bsp2 "-oD:\Scoop\Applications\apps\git\current\" -sccUTF-8 -snz "D:\Scoop\Applications\apps\git\current\zsh-5.9-2-x86_64.pkg.tar"
"D:\Scoop\Applications\apps\peazip\current\pea.exe" WIPE RECYCLE "D:\Scoop\Applications\apps\git\current\zsh-5.9-2-x86_64.pkg.tar"

```



## Config ZSH

关闭终端窗口，重新打开，这时候默认进入 zsh 的初始化，直接按 q 退出初始化。然后执行：

```

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install theme p10k

p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$p10kDir" ] && git -C "$p10kDir" pull
[ ! -d "$p10kDir" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"

cd /d/workspace/dotfiles
ln -sf $PWD/p10k.zsh ~/.p10k.zsh
ln -sf $PWD/zshrc ~/.zshrc

```



## nodejs global packages

```
npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
```

同步多个nodejs版本之间的 global packages。步骤：

- 先在要同步的版本，执行这个命令，生成 global_npm.sh
- 然后切换到目标版本，执行生成的 global_npm.sh
