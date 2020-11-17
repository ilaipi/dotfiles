cd ~

# for zsh

# install theme p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

ln -s Applications/dotfiles/wsl/.p10k.zsh .p10k.zsh
ln -s Applications/dotfiles/wsl/zshrc .zshrc
