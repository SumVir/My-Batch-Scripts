@echo off 

color 30
echo ----  ---- ----- ---- ---- ----- --- 
echo Wifi Keys Fetcher by SaidSecurity.com
echo.
echo Recorded Wi-Fi networks and passwords

echo ====================================

:: Enable delayed expansion
setlocal enabledelayedexpansion

:: Fetch the recorded Wi-Fi Profiles
for /f "tokens=2 delims=:" %%i in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set "ssid=%%i"
    set "ssid=!ssid:~1!"  :: Trim leading space
    echo SSID: !ssid!

    :: Take Wi-Fi key and show it
    for /f "tokens=2 delims=:" %%j in ('netsh wlan show profile name^="!ssid!" key^=clear ^| findstr "Key Content"') do (
        set "password=%%j"
        set "password=!password:~1!"  :: Trim leading space
        echo Password: !password!
    )
    echo =====================================
)

endlocal
pause