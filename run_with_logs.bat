@echo off
cd /d "%~dp0"
if not exist logs mkdir logs
set t=%time:~0,2%%time:~3,2%
clisp -q -i lab7.lisp > logs\output_%t%.log 2>&1
type logs\output_%t%.log
echo. & echo Log: logs\output_%t%.log
pause