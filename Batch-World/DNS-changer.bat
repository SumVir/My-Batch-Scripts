@echo off  
color 30
echo.
title = DNS Address changer by SaidSecurity.com

set /p dns1="Please, specify the first DNS Address: "
set /p dns2="Please, specify the second DNS Address: "

if not "%dns1%"=="" if not "%dns2%"=="" (
    netsh interface ip set dns name="Wi-Fi" static %dns1% :: change to Ethernet if you Ethernet instead Wi-Fi
    if %errorlevel%==0 (
      netsh interface ip add dns name="Wi-Fi" %dns2% index=2
    if %errorlevel%==0 (
           echo DNS settings successfully changed! 
    ) else (
          echo Error occured while changing the second DNS Address!
    )

    ) else (
          echo Error occured while changing the first DNS Address!
       )
) else (
          echo Invalid entry, Check the provided addresses!
)

pause