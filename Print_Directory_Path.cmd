@ECHO OFF && @chcp 65001 >NUL

TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree_Structure.d"
RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Paths.d"

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0