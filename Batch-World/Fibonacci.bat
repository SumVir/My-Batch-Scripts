@echo off 
setlocal enabledelayedexpansion

set /p num="Enter a fibonnaci chain number: "
set a=0
set b=1

echo Fibonacci array:
for /l %%i in (1, 1, %num%) do (
      echo !a!
      set /a "next=a+b"
      set "a=!b!"
      set "b=!next!"
)

pause