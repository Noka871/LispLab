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