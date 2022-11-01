@echo off && title Sig && color 6 && for /F %%I in ('curl https://raw.githubusercontent.com/zNugget/sig/main/version/version.txt --silent') do set ver=%%I && set launchedpath=%cd%
if exist siginstall goto check1
ping 1.1.1.1 -n 1 >nul
md siginstall
:check1
cd %launchedpath%\siginstall
if exist modules goto check2
md modules
cd modules
set modulespath=%cd%
cd %launchedpath%\siginstall
:check2
if exist %ver% goto check3
ping 1.1.1.1 -n 1 >nul
md %ver%
:check3
cd %launchedpath%\siginstall\%ver%
if exist %ver%.bat goto done
curl https://raw.githubusercontent.com/zNugget/sig/main/main/%ver%>main.bat --silent
echo %modulespath%>modulespath.txt
:done
main.bat
