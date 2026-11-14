@echo off
chcp 65001 >nul
echo ========================================================
echo   جاري تشغيل بورتفوليو التوني على السيرفر المحلي...
echo ========================================================
start "" powershell -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -File "%~dp0server.ps1" -port 5500
timeout /t 2 >nul
start http://localhost:5500/
exit
