;;; Variant 7 - extended test version

(load "lab7.lisp")  ; Load main functions

(defun run-extended-tests ()
  (format t "~%=== Extended Tests ===~%~%")
  
  (format t "1. More summa_digits tests:~%")
  (dolist (n '(0 5 99 1000 9999))
    (format t "   (~4d) -> ~2d~%" n (summa_digits n)))
  
  (format t "~%2. More f tests:~%")
  (dolist (lst '(() (1) (-1) (1 2 3) (-1 -2 -3) (0 -5 10 -15)))
    (format t "   f(~15a) = ~a~%" lst (f lst)))
  
  (format t "~%3. More f-change-sign tests:~%")
  (dolist (lst '((1) (1 -2) (1 (2 -3) 4) (-10 20 (30 -40))))
    (format t "   f-change-sign(~20a) = ~a~%" lst (f-change-sign lst)))
  
  (format t "~%=== All extended tests completed ===~%")
  t)

(run-extended-tests)