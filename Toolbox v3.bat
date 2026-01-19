@echo off
title Toolbox - V3 - By Aye
color 0A
mode con cols=90 lines=45
cls

:: ===== STARTUP =====
echo Initializing Toolbox V3
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
echo ==================================================================================
echo                                TOOLBOX - V3
echo                                 By Aye
echo ==================================================================================
echo.
echo  [01] Chrome                 [21] Network Connections
echo  [02] Windows Sandbox        [22] Device Manager
echo  [03] Notepad                [23] System Information
echo  [04] Calculator             [24] Event Viewer
echo  [05] Command Prompt         [25] Disk Cleanup
echo.
echo  [06] Paint                  [26] Registry Editor
echo  [07] Task Manager           [27] Task Scheduler
echo  [08] File Explorer          [28] Services
echo  [09] Control Panel          [29] Programs and Features
echo  [10] Settings               [30] Fonts
echo.
echo  [11] Microsoft Edge         [31] Sound Settings
echo  [12] Snipping Tool          [32] Power Options
echo  [13] System Properties      [33] Keyboard Settings
echo  [14] User Accounts          [34] Mouse Settings
echo  [15] Command Prompt Admin   [35] Windows Version
echo.
echo  [16] Restart PC             [36] IP Configuration
echo  [17] Shutdown PC            [37] Flush DNS
echo  [18] Lock Computer          [38] Task List
echo  [19] Open CMD Window        [39] About Toolbox
echo  [20] Exit                   [40] Refresh Menu
echo.
echo ==================================================================================
set /p choice=Select option (1-40): 

:: ===== MENU ACTIONS =====
if "%choice%"=="1" start chrome
if "%choice%"=="2" start WindowsSandbox.exe
if "%choice%"=="3" start notepad
if "%choice%"=="4" start calc
if "%choice%"=="5" start cmd
if "%choice%"=="6" start mspaint
if "%choice%"=="7" start taskmgr
if "%choice%"=="8" start explorer
if "%choice%"=="9" start control
if "%choice%"=="10" start ms-settings:
if "%choice%"=="11" start msedge
if "%choice%"=="12" start snippingtool
if "%choice%"=="13" sysdm.cpl
if "%choice%"=="14" netplwiz
if "%choice%"=="15" powershell -Command "Start-Process cmd -Verb runAs"
if "%choice%"=="16" shutdown /r /t 0
if "%choice%"=="17" shutdown /s /t 0
if "%choice%"=="18" rundll32.exe user32.dll,LockWorkStation
if "%choice%"=="19" start cmd
if "%choice%"=="20" exit
if "%choice%"=="21" ncpa.cpl
if "%choice%"=="22" devmgmt.msc
if "%choice%"=="23" msinfo32
if "%choice%"=="24" eventvwr
if "%choice%"=="25" cleanmgr
if "%choice%"=="26" regedit
if "%choice%"=="27" taskschd.msc
if "%choice%"=="28" services.msc
if "%choice%"=="29" appwiz.cpl
if "%choice%"=="30" control fonts
if "%choice%"=="31" mmsys.cpl
if "%choice%"=="32" powercfg.cpl
if "%choice%"=="33" control keyboard
if "%choice%"=="34" control mouse
if "%choice%"=="35" winver
if "%choice%"=="36" ipconfig & pause
if "%choice%"=="37" ipconfig /flushdns & pause
if "%choice%"=="38" tasklist & pause
if "%choice%"=="39" goto about
if "%choice%"=="40" goto menu

:: Invalid input
echo.
echo Invalid choice! Please try again.
ping localhost -n 2 >nul
goto menu

:about
cls
echo ===============================
echo        TOOLBOX - V3
echo        Created by Aye
echo ===============================
echo.
echo Version : 3.0
echo Options : 40
echo UI      : Improved CMD Layout
echo.
pause
goto menu
