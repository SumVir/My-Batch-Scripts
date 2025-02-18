@echo off 
color 30
:menu
cls
echo.
echo App Downloader Script by SaidSecurity.com

set /p app="Please, enter the title of app you want to download: "

if not "%app%"=="" (
color 5
echo ------------------------------------------------------------
echo ------ Searching the app... --------
echo ------------------------------------------------------------
timeout /t 3 /nobreak
winget search %app%
echo ------------------------------------------------------------
echo -- You can download the app by typing its ID from the apps list. -- 
) else (
  echo ----------!!!!-------------
  echo Please, enter a valid entry!
  echo ----------!!!!-------------
  pause
  goto menu
  )

echo -----------------------------------------------------
set /p idnum="Please, now enter the app's ID number: "
echo -----------------------------------------------------
echo if you get any question as if Yes or No, Yes means Download and No means Don't Download. 
timeout /t 3 /nobreak

if not "%idnum%"=="" (
  echo Downloading... 
  winget install %idnum%
)
  ::echo.
  ::echo Installation complete or canceled.
  ::echo Press any key to return to menu...
  ::pause
  ::goto menu
pause








