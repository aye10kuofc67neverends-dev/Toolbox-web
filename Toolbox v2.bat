@echo off
title Toolbox V2.2 By Aye
color 0A
cls

:: ===== STARTUP =====
echo Initializing Toolbox V2...
ping localhost -n 2 >nul
echo Checking essential files...
ping localhost -n 2 >nul
echo Downloading resources...
ping localhost -n 2 >nul
echo Fixing errors [200]...
ping localhost -n 2 >nul
echo Done! 
echo Bug reported to Aye HQ 
ping localhost -n 2 >nul

:: ===== CREATE FILES SAFELY =====
if not exist "file.txt" echo downloaded > file.txt
if not exist "log.txt" type nul > log.txt

:: ===== MAIN MENU =====
:menu
cls
echo ==========================
echo     -----  -----   -----  -     i---     -----     -       -   V2 By Aye
echo       -    -    -  -    - -     i   -    -    -      -    -
echo       -    - - -   - - -  -     ----     -    -        --
echo       -                   -     -   -    -    -       -   -
echo                                 -----    ------      -     -
echo ==========================
echo.
echo 1) Open Google Chrome 
echo 2) Windows Sandbox 
echo 3) Notepad 
echo 4) Calculator 
echo 5) Command Prompt 
echo 6) Paint 
echo 7) Task Manager 
echo 8) Restart PC 
echo 9) Exit 
echo 10) Shutdown PC 
echo.
set /p choice=Choose a number: 

:: ===== MENU SELECTIONS =====
if "%choice%"=="1" goto chrome
if "%choice%"=="2" goto sandbox
if "%choice%"=="3" goto notepad
if "%choice%"=="4" goto calculator
if "%choice%"=="5" goto cmd
if "%choice%"=="6" goto paint
if "%choice%"=="7" goto taskmgr
if "%choice%"=="8" goto restart
if "%choice%"=="9" goto exit
if "%choice%"=="10" goto shutdown

:: Invalid input
echo.
echo ❌ Invalid choice! Please try again.
ping localhost -n 2 >nul
goto menu

:: ===== OPTIONS =====
:chrome
echo Launching Google Chrome...
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe"
) else (
    echo Chrome not found! Make sure it is installed.
)
ping localhost -n 2 >nul
goto menu

:sandbox
echo Launching Windows Sandbox...
if exist "%SystemRoot%\System32\WindowsSandbox.exe" (
    start "" "%SystemRoot%\System32\WindowsSandbox.exe"
) else (
    echo Windows Sandbox not found or not installed!
)
ping localhost -n 2 >nul
goto menu

:notepad
echo Opening Notepad...
start notepad.exe
ping localhost -n 2 >nul
goto menu

:calculator
echo Opening Calculator...
start calc.exe
ping localhost -n 2 >nul
goto menu

:cmd
echo Opening Command Prompt...
start cmd.exe
ping localhost -n 2 >nul
goto menu

:paint
echo Opening Paint...
start mspaint.exe
ping localhost -n 2 >nul
goto menu

:taskmgr
echo Opening Task Manager...
start taskmgr.exe
ping localhost -n 2 >nul
goto menu

:restart
echo Restarting your PC... 
ping localhost -n 3 >nul
shutdown /r /t 0
goto menu

:shutdown
echo Shutting down your PC... 
ping localhost -n 3 >nul
shutdown /s /t 0
goto menu

:exit
echo Goodbye 
ping localhost -n 2 >nul
exit
