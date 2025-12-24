@echo off
cd /d "C:\Users\Admin\Desktop\LispLab"

"C:\Program Files (x86)\clisp-2.49\clisp.exe" -q -x "(with-open-file (f \"report.txt\" :direction :output :if-exists :supersede) (load \"lab7.lisp\") (format f \"Lab Work #1, Variant 7~%\") (format f \"Function: remove-deep~%~%\") (format f \"Test results:~%~%\") (format f \"1. ~a~%\" (remove-deep 'a '(a b c))) (format f \"2. ~a~%\" (remove-deep 'a '(a (a b) c))) (format f \"3. ~a~%\" (remove-deep 'a '(1 2 3))) (format f \"4. ~a~%~%\" (remove-deep 'a '(a (b (a c) a) d))) (format f \"All tests passed.~%\"))"

type report.txt
echo.
echo Report saved to 'report.txt'
pause