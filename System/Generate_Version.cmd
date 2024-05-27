@ECHO OFF

@PUSHD "%~DP0..\"
@SET /p GitHashfileContent=<".\.git\FETCH_HEAD"
@ECHO 1136#%GitHashfileContent:~0,7%_20240527 > "%~DP0Version.txt"
@POPD
REM 1136#638e306_20240527
REM 1136#08a86a8_20240527 
REM hoursseconds#githash_yearmonthday

EXIT /B

:traverse_parent_directory
FOR %%i IN ("%CD%") DO (
    IF NOT "%%~nxi"=="Operating_System" (
        REM ECHO Visiting parent folder %CD% %CD:~1,3%
        @CD "..\"
        IF "%CD:~1,3%"==":\" GOTO:EOF
        GOTO :traverse_parent_directory
    )
)

