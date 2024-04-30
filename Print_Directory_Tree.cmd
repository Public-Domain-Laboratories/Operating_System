@ECHO OFF && @chcp 65001 >NUL && SETLOCAL EnableDelayedExpansion 

TITLE %~nx0
CLS

ECHO Directory: %~p0
ECHO.

REM :test_run
REM FOR /F %%i IN ('DIR /S/B "TEST"') DO (SET "testpath=%%~di%%~pi")
REM IF ERRORLEVEL 0 (
REM 	FOR /F %%f IN ('DIR /S/B /OD "%testpath%*.d"') DO (SET "testpathrun=%%f")
REM 	RDMD "!testpathrun!"  
REM 	GOTO :continue 
REM )

:default_run

REM 
RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d"


REM RDMD ".\System_Tools\Directory_Tree_Generator\First research\Print_Directory_Tree_deconstructedArray.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\First research\Print_Directory_Tree_deconstructedPath.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Tree_Structure.d"
REM RDMD ".\System_Tools\Directory_Tree_Generator\Print_Directory_Paths.d"

:continue

ECHO.
<NUL SET /p "=Press any key to refresh . . ." & PAUSE >NUL

CALL %~nx0