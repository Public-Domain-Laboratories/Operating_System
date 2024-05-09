@ECHO OFF 
@TITLE Operating_System Prototype
ECHO Public_Domain_Laboratories. No Copyrights Reserved.
SET "execution_path=%~0"
IF "%execution_path:~1,1%"==":" ECHO. && CMD /Q /K




REM START /I /B  "Operating_System" "CMD /Q /K"

REM Creating new prompt does not preserve the previous environment correctly.

REM This should install a executable that runs last pointed instance of Operating_System.
REM I think it should be Command Line interface, Command Interpreter.
REM "os install" should  install last pointed instance of Operating_System.
REM Maybe CMD.exe should be replaced with Command Line Interface.

REM Allows to use the Command Line programs immediately in your environment to script and complete work in a standard way.
REM Enables execution of .d source files. Adds ability to launch .d files from subfolders of Operating_System.

REM It should pop up a blue color Command Line Interface Window.

REM All I know is this should make Operating_System usable in the current environment and allow to install it for long-term.

REM Before running the .d source code, a quick checksum against Operating_System project might be useful to enhance security.
