@ECHO OFF
REM Relative path example
rdmd "-I=..\.." main.d

REM Absolute path example
rdmd "-I=C:\Users\Windows10\Documents\GitHub\Operating_System\System\Development\Module_Import_System_Test" main.d
PAUSE