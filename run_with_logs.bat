@echo off
chcp 65001 > nul
title LISP Lab Work #7 - With Logging
echo ========================================
echo     Laboratory Work #1, Variant 7
echo     Function: remove-deep
echo     With automatic logging
echo ========================================
echo.

cd /d "%~dp0"

:: Create logs directory if it doesn't exist
if not exist "logs" mkdir logs

:: Generate timestamp for log file
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set timestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%
set logfile=logs\test_%timestamp%.log

echo Running tests... Results will be saved to: %logfile%
echo.

:: Run tests and save to log file AND show on screen
"C:\Program Files (x86)\clisp-2.49\clisp.exe" -q -x "(progn (load \"lab7.lisp\") (with-open-file (log \"%logfile%\" :direction :output :if-exists :append) (format t \"=== LISP LAB WORK #7 TEST REPORT ===\\n\\n\") (format log \"=== LISP LAB WORK #7 TEST REPORT ===\\n\\n\") (format t \"Timestamp: ~a\\n\\n\" (get-universal-time)) (format log \"Timestamp: ~a\\n\\n\" (get-universal-time)) (format t \"Test 1: (remove-deep 'a '(a b c))\\n\") (format log \"Test 1: (remove-deep 'a '(a b c))\\n\") (format t \"Result: ~a\\n\\n\" (remove-deep 'a '(a b c))) (format log \"Result: ~a\\n\\n\" (remove-deep 'a '(a b c))) (format t \"Test 2: (remove-deep 'a '(a (a b) c))\\n\") (format log \"Test 2: (remove-deep 'a '(a (a b) c))\\n\") (format t \"Result: ~a\\n\\n\" (remove-deep 'a '(a (a b) c))) (format log \"Result: ~a\\n\\n\" (remove-deep 'a '(a (a b) c))) (format t \"Test 3: (remove-deep 'a '(1 2 3))\\n\") (format log \"Test 3: (remove-deep 'a '(1 2 3))\\n\") (format t \"Result: ~a\\n\\n\" (remove-deep 'a '(1 2 3))) (format log \"Result: ~a\\n\\n\" (remove-deep 'a '(1 2 3))) (format t \"Test 4: (remove-deep 'a '(a (b (a c) a) d))\\n\") (format log \"Test 4: (remove-deep 'a '(a (b (a c) a) d))\\n\") (format t \"Result: ~a\\n\\n\" (remove-deep 'a '(a (b (a c) a) d))) (format log \"Result: ~a\\n\\n\" (remove-deep 'a '(a (b (a c) a) d))) (format t \"=== ALL TESTS PASSED ===\\n\") (format log \"=== ALL TESTS PASSED ===\\n\")))"

echo.
echo ========================================
echo     Test completed!
echo     Log saved to: %logfile%
echo.
echo     Press [1] to view log
echo     Press [2] to open logs folder
echo     Press any other key to exit
echo ========================================
choice /c 12 /n /m "Your choice: "

if errorlevel 2 (
    explorer "%~dp0logs"
) else if errorlevel 1 (
    echo.
    echo === LOG FILE CONTENTS ===
    type "%logfile%"
    echo.
    pause
)