@echo off
title Stopping StreamVault...
echo.
echo  Stopping StreamVault...
echo.

:: Kill node processes
taskkill /f /im node.exe >nul 2>&1

echo  ✅ StreamVault stopped.
echo  Press any key to close...
pause >nul
