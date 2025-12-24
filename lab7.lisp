;;; Laboratory work #1, Variant 7
;;; Function: remove-deep

(defun remove-deep (x s)
  (cond
    ((null s) nil)
    ((listp (first s))
     (cons (remove-deep x (first s))
           (remove-deep x (rest s))))
    ((equal (first s) x)
     (remove-deep x (rest s)))
    (t
     (cons (first s) (remove-deep x (rest s))))))

;;; Test cases (uncomment to run manually):
;; (remove-deep 'a '(a b c))
;; (remove-deep 'a '(a (a b) c))
;; (remove-deep 'a '(1 2 3))
;; (remove-deep 'a '(a (b (a c) a) d))