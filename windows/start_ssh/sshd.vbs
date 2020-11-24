Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "C:\Users\WINDOWS_USER\Applications\start_ssh\sshd.bat" & Chr(34), 0
Set WinScriptHost = Nothing
