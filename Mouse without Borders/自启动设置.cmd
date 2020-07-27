
:获取管理员权限
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo off
set /p first="输入y或者n设置是否自启动: "
if %first% ==y (
goto A
) else if %first% ==n (
goto B

)

:A 
sc config MouseWithoutBordersSvc start=auto>nul
echo 已开启 
pause 
exit 

:B 
sc config MouseWithoutBordersSvc start=demand>nul
echo 已关闭
pause 
exit 

