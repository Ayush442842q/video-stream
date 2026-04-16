@echo off
title StreamVault - Starting...
color 0C

echo.
echo  ╔══════════════════════════════════════╗
echo  ║        🎬  StreamVault Launcher      ║
echo  ╚══════════════════════════════════════╝
echo.
echo  Starting server and tunnel...
echo  Please keep this window open!
echo.

:: Start the backend server in a new window
start "StreamVault Server" cmd /k "cd /d H:\Github desktop\Streaming\server && npm run dev"

:: Wait 3 seconds for server to boot
timeout /t 3 /nobreak >nul

:: Start the tunnel in a new window
start "StreamVault Tunnel" cmd /k "cd /d H:\Github desktop\Streaming\server && npm run tunnel"

:: Wait 5 seconds for tunnel to connect
timeout /t 5 /nobreak >nul

echo.
echo  ✅ StreamVault is running!
echo.
echo  🏠 Local:   http://localhost:8097
echo  🌐 Public:  https://streamvault.loca.lt
echo.
echo  Login:  ayush / niliop01
echo          guest / 234as
echo.
echo  ⚠️  Keep the two new windows open!
echo  Press any key to open the website...
pause >nul

:: Open the public URL in default browser
start https://streamvault.loca.lt
