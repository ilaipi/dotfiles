## Scoop

使用 scoop 管理 Windows 的所有软件安装。

执行完所有 scoop 命令后，往下执行。

## Windows Terminal

cp Windows_Terminal_config.json %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json


## install theme p10k

p10kDir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$p10kDir" ] && git -C "$p10kDir" pull
[ ! -d "$p10kDir" ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$p10kDir"

