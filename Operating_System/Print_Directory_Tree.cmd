@ECHO OFF
TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d"

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0