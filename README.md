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
export PREFIX='/usr' 

sudo sh -c "update-alternatives --install /usr/bin/editor editor $PREFIX/bin/nvim 1;
update-alternatives --set editor $PREFIX/bin/nvim;
update-alternatives --install /usr/bin/vim vim $PREFIX/bin/nvim 1;
update-alternatives --set vim $PREFIX/bin/nvim;
update-alternatives --install /usr/bin/vi vi $PREFIX/bin/nvim 1;
update-alternatives --set vi $PREFIX/bin/nvim;"
```
