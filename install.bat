@echo off
title Nilesoft Shell - Install Config
setlocal enabledelayedexpansion

:: Check admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo.
echo === Nilesoft Shell Config Installer ===
echo.

:: Check if Nilesoft Shell is installed
if not exist "C:\Program Files\Nilesoft Shell\shell.dll" (
    echo Nilesoft Shell not found. Installing via winget...
    winget install nilesoft.shell 2>nul
    if !errorlevel! neq 0 (
        echo Failed to install via winget.
        echo Download from: https://nilesoft.org/download
        pause
        exit /b
    )
)

:: Copy config
echo Copying shell.nss...
copy /Y "%~dp0shell.nss" "C:\Program Files\Nilesoft Shell\shell.nss" >nul
if %errorlevel% neq 0 (
    echo Failed to copy config file.
    pause
    exit /b
)

:: Register DLL
echo Registering Nilesoft Shell...
regsvr32 /s "C:\Program Files\Nilesoft Shell\shell.dll"

:: Restart Explorer
echo Restarting Explorer...
taskkill /f /im explorer.exe >nul
timeout /t 2 /nobreak >nul
start explorer.exe

echo.
echo Done! Right-click on desktop or taskbar to test.
echo.
pause
