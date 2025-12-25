@echo off
chcp 65001 > nul
title Lab Work #1 - Real Variant 7
echo ========================================
echo     Laboratory Work #1
echo     Real Variant 7
echo     Functions: summa_digits and f
echo ========================================
echo.

cd /d "C:\Users\Admin\Desktop\LispLab"

echo Loading and testing LISP program...
echo.

"C:\Program Files (x86)\clisp-2.49\clisp.exe" -q -x "(load \"lab7.lisp\") (test-all)"

echo.
echo ========================================
echo     Testing completed successfully!
echo     Press any key to exit...
echo ========================================
pause