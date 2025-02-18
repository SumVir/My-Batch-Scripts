@echo off 
color 30
echo.
echo Logs fetcher by SaidSecurity.com
:: Title and filepath of the log file
set "logfile=C:\Users\PC\OneDrive\Documents\Desktop\log.txt"
echo ==============================================================
echo Saving all log records into "%logfile%" file...
echo ==============================================================

:: Create the log file and clean
echo .> "%logfile%"

:: Extract all logs and save into logfile using Event Viewer commands
wevtutil qe System /f:text /q:"*" >> "%logfile%"
wevtutil qe Application /f:text /q:"*" >> "%logfile%"
wevtutil qe Security /f:text /q:"*" >> "%logfile%"

if exist "%logfile%" (
       echo ==============================================================
       echo Log records have been saved into "%logfile%" file successfully.
       echo ==============================================================
) else (
       echo !!! !!!
       echo An error happened during saving log records..
       echo !!! !!!
)
pause
