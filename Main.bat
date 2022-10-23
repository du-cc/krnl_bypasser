@echo off
title KRNL Bypasser v2 (renewed version)
echo first
start https://cdn.krnl.place/getkey
echo Do captcha and press any key here
pause >nul
timeout /t 015 /nobreak >nul
echo second
start https://cdn.krnl.place/getkey_scripts
echo Do captcha and press any key here
pause >nul
timeout /t 015 /nobreak >nul
echo third
start https://cdn.krnl.place/getkey.php
echo Do captcha and press any key here
pause >nul
timeout /t 015 /nobreak >nul
echo fourth
start https://cdn.krnl.place/getkey_games
echo Do captcha and press any key here
pause >nul
timeout /t 015 /nobreak >nul
echo fifth
start https://cdn.krnl.place/interface
echo Done
echo Press any key to quit
pause >nul
exit /b

