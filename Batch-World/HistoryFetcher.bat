@echo off

color 30

echo.
:start
setlocal

:: Find Chrome's history filepath in the system
set "history_path=C:\Users\PC\AppData\Local\Google\Chrome\User Data\Profile 1\History"

:: Get target path from the user
set /p destination="Please, enter the path where files will be saved to: "

:: Check if target is valid or invalid 
if exist "%history_path%" (
    echo Found Google History file

    :: Copy the file to the path defined by the user
    copy "%history_path%" "%destination%\History_copy"

    if errorlevel 1 (
        echo Some errors happened during copying Google files
        goto start
    ) else (
        echo Successfully copied! : "%destination%\History_copy"
    )
) else (
    echo Couldn't find the filepath
    goto start 
)
start https://inloop.github.io/sqlite-viewer/
start %destination%
pause
  
