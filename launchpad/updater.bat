@echo off
del sig.bat
for /F %%I in ('curl https://raw.githubusercontent.com/zNugget/sig/main/launchpad/sig.txt') do set sigupdate=%%I >nobreak >nul && cls
echo %sigupdate%> sig.bat
sig.bat
