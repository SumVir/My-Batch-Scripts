@echo off 
color 3

echo Welcome to Copier App !! by SaidSecurity.com

:inputA
cls
echo Home
set /p a="Please, Paste path of file you want to copy: "
if "%a%" == "" (
  echo Invalid input, check file path!
  pause 
  goto inputA
) 

if not exist "%a%" (
   echo Error: Can't find the specified filepath!, check filepath!
   pause 
   goto inputA
)

:inputB
cls
set /p b="Please, Paste path of destination: "
if "%b%" == "" (
  echo Invalid input, check destination path!
  pause 
  goto inputB
) 

if not exist "%b%" (
   echo Error: Can't find the specified destination!, check the d estination path!
   pause 
   goto inputB
)
echo ------------------------------
copy "%a%" "%b%"
echo ------------------------------
if %errorlevel% == 0 (
  echo Good News, Succesfull Operation!
  set /p back="To back to main menu type "C", To exit app type "X": "
)
if /i "%back%" == "X" (
  echo GoodBye!
  timeout /t 5 /nobreak
  exit
) else (
  goto inputA
)




pause
