@echo off
title LISP Lab - Log Viewer
echo ========================================
echo     Log Viewer for Laboratory Work #7
echo ========================================
echo.

cd /d "%~dp0"

if not exist "logs" (
    echo No logs directory found!
    echo Run 'run_with_logs.bat' first to generate logs.
    pause
    exit /b 1
)

echo Available log files:
echo --------------------
dir /b logs\*.log

echo.
set /p filename="Enter log filename (or press Enter for latest): "

if "%filename%"=="" (
    for /f "delims=" %%i in ('dir /b /od logs\*.log') do set latest=%%i
    set "filename=%latest%"
)

if not exist "logs\%filename%" (
    echo File not found: logs\%filename%
    pause
    exit /b 1
)

echo.
echo ===== CONTENTS OF %filename% =====
type "logs\%filename%"
echo ===== END OF FILE =====
echo.
pause