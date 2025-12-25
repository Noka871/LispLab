;;; Variant 7 functions

(defun summa_digits (n)
  (if (< n 10)
      n
      (+ (mod n 10)
         (summa_digits (truncate n 10)))))

(defun f (s)
  (append (remove-if-not #'minusp s)
          (remove-if #'minusp s)))

(defun f-change-sign (s)
  (cond ((null s) nil)
        ((atom s) (- s))
        (t (cons (f-change-sign (car s))
                 (f-change-sign (cdr s))))))

;;; Tests
(format t "Testing:~%")
(format t "summa_digits 123 = ~a~%" (summa_digits 123))
(format t "f '(4 -8 6 -9 -7) = ~a~%" (f '(4 -8 6 -9 -7)))
(format t "f-change-sign '(1 -2 3) = ~a~%" (f-change-sign '(1 -2 3)))