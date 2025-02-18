@echo off
echo.
echo === === === === === === ==== === === ===
echo Network info fetcher by SaidSecurity.com
echo === === === === === === ==== === === ===

for /f "tokens=*" %%i in ('ipconfig /all') do (
  echo %%i
)


pause
