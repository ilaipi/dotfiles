#! /bin/bash

currentDir=$PWD

# for windows
cd /mnt/c

winUser=$(cmd.exe /c "echo %USERNAME%" | tr -d '\n\r')

cd $currentDir

# create Applications folder
ApplicationsDir="/mnt/c/Users/$winUser/Applications"

[ ! -d "$ApplicationsDir" ] && mkdir -p "$ApplicationsDir"

cp ./windows/config.xlaunch /mnt/c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/StartUp/
cp ./windows/system.ahk /mnt/c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/StartUp/

# for zsh

# install theme p10k
p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$p10kDir" ] && git -C "$p10kDir" pull
[ ! -d "$p10kDir" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"

ln -sf $PWD/wsl/p10k.zsh ~/.p10k.zsh
ln -sf $PWD/wsl/zshrc ~/.zshrc
