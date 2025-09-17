@echo off
:: ============================================
:: Usage:
::   HideAndLink.bat "program.exe" "icon.ico"
::
:: This will:
::   1. Hide the exe file (hidden + system).
::   2. Create a shortcut (.lnk) with custom icon.
::   3. Hide the icon file so it doesn’t clutter folder.
:: ============================================

if "%~1"=="" (
    echo Usage: %~nx0 "program.exe" "icon.ico"
    exit /b 1
)

set "EXE=%~1"
set "ICON=%~2"

:: Default shortcut name = same as exe (but .lnk)
set "SHORTCUT=%~dpn1.lnk"

:: 1. Hide the exe
attrib +h "%EXE%" >nul 2>&1
if errorlevel 1 (
    echo Failed to hide "%EXE%"
    exit /b 1
)

:: 2. Create shortcut with custom icon
powershell -NoProfile -Command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT%');" ^
  "$s.TargetPath='%EXE%';" ^
  "$s.WorkingDirectory=(Split-Path '%EXE%');" ^
  "$s.IconLocation='%ICON%';" ^
  "$s.Save();"

if exist "%SHORTCUT%" (
    echo Created shortcut: %SHORTCUT%
) else (
    echo Failed to create shortcut.
    exit /b 1
)

:: 3. Hide the icon file
attrib +h "%ICON%" >nul 2>&1
if errorlevel 1 (
    echo Warning: could not hide "%ICON%"
) else (
    echo Hidden icon: %ICON%
)

echo Hidden exe: %EXE%
rem pause
exit
