;;; Laboratory work #1, Variant 7
;;; Functions: summa_digits and f

;;; FUNCTION 1: summa_digits
(defun summa_digits (n)
  (cond
    ((< n 10) n)
    (t (+ (mod n 10) 
          (summa_digits (truncate n 10))))))

;;; FUNCTION 2: f (main version) - только перестановка
(defun f (s)
  (append
    (remove-if-not #'minusp s)   ; Отрицательные (без изменения знака)
    (remove-if #'minusp s)))     ; Положительные (без изменения знака)

;;; FUNCTION 2: f (recursive version) - только перестановка
(defun f-recursive (s)
  (labels ((helper (lst neg pos)
             (cond
               ((null lst) (append (reverse neg) (reverse pos)))
               ((< (first lst) 0)
                (helper (rest lst) 
                        (cons (first lst) neg) 
                        pos))
               (t
                (helper (rest lst)
                        neg
                        (cons (first lst) pos))))))
    (helper s nil nil)))

;;; TEST FUNCTION
(defun test-all ()
  (format t "~%~%=== TESTING VARIANT 7 ===~%~%")
  
  (format t "Function 1: summa_digits~%")
  (format t "  (summa_digits 0) -> ~a~%" (summa_digits 0))
  (format t "  (summa_digits 5) -> ~a~%" (summa_digits 5))
  (format t "  (summa_digits 123) -> ~a~%" (summa_digits 123))
  (format t "  (summa_digits 1001) -> ~a~%~%" (summa_digits 1001))
  
  (format t "Function 2: f (перестановка отрицательных в начало)~%")
  (format t "  (f '(4 -8 6 -9 -7)) -> ~a~%" (f '(4 -8 6 -9 -7)))
  (format t "  (f '()) -> ~a~%" (f '()))
  (format t "  (f '(1 2 3)) -> ~a~%" (f '(1 2 3)))
  (format t "  (f '(-1 -2 -3)) -> ~a~%" (f '(-1 -2 -3)))
  (format t "  (f '(0 -5 10 -15)) -> ~a~%~%" (f '(0 -5 10 -15)))
  
  (format t "Function 2 (recursive): f-recursive~%")
  (format t "  (f-recursive '(4 -8 6 -9 -7)) -> ~a~%" (f-recursive '(4 -8 6 -9 -7)))
  
  (format t "~%=== ALL TESTS COMPLETED ===~%")
  t)

;;; Auto-run tests
(test-all)