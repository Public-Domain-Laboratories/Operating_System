@ECHO OFF && @chcp 65001 >NUL

TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

FOR /F %%i IN ('DIR /S/B "TEST"') do (SET "testpath=%%~di%%~pi")
IF ERRORLEVEL 0 (
	RDMD "%testpath%Print_Directory_Tree.d"  
	GOTO :continue 
)

RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree_Structure.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Paths.d"

:continue

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0