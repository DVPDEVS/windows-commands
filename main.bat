@echo off 
title Input mapping 
chcp 65001 >nul 
mode 120,50 >nul 

rem colour map: https://i.sstatic.net/DMHbn.png 

:start 
color 0D 
cls 
call :banner 
echo  	1) ping vg.no 
echo  	2) powershell 
echo        ^^C) exit 
set /p input= %BS% ^>  	
if /I %input% EQU 1 call :ping_vg 
if /I %input% EQU 2 call :psc 
if /I %input% EQU ^C goto eof 
cls 
goto start 

:psc 
cls 
color 0A 
cls 
powershell 
EXIT /B 

:ping_vg 
cls 
ping vg.no 
pause 
EXIT /B 

:banner 
echo.
echo.
echo:           TESTTESTTEST    TESTTESTTEST      TESTTEST      TESTTESTTEST
echo:               TEST        TEST            TEST                TEST
echo:               TEST        TESTTEST          TESTTEST          TEST
echo:               TEST        TEST                    TEST        TEST
echo:               TEST        TESTTESTTEST      TESTTEST          TEST
echo.
echo.

