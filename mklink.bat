@echo off
setlocal
set current=%~dp0

mklink /D %HOME%\vimfiles %current%vim
mklink %HOME%\.gitconfig %current%git\gitconfig
mklink %HOME%\.gitignore_global %current%git\gitignore_global

endlocal

pause off
