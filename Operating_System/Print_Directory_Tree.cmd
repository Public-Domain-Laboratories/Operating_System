@ECHO OFF && @chcp 65001 >NUL && SETLOCAL EnableDelayedExpansion 

TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

:test_run
FOR /F %%i IN ('DIR /S/B "TEST"') DO (SET "testpath=%%~di%%~pi")
IF ERRORLEVEL 0 (
	FOR /F %%f IN ('DIR /S/B /OD "%testpath%*.d"') DO (SET "testpathrun=%%f")
	RDMD "!testpathrun!"  
	GOTO :continue 
)

:default_run

RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree_Structure.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Paths.d"

:continue

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0