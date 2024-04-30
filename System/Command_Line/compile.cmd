@ECHO OFF
del "*.exe" 2>NUL

::  -i[=<pattern>]    include imported modules in the compilation

for %%f in (*.d) do (
	echo DMD Compiling .\%%f 
	dmd -i ".\%%f" -profile -profile=gc -debug  -H
)
del "*.obj" 2>NUL