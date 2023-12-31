@echo off

setlocal

set "DESTINATION=%PWE_APPS%\vs"

for %%i in (%~dp0..) do set "scripts=%%~fi"

call "%scripts%\pwe-test\cl" && (
  if exist "%DESTINATION%\vcvars*.bat" (
    echo [ERR][%~n0] Delete the "%DESTINATION%" first!
    exit /b 1
  )
  echo [ERR][%~n0] Visual Studio is already available!
  exit /b 2
)

call "%scripts%\pwe-install\vsget\vsget" "%DESTINATION%" || (
  echo [ERR][%~n0] Unable to get Visual Studio!
  exit /b 3
)

exit /b 0
endlocal
