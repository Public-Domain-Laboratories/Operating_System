@echo off
set "directory=TEST"

for /F %%i in ('dir /s/b "TEST"') do (echo %%~di%%~pi)
pause