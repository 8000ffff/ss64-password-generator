@echo off
cls
title password
if [%1]==[] (
set /p string=string: 
) else (
set string=%1
)
rem unfortunately, there is no tee in windows
cscript.exe //nologo sha1.js %string%|clip.exe
cls
rem so i have to use it twice :(
cscript.exe //nologo sha1.js %string%
echo.
echo copied to clipboard
pause>nul
cls
set string=
title %comspec%
