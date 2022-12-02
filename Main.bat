@echo off
setlocal
:menu
cls
title KRNL key system Bypasser v3.0
echo KRNL key system Bypasser v3.0
echo =================
echo Menu
echo 1. Bypass key system
echo 2. Exit
echo =================
set /p choice=Menu^> 
if %choice%==1 goto bypass
if %choice%==2 exit /b
echo Invalid choice
timeout /t 1 /nobreak >nul
goto menu

:bypass
cls
echo Fetching data...
md KRNLBypasser
cd KRNLBypasser
curl.exe -s -o "krnlc4.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlc4/1
set /p krnlc4=<krnlc4.txt
curl.exe -s -o "krnlkey.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlkey/1
set /p krnlkey=<krnlkey.txt
curl.exe -s -o "thekrnlkey.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/thekrnlkey/1
set /p thekrnlkey=<thekrnlkey.txt
curl.exe -s -o "krnlc3.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlc3/1
set /p krnlc3=<krnlc3.txt
set string=%krnlc4%
call :parsejson
set c4=%destination%
set string=%krnlkey%
call :parsejson
set key=%destination%
set string=%thekrnlkey%
call :parsejson
set thekey=%destination%
set string=%krnlc3%
call :parsejson
set c3=%destination%
echo Done!
echo Bypassing...
echo.
echo =================
echo Captcha 1
start https://cdn.krnl.place/getkey.php
echo Press any key if done captcha
pause >nul
echo Wait...
timeout /t 20 /nobreak >nul
echo Captcha 2
start %c4%
echo Press any key if done captcha
pause >nul
echo Wait...
timeout /t 20 /nobreak >nul
echo Captcha 3
start %key%
echo Press any key if done captcha
pause >nul
echo Wait...
timeout /t 20 /nobreak >nul
echo Captcha 4
start %thekey%
echo Press any key if done captcha
pause >nul
echo Wait...
timeout /t 20 /nobreak >nul
echo Captcha 5
start %c3%
echo Press any key if done captcha
pause >nul
echo Wait...
timeout /t 20 /nobreak >nul
start https://cdn.krnl.place/getkey.php
echo.
echo Done! Please wait...
cd..
rmdir /s /q KRNLBypasser
echo Press any key to exit
pause >nul
exit /b


:parsejson
set string=%string:"=%
set "string=%string:~2,-2%"
set "string=%string:: ==%"
set "%string:, =" & set "%"
goto :eof
