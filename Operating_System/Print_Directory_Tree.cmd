@ECHO OFF && @chcp 65001 >NUL

TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

dir /s/b "TEST" > nul 2>&1
if errorlevel 0 (
    echo Files found
) 
pause

REM dir /s/b TEST
IF EXIST ".\TEST"
RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree_Structure.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Paths.d"

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0