@echo off
color 30
:start
cls
Title = Extension Converter by SaidSecurity.com
echo =====================================================
:: Get entry from the user
echo Extension converter made by SaidSecurity.com
set /p folder_patch="Please, type the directory path: "
set /p old_ext="Now, enter the old extension (e.g. bat): "
set /p new_ext="Now, enter the new extension (e.g. txt): "

:: Start the process

cd /d "%folder_patch%"

for %%f in (*.%old_ext%) do (
     ren "%%f" "%%~nf.%new_ext%"         
       
)
echo ====================
echo Converting finished.
echo ====================
:options
set /p user="To go back to the start type 'C' and to exit type 'X': "
if /i "%user%"=="C" (
   goto start
)
if /i "%user%"=="X" (
   echo Goodbye!
   timeout /t 1
   exit
)
if "%user%"=="" (
 echo !!!!!==================================!!!!!
 echo Invalid Option! Please type 'C' or 'X'
 echo !!!!!==================================!!!!!
 goto options
)
pause