## 兼容性
目前仅在 Windows 11 专业版测试。

网络需要开代理，最好是路由器上挂代理。

## Typical Installation

在桌面右击, 点击 在终端中打开：

```
irm https://dotfiles-olive.vercel.app/install.ps1 | iex
```

## Manual Install

在桌面右击, 点击 在终端中打开。

然后复制 `install.ps1` 文件内容，黏贴到终端中，自动完成安装。



## Sync nodejs global packages

```
npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
```

同步多个nodejs版本之间的 global packages。步骤：

- 先在要同步的版本，执行这个命令，生成 global_npm.sh
- 然后切换到目标版本，执行生成的 global_npm.sh

## Others to install

```shell

scoop install extras/context-menu-manager
scoop install extras/ccleaner
scoop install extras/android-studio
scoop install extras/copyq
scoop install extras/another-redis-desktop-manager
scoop install extras/postman

```



## Inspired

[how-to-add-git-bash-to-windows-terminal](https://walterteng.com/how-to-add-git-bash-to-windows-terminal)

[using-zsh-on-windows](https://walterteng.com/using-zsh-on-windows)

[Panes in Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/panes)

[让 Windows 更加适合开发](https://blog.oldshensheep.com/note/lindows/)
