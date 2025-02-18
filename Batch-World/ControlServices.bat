@echo off 
color 30

:: get input from user
:start
cls
color 30
echo ===== ===== ==== ==== ===== ===== ===== ==
echo Service Controller by SaidSecurity.com
echo ===== ===== ==== ==== ===== ===== ==== ===
echo 1. Turn off Windows Updates
echo 2. Turn on Windows Updates
echo 3. Turn off firewall
echo 4. Turn on firewall
echo 5. Restart the typing service
echo ===== ===== ==== ==== ===== 
set /p s="Enter an option(1-5): "

if %s%==1 (
    echo Turning off Windows Updates..
    net stop wuauserv
    sc config wuauserv start= disabled
    echo Windows Updates have been turned off!
    timeout /t 3
    goto start
) else if %s%==2 (
    echo Turning on Windows Updates..
    net start wuauserv
    sc config wuauserv start= auto
    echo Windows Updates have been turned on!
    timeout /t 3
    goto start
) else if %s%==3 (
    echo Turning off firewall..
    netsh advfirewall set allprofiles state off
    echo Firewall has been turned off!
    timeout /t 3
    goto start
) else if %s%==4 (
    echo Turning on firewall..
    netsh advfirewall set allprofiles state on
    echo Firewall has been turned on!
    timeout /t 3
    goto start
) else if %s%==5 (
    echo Restarting the writing service...
    net stop spooler
    net start spooler  
    echo Writing service has been restarted!
    timeout /t 3
    goto start
) else (
    color 40
    echo !=!=!=!=!
    echo Invalid option!!!
    timeout /t 2
    goto start
  
)
pause

