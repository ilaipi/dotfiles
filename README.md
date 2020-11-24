# for windows terminal
把 `Windows Terminal config.json` 内容复制到`Windows Terminal` 的配置文件中

```
sh -x ./install.sh
```

# For win10

## 安装软件
[安装xcxsrv](https://sourceforge.net/projects/vcxsrv/)，然后双击`config.xlanch`
[安装auto hot key](https://www.autohotkey.com/)

## 授权文件夹
脚本需要写文件到`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`目录，所以需要先把这个目录权限放开。    
操纵：打开我的电脑，找到这个目录，右击，属性-安全-Everyone，编辑，把完全控制打勾。    
（执行完后可以改回去）  
