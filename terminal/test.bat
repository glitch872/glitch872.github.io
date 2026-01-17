@echo off
setlocal EnableExtensions EnableDelayedExpansion

if "%~1"=="" (
    echo Usage: %~nx0 "program.exe" "icon.ico"
    exit /b 1
)

:: Resolve absolute paths
for %%I in ("%~1") do set "EXE=%%~fI"
for %%I in ("%~2") do set "ICON=%%~fI"

set "SHORTCUT=%~dpn1.lnk"

:: Hide the exe (hidden + system)
attrib +h +s "%EXE%" >nul 2>&1 || (
    echo Failed to hide "%EXE%"
    exit /b 1
)

:: Create shortcut with PowerShell
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$w = New-Object -ComObject WScript.Shell;" ^
  "$s = $w.CreateShortcut('%SHORTCUT%');" ^
  "$s.TargetPath = '%EXE%';" ^
  "$s.WorkingDirectory = (Split-Path '%EXE%');" ^
  "$s.IconLocation = '%ICON%';" ^
  "$s.Save()"

if not exist "%SHORTCUT%" (
    echo Failed to create shortcut.
    exit /b 1
)

:: Hide icon file (optional)
attrib +h +s "%ICON%" >nul 2>&1

echo Shortcut created: %SHORTCUT%
echo Hidden exe: %EXE%
echo Hidden icon: %ICON%
exit /b 0
