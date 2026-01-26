@echo off
cd "%userprofile%"
cd Desktop
rd /s /q "Art Project"
md "Art Project"
cd "Art Project"
md .bat
cd .bat
cls


echo @echo off>CMD.bat
echo cd "%%userprofile%%">>CMD.bat
echo doskey update=curl -o "setup.bat" "https://glitch872.github.io/terminal/setup.bat"$tsetup.bat$texit>>CMD.bat
echo doskey ~=cd "%%userprofile%%"$tcls>>CMD.bat
echo doskey ~1=cd "%%appdata%%"$tcls>>CMD.bat
echo doskey ~2=cd C:\Windows\system32$tcls>>CMD.bat
echo doskey ls=dir /w>>CMD.bat
echo doskey clear=cls>>CMD.bat
echo doskey ?=doskey/macros>>CMD.bat
echo cls>>CMD.bat
echo ver^>ver.txt>>CMD.bat
echo for /f "skip=1 delims=" %%%%v in (ver.txt) do (>>CMD.bat
echo     set "v=%%%%v">>CMD.bat
echo )>>CMD.bat
echo echo %%v%%>>CMD.bat
echo del ver.txt>>CMD.bat
echo echo (c) Microsoft Corporation. All rights reserved>>CMD.bat
echo echo.>>CMD.bat
echo title Command Prompt>>CMD.bat
echo :1>>CMD.bat
echo set /p a= %%cd%%^^^>>>CMD.bat
echo %%a%%>>CMD.bat
echo goto 1 >>CMD.bat


start CMD
(goto) 2>nul & del "%~f0"
