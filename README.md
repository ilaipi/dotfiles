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
Copy-Item -Path ".\switch-to-zsh.sh" -Destination D:\Scoop\Applications\apps\git\current\usr\bin\
Copy-Item -Path ".\Windows_Terminal_config.json" -Destination $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```


## install theme p10k

p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$p10kDir" ] && git -C "$p10kDir" pull
[ ! -d "$p10kDir" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"


## nodejs global packages

```
npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
```

