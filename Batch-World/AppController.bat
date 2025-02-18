@echo off 
color 30
echo.
title = App Controller by SaidSecurity

echo Timing will end after 5 seconds

timeout /t 5 /nobreak


:: Close Chrome!
taskkill /F /IM SnippingTool.exe
if %errorlevel% == 0 (
   echo Successfull! Done.

)

:: Run any app after 5 seconds
timeout /t 3 /nobreak
start https://saidsecurity.com

if %errorlevel% == 0 (
   echo Successfull! Done.

)

pause
exit /b
