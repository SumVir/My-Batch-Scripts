@echo off
color 2

:menu
cls

echo 1-Program Files
echo 2-Downloads
echo 3-Launch Chrome
echo 4-Lauch System32
echo 5-Launch temp folder and clean
echo 6-Launch MsPaint
echo ----------------------------
set /p select="Enter a number: "
echo ----------------------------

if %select% == 1 (
  start "" "C:\Program Files"
  echo Operation done!
)

if %select% == 2 (
  start "" "C:\Users\PC\Downloads"
  echo Operation done!
)

if %select% == 3 (
  start "" chrome.exe
)

if %select% == 4 (
   start "" "C:\Windows\System32"
)

if %select% == 5 (
   start "" "C:\Windows\Temp"
   del/q /f C:\Windows\Temp
   echo It's cleaned1!
)

if %select% == 6 (
    start mspaint.exe
) 

echo ------------------------------------------------
set /p continue="To continue type 'E'. To exit 'X': "
echo ------------------------------------------------

if /i "%continue%" == "E" (
  goto menu
) else (
   if /i "%continue%" == "X" (
     exit
  ) else (
     echo ----------------------------------
     echo Invalid Option, Returning to Menu!
     echo ----------------------------------
     timeout /t 5 /nobreak
     goto menu
  )
) 



pause