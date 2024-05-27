@ECHO OFF

REM CALL :traverse_parent_directory
REM ECHO DONE
REM PAUSE

@PUSHD "%~DP0..\"
@SET /p GitHashfileContent=<".\.git\FETCH_HEAD"
@ECHO 1136#%GitHashfileContent:~0,7%_20240527 > "%~DP0Version.txt"
@POPD
REM 1136#638e306_20240527
REM 1136#08a86a8_20240527 
REM hoursseconds#githash_yearmonthday

EXIT /B

:traverse_parent_directory
SET "backup_CD=%CD%"
:repeat
FOR %%i IN ("%CD%") DO (
    IF NOT "%%~nxi"=="Operating_System" (
        ECHO Visiting parent folder %CD% %CD:~1,3%
        CD "..\"
        IF "%CD:~1,3%"==":\" CD "%backup_CD%" && GOTO:EOF
        GOTO :repeat
    ) ELSE ( 
        CD "%backup_CD%" 
    )
)

