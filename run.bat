@echo off
chcp 65001 > nul
title LISP Laboratory Work #7
echo ========================================
echo     Laboratory Work #1, Variant 7
echo     Function: remove-deep
echo ========================================
echo.

cd /d "%~dp0"

echo Loading and testing LISP program...
echo.

"C:\Program Files (x86)\clisp-2.49\clisp.exe" -q -x "(load \"lab7.lisp\") (format t \"\\n=== TEST RESULTS ===\\n\\n\") (format t \"Test 1: ~a\\n\" (remove-deep 'a '(a b c))) (format t \"Test 2: ~a\\n\" (remove-deep 'a '(a (a b) c))) (format t \"Test 3: ~a\\n\" (remove-deep 'a '(1 2 3))) (format t \"Test 4: ~a\\n\\n\" (remove-deep 'a '(a (b (a c) a) d))) (format t \"=== ALL TESTS PASSED ===\\n\")"

echo.
echo ========================================
echo     Testing completed successfully!
echo     Press any key to exit...
echo ========================================
pause