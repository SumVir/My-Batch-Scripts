@echo off 
color 30
echo.
title = Local IP Finder by SaidSecurity.com

echo Fetch system information
echo ================================
ipconfig | findstr /R /C:"IPv4 Address"
ipconfig | findstr /R /C:"Default Gateway"
echo ================================
systeminfo | findstr /R /C:"OS Version"
systeminfo | findstr /R /C:"BIOS Version"
systeminfo | findstr /R /C:"Page File Location(s)"
systeminfo | findstr /R /C:"System Directory"
echo ==================================
echo That's it, bye!
:: Finish task
taskkill /F /IM findstr.exe 2>&1

pause
