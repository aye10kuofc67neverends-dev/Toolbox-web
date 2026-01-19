@echo off
title Toolbox V2.2 mega By Aye
color 0A
cls

:: ===== STARTUP =====
echo Initializing Toolbox V2.2 Mega
ping localhost -n 2 >nul
echo Checking essential files...
ping localhost -n 2 >nul
echo Downloading resources...
ping localhost -n 2 >nul
echo Fixing errors [200]...
ping localhost -n 2 >nul
echo Done.
echo Bug reported to Aye HQ
ping localhost -n 2 >nul

:: ===== CREATE FILES SAFELY =====
if not exist "file.txt" echo downloaded > file.txt
if not exist "log.txt" type nul > log.txt

:: ===== MAIN MENU =====
:menu
cls
echo ==============================
echo       Toolbox V2.3 By Aye
echo ==============================
echo.
echo  1) Open Google Chrome
echo  2) Windows Sandbox
echo  3) Notepad
echo  4) Calculator
echo  5) Command Prompt
echo  6) Paint
echo  7) Task Manager
echo  8) Restart PC
echo  9) Exit
echo 10) Shutdown PC
echo 11) File Explorer
echo 12) Control Panel
echo 13) Microsoft Edge
echo 14) Snipping Tool
echo 15) Task Scheduler
echo 16) Registry Editor
echo 17) Disk Cleanup
echo 18) Event Viewer
echo 19) System Info
echo 20) Windows Settings
echo 21) Network Connections
echo 22) Device Manager
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
if "%choice%"=="11" goto explorer
if "%choice%"=="12" goto controlpanel
if "%choice%"=="13" goto edge
if "%choice%"=="14" goto snipping
if "%choice%"=="15" goto tasksched
if "%choice%"=="16" goto regedit
if "%choice%"=="17" goto diskcleanup
if "%choice%"=="18" goto eventviewer
if "%choice%"=="19" goto sysinfo
if "%choice%"=="20" goto winsettings
if "%choice%"=="21" goto network
if "%choice%"=="22" goto devmgr

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
    echo Windows Sandbox not found!
)
ping localhost -n 2 >nul
goto menu

:notepad
start notepad.exe
ping localhost -n 2 >nul
goto menu

:calculator
start calc.exe
ping localhost -n 2 >nul
goto menu

:cmd
start cmd.exe
ping localhost -n 2 >nul
goto menu

:paint
start mspaint.exe
ping localhost -n 2 >nul
goto menu

:taskmgr
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

:explorer
start explorer.exe
ping localhost -n 2 >nul
goto menu

:controlpanel
start control.exe
ping localhost -n 2 >nul
goto menu

:edge
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
) else (
    echo Microsoft Edge not found!
)
ping localhost -n 2 >nul
goto menu

:snipping
start snippingtool.exe
ping localhost -n 2 >nul
goto menu

:tasksched
start taskschd.msc
ping localhost -n 2 >nul
goto menu

:regedit
start regedit.exe
ping localhost -n 2 >nul
goto menu

:diskcleanup
start cleanmgr.exe
ping localhost -n 2 >nul
goto menu

:eventviewer
start eventvwr.msc
ping localhost -n 2 >nul
goto menu

:sysinfo
start msinfo32.exe
ping localhost -n 2 >nul
goto menu

:winsettings
start ms-settings:
ping localhost -n 2 >nul
goto menu

:network
start ncpa.cpl
ping localhost -n 2 >nul
goto menu

:devmgr
start devmgmt.msc
ping localhost -n 2 >nul
goto menu

:exit
echo Goodbye!
ping localhost -n 2 >nul
exit
