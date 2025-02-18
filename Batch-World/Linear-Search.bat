@echo off 
setlocal enabledelayedexpansion

rem define data chain

set items=12 23 34 47 51 67 75 83 95
set /p target="Please, enter a target: " 


rem Linear search
set found=0

for %%i in (%items%) do (
    if %%i == %target% (
              set found=1
              echo Value Found:%%i
              goto end
    )

)
:end
if !found! == 0 echo Value couldn't found
pause
