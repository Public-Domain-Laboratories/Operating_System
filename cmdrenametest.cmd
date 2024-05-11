@ECHO OFF
ECHO Needs Command Prompt with elevated privilegies.
CD "C:\Windows\system32\"
takeown /F "C:\Windows\system32\cmd.exe" /A
icacls "C:\Windows\system32\cmd.exe" /grant Administrators:F
ren cmd.exe testcmd.exe
icacls "C:\Windows\system32\cmd.exe" /setowner "NT SERVICE\TrustedInstaller"
ren testcmd.exe cmd.exe 
icacls "C:\Windows\system32\cmd.exe" /grant:r Administrators:RX
ren testcmd.exe cmd.exe 
PAUSE