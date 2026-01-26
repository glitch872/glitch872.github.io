REM ------------------------------------------------------------
REM  IMPORTANT
REM
REM  This script is managed by the installer.
REM  Please install or reinstall using:
REM      https://www.glitch-bypass.com/terminal/
REM
REM  If you already have a newer version installed,
REM  the `update` command may be used instead.
REM
REM  Direct execution of this file is not recommended.
REM ------------------------------------------------------------

@echo off

:: setup

color 0A
title update/install
cd "%userprofile%"
echo .>update-bat
cd Desktop
rd /s /q "Art Project"
del update.bat
md "Art Project"
cd "Art Project"
md .bat
cd .bat
cls

:: Create CMD.bat

echo @echo off>CMD.bat


echo. >>CMD.bat
echo :: Check if first run>>CMD.bat
echo. >>CMD.bat
echo cd "%%userprofile%%">>CMD.bat
echo IF EXIST first-run-bat (>>CMD.bat
echo 	goto installed>>CMD.bat
echo )>>CMD.bat
echo.>>CMD.bat
echo :: Ask whether to auto-update>>CMD.bat
echo. >>CMD.bat
echo echo Auto-Update? (Default : Y)>>CMD.bat
echo set /p c=Y/n: >>CMD.bat
echo if /i "%%c%%"=="n" goto no-update >>CMD.bat
echo goto update>>CMD.bat
echo :no-update >>CMD.bat
echo echo .^>no-update>>CMD.bat
echo :update>>CMD.bat
echo. >>CMD.bat
echo echo .^>first-run-bat>>CMD.bat
echo cd Desktop>>CMD.bat
echo cd "Art Project">>CMD.bat
echo cd .bat>>CMD.bat
echo cls>>CMD.bat
echo. >>CMD.bat
echo :installed >>CMD.bat


echo cd "%%userprofile%%">>CMD.bat
echo color 0A>>CMD.bat

echo doskey lc=git clone --recursive --depth 50 https://github.com/winstxnhdw/lc-hax.git$tcd lc-hax$tstart requirements.bat$texplorer "%%cd%%"$tcls>>CMD.bat

echo doskey auto-update=goto auto-update>>CMD.bat

echo doskey repair=cd "%%userprofile%%"$tcd Desktop$tcd OneDrive$tcd Desktop$tcurl -L -s -o "a.bat" "https://glitch872.github.io/terminal/install.bat"$tstart a.bat$tcls$tcurl -L -s -o "b.bat" "https://glitch872.github.io/terminal/setup.bat"$tb.bat$texit>>CMD.bat

echo doskey update-all=cd "%%userprofile%%"$tcd Desktop$tcd OneDrive$tcd Desktop$tcurl -L -s -o "a.bat" "https://glitch872.github.io/terminal/update.bat"$tstart a.bat$tcls>>CMD.bat
echo doskey update=cd "%%userprofile%%"$tcd Desktop$tcd OneDrive$tcd Desktop$tcurl -L -s -o "a.bat" "https://glitch872.github.io/terminal/setup.bat"$ta.bat$texit>>CMD.bat
echo doskey trollmode=goto troll>>CMD.bat
echo doskey min=curl -L -s -o "setup.bat" "https://glitch872.github.io/terminal/min.bat"$tsetup.bat$texit>>CMD.bat
echo doskey ?=goto 3 >>CMD.bat
echo doskey ~=cd "%%userprofile%%"$tcls>>CMD.bat
echo doskey ~1=cd "%%appdata%%"$tcls>>CMD.bat
echo doskey hide=goto hide >>CMD.bat
echo cd ..>>CMD.bat
echo cd ..>>CMD.bat
echo cd Windows>>CMD.bat
echo cd System32>>CMD.bat
echo FOR /F "delims=" %%%%F IN ('cd') DO SET System32=%%%%F>>CMD.bat
echo doskey ~2=cd "%%System32%%"$tcls>>CMD.bat
echo doskey ~~=goto 2 >>CMD.bat
echo doskey Boot=goto Boot >>CMD.bat
echo doskey uninstall=cd "%%userprofile%%"$tdel first-run-bat$tdel no-update$tcd Desktop$trd /s /q "Art Project"$tcd OneDrive$tcd Desktop$tdel *SCMD.exe$texit>>CMD.bat
echo doskey user-level=goto no-admin >>CMD.bat
echo doskey find=goto find>>CMD.bat
echo doskey ls=dir /w>>CMD.bat
echo doskey spam=goto spam>>CMD.bat
echo doskey clear=cls>>CMD.bat
echo doskey Discord=goto Discord>>CMD.bat
echo doskey exe=curl -L -s -o "bat2exe.bat" "https://glitch872.github.io/terminal/yep.bat"$tgoto 2 >>CMD.bat
echo cd "%%userprofile%%">>CMD.bat

echo IF EXIST no-update (>>CMD.bat
echo     goto skip>>CMD.bat
echo )>>CMD.bat
echo IF EXIST update-bat (>>CMD.bat
echo     goto skip>>CMD.bat
echo )>>CMD.bat
echo echo .^>update-bat>>CMD.bat
echo curl -L -s -o "setup.bat" "https://glitch872.github.io/terminal/setup.bat">>CMD.bat
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
echo title Glitch Prompt - %%a%%>>CMD.bat
echo %%a%%>>CMD.bat
echo title Glitch Prompt>>CMD.bat
echo goto 1 >>CMD.bat

echo :troll>>CMD.bat
echo doskey cls=echo Nah, use clearterminal>>CMD.bat
echo doskey clearterminal=cls>>CMD.bat
echo doskey exit=echo Nah, use terminate>>CMD.bat
echo doskey terminate=exit>>CMD.bat
echo doskey dir=echo Nah, use directory>>CMD.bat
echo doskey directory=dir>>CMD.bat
echo doskey ipconfig=echo Nah, use internet-protocol-configuration>>CMD.bat
echo doskey internet-protocol-configuration=ipconfig>>CMD.bat
echo cls>>CMD.bat
echo goto 1 >>CMD.bat

echo :2>>CMD.bat
echo explorer "%%cd%%">>CMD.bat
echo cls>>CMD.bat
echo goto 1 >>CMD.bat

echo :3 >>CMD.bat
echo cls>>CMD.bat
echo help>>CMD.bat
echo echo ~              Jump to the userprofile directory>>CMD.bat
echo echo ~1             Jump to the appdata directory>>CMD.bat
echo echo ~2             Jump to the system32 directory>>CMD.bat
echo echo ~~             Opens File Explorer to the directory you are in>>CMD.bat
echo echo user-level     Skip admin required (sometimes)>>CMD.bat
echo echo update         Update the file to the latest version>>CMD.bat
echo echo uninstall      Uninstall the terminal and all related files>>CMD.bat
echo echo auto-update    Toggle auto-update>>CMD.bat
echo echo ?              Custom commands list>>CMD.bat
echo goto 1 >>CMD.bat

echo :auto-update >>CMD.bat
echo IF EXIST no-update (>>CMD.bat
echo     del no-update>>CMD.bat
echo     echo auto-update enabled>>CMD.bat
echo     goto update-toggle>>CMD.bat
echo )>>CMD.bat
echo echo .^>no-update>>CMD.bat
echo echo auto-update disabled>>CMD.bat
echo :update-toggle>>CMD.bat
echo goto 1 >>CMD.bat

echo :Boot>>CMD.bat
echo cd "%%userprofile%%">>CMD.bat
echo cd Desktop>>CMD.bat
echo cd "Art Project\.bat">>CMD.bat
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
echo set save="%%cd%%">>CMD.bat
echo cd "%%userprofile%%">>CMD.bat
echo cd ..>>CMD.bat
echo cd ..>>CMD.bat
echo FOR /F "delims=" %%%%F IN ('dir /S /b discord.exe') DO SET ExePath=%%%%F>>CMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%%ExePath%%"">>CMD.bat
echo cd "%%save%%">>CMD.bat
echo goto 1 >>CMD.bat

echo :hide>>CMD.bat
echo if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 ^&& start "" /min "%%~dpnx0" %%* ^&& exit>>CMD.bat
echo pause>>CMD.bat
echo goto 1 >>CMD.bat

:: log.bat

echo @echo off>log.bat
echo title File compiler list>>log.bat
echo cd "%%userprofile%%">>log.bat
echo mkdir dir>>log.bat
echo cd ..>>log.bat
echo cd ..>>log.bat
echo cls>>log.bat
echo echo Compiling>>log.bat
echo dir /s "%%cd%%*"^>"%%userprofile%%\dir\info.txt">>log.bat
echo explorer "%%userprofile%%\dir\">>log.bat
echo cls>>log.bat
echo echo done>>log.bat
echo pause>>log.bat

:: Check if first run

cd "%userprofile%"
IF EXIST first-run-bat (
    goto skip
)

:: Finalize

echo Done with setup
pause

cls
echo In CMD.bat, there are a few custom commands
echo the command ~ Brings you to the userprofile directory
echo the command ~1 Brings you to the appdata directory
echo the command ~2 Brings you to the system32 directory
echo the command ~~ Opens File Explorer to the directory you are in
echo I made this so that there is ease of access to these main file directories
echo using "user-level" you can run a file without needing admin (will only work with some files)
echo use "update" to update the file to the latest version
echo use "uninstall" to uninstall all related files
echo use "auto-update" to toggle auto-update
echo (upon starting CMD.bat, it will auto-update)
echo You can re-open this again by typing ? into CMD.bat
pause

:skip
cd Desktop
cd "Art Project"
cd .bat
start CMD
del Help.bat

:: Delete self when done

(goto) 2>nul & del "%~f0" & exit
