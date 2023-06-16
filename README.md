## Scoop

### 普通终端

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir 'D:\Scoop\Applications' -ScoopGlobalDir 'D:\Scoop\Global' -NoProxy
```

### 管理员终端

```
scoop install git --global
```

### 普通终端

```
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add extras
```

### 管理员终端

```
scoop install nodejs18 --global
scoop install nodejs16 --global
scoop install python27 --global
scoop install python311 --global
scoop install firacode-nf --global
scoop install Cousine-NF --global
scoop install peazip --global
```

### 普通用户  命令行模式

命令提示符 窗口，进入当前目录，执行：

```
"D:\Scoop\Global\apps\peazip\current\res\bin\zstd\zstd.exe" -d ".\zsh-5.9-2-x86_64.pkg.tar.zst" -o "D:\Scoop\Global\apps\git\current\zsh-5.9-2-x86_64.pkg.tar" --long=31
"D:\Scoop\Global\apps\peazip\current\res\bin\7z\7z.exe" x -aos -bb0 -bse0 -bsp2 "-oD:\Scoop\Global\apps\git\current\" -sccUTF-8 -snz "D:\Scoop\Global\apps\git\current\zsh-5.9-2-x86_64.pkg.tar"
"D:\Scoop\Global\apps\peazip\current\pea.exe" WIPE RECYCLE "D:\Scoop\Global\apps\git\current\zsh-5.9-2-x86_64.pkg.tar"
```

## Windows Terminal

cp Windows_Terminal_config.json %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json


## install theme p10k

p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$p10kDir" ] && git -C "$p10kDir" pull
[ ! -d "$p10kDir" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"

