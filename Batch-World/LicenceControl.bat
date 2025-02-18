@echo off
:menu
cls
color 30
echo.
echo Licence Changing Settings
echo =========================

echo 1. View the current licence key
echo 2. Change the current licence key
echo 3. Check the licence condition
echo 4. Verify the licence key and activate windows
echo 5. Exit
echo =========================

set /p select="Enter an option (1/2/3/4/5): "

if "%select%"=="1" (
 echo Starting the operation..
 slmgr /dli
 echo Successfully done! bye
 goto menu

)

if "%select%"=="2" (
 echo Starting the operation..
 set /p newkey="Enter the new licence key: "
 slmgr /ipk %newkey%
 echo Successfully done! bye
 goto menu
)

if "%select%"=="3" (
 echo Starting the operation..
 slmgr /xpr
 echo Successfully done! bye
 goto menu

)

if "%select%"=="4" (
 echo Starting the operation..
 slmgr /ato
 echo Successfully done! bye
 goto menu

)

if "%select%"=="5" (
   echo ============
   echo GoodBye..
   echo ============
   exit /b

)
pause