@echo off
del sig.bat
for /F %%I in ('curl https://raw.githubusercontent.com/zNugget/sig/launchpad/version/version.txt') do set sigupdate=%%I >nobreak >nul && cls
echo %sigupdate%> sig.bat
sig.bat
