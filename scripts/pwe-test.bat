@echo off
setlocal
set "test=%~dp0pwe-test"
if "%test%" == "%CD%" cd ..
echo [INFO][%~n0] --- Testing PWE ---
call "%test%\vars"
call "%test%\curl"
call "%test%\git"
call "%test%\sed"
call "%test%\unzip"
call "%test%\python"
call "%test%\pip"
call "%test%\cl"
call "%test%\nmake"
call "%test%\cmake"
call "%test%\rg"
call "%test%\nvim"
echo [INFO][%~n0] --- Done ---
endlocal
