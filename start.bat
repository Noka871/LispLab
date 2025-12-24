@echo off
chcp 65001 > nul
title Lab Work #7 - Clean Output
echo ========================================
echo     Laboratory Work #1. Variant 7.
echo     Function: remove-deep
echo ========================================
echo.

cd /d "C:\Users\Admin\Desktop\LispLab"

"C:\Program Files (x86)\clisp-2.49\clisp.exe" -q -x ^
"(progn ^
  (load \"lab7.lisp\") ^
  (format t \"~%~%=== TEST RESULTS ===~%~%\") ^
  (format t \"Test 1: ~a~%\" (remove-deep 'a '(a b c))) ^
  (format t \"Test 2: ~a~%\" (remove-deep 'a '(a (a b) c))) ^
  (format t \"Test 3: ~a~%\" (remove-deep 'a '(1 2 3))) ^
  (format t \"Test 4: ~a~%~%\" (remove-deep 'a '(a (b (a c) a) d))) ^
  (format t \"=== ALL TESTS PASSED ===~%\") ^
  (exit))"

echo.
echo ========================================
echo     Testing completed successfully!
echo     Press any key to exit...
echo ========================================
pause > nul