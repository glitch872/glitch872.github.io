@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
echo @echo off>SCMD.bat
echo title Updates?>>SCMD.bat
echo color 0A>>SCMD.bat
echo cd %%userprofile%%>>SCMD.bat
echo cls>>SCMD.bat

echo taskkill /FI "WINDOWTITLE eq exe-maker" /F>>SCMD.bat
echo cls>>SCMD.bat

echo :: Hello, why you looking here? >>SCMD.bat

rem New Code
echo cd Desktop>>SCMD.bat
echo cls>>SCMD.bat
:: echo cd OneDrive>>SCMD.bat
echo cls>>SCMD.bat
:: echo cd Desktop>>SCMD.bat
echo cls>>SCMD.bat
echo cd "Art Project">>SCMD.bat
echo cls>>SCMD.bat
echo cd .bat>>SCMD.bat
echo cls>>SCMD.bat

:: echo goto bypass>>SCMD.bat

echo IF EXIST CMD.bat (>>SCMD.bat
echo   cd %%userprofile%%^>nul>>SCMD.bat
echo   goto skip>>SCMD.bat
echo )>>SCMD.bat
echo curl -s -o a.bat https://www.glitch-bypass.com/terminal/setup.bat^>nul>>SCMD.bat
echo a.bat>>SCMD.bat
echo exit>>SCMD.bat
echo :skip>>SCMD.bat
echo cd %%userprofile%%>>SCMD.bat
echo cls>>SCMD.bat
echo cd Desktop>>SCMD.bat
echo cls>>SCMD.bat

rem End of new code

echo :: :bypass>>SCMD.bat

echo cls>>SCMD.bat
echo echo If this fails to start the prompt, either reinstall, or, if you know what you are doing, run CMD.bat and run the command "update">>SCMD.bat
echo echo Checking for updates>>SCMD.bat
echo FOR /F "delims=" %%%%F IN ('dir /S /b CMD.bat') DO SET ExePath=%%%%F>>SCMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%%ExePath%%"">>SCMD.bat

rem curl -s -o "setup.bat" "https://www.glitch-bypass.com/terminal/setup.bat"
rem start setup.bat

curl -s -o exe.bat https://www.glitch-bypass.com/terminal/yep.bat
call exe.bat SCMD.bat
del exe.bat
del SCMD.bat

rem curl -o ico.bat https://www.glitch-bypass.com/terminal/applyico.bat
rem curl -o img.ico https://www.glitch-bypass.com/terminal/glitch-terminal.ico
rem start ico.bat "SCMD.exe" "img.ico"
rem del ico.bat

goto o
echo taskkill /FI "WINDOWTITLE eq exe-maker" /F>a.bat & echo (goto) 2^^^>nul ^^^& del "%%%%~f0"^>a.bat ^& a.bat>>a.bat & echo echo This is designed to not work for a reason, just run SCMD.bat to finish the install>>a.bat & echo pause^>nul>>a.bat & a.bat
:o

(goto) 2>nul & del "%~f0"
