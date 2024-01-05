@ECHO OFF
TITLE %~nx0
CLS
ECHO %~p0
RDMD System_Tools\Directory_Tree_Generator\Print_Directory_Tree.d

ECHO Press Enter to refresh.
PAUSE
CALL %~nx0