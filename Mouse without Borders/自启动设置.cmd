
:��ȡ����ԱȨ��
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo off
set /p first="����y����n�����Ƿ�������: "
if %first% ==y (
goto A
) else if %first% ==n (
goto B

)

:A 
sc config MouseWithoutBordersSvc start=auto>nul
echo �ѿ��� 
pause 
exit 

:B 
sc config MouseWithoutBordersSvc start=demand>nul
echo �ѹر�
pause 
exit 

