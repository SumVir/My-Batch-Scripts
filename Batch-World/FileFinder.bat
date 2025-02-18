@echo off 
setlocal enabledelayedexpansion
color 57
echo.
:start
cls
echo.
echo -- File Finder Script -- by SaidSecurity.com

:: Get the related information from the user 
echo ------------------------------------------------------
set /p directory="Please, type the directory path where the search will be: "
set /p extension="Now, type the extension that will be searched: "
echo ------------------------------------------------------
echo.
:: Start to searching, if the required input is provided

if not "%directory%"=="" if not "%extension%"=="" (
      echo ------------------------------------------------------
      echo -- Searching in %directory%, for %extension% extension. Be patient! .. --
      echo ------------------------------------------------------
      timeout /t 3 /nobreak
      echo.
      set "foundFile=false"
      for /r "%directory%" %%i in ("*.%extension%") do (
         set "foundFile=true"
echo ----------------------------------------------------------------------------------------------------
         echo Found file: %%i
         
             
           )
) else (
   echo Invalid input, please check the extension you provided.
   echo Returning to Start...
   timeout /t 3 /nobreak
   goto start
)
if "%directory%"=="" (
   echo Invalid input, please check the directory path you provided.
   echo Returning to Start...
   timeout /t 3 /nobreak
   goto start
   
)
 
if "!foundFile!"=="true" (
   echo.
   set /p select="If you want to continue type 'C', otherwise to exit type 'X': "
   echo.
   if /i "!select!"=="C" (
      echo Returning to Home..
      goto start
   )
   if /i "!select!"=="X" (
      echo Goodbye!
      exit
   )
)
echo.
pause 