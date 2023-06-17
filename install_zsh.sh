#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ -d "$p10kDir" ]; then
    git -C "$p10kDir" pull
else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"
fi
