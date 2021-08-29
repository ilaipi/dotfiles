# For win10 WSL

## Windows Terminal
把 `Windows Terminal config.json` 内容复制到`Windows Terminal` 的配置文件中

## 安装软件
[安装xcxsrv](https://sourceforge.net/projects/vcxsrv/)，然后双击`config.xlanch`
[安装auto hot key](https://www.autohotkey.com/)

# pre
```
npm i -g vue-language-server \
      vscode-css-languageserver-bin \
      javascript-typescript-langserver \
      bash-language-server \
      typescript-language-server \
      vscode-html-languageserver-bin
```

# For Ubuntu
@see README_Ubuntu.md

# For Mac
@see README_Mac.md

# nvim

更新系统vim命令为nvim：
```
# CUSTOM_NVIM_PATH=/usr/bin/nvim
set -u
sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
```


## Install SpaceVim

```
ln -s $PWD/Applications/dotfiles/SpaceVim/ .SpaceVim.d
```
