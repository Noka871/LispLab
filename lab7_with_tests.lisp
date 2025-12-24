;;; Laboratory work #1, Variant 7
;;; Function: remove-deep with built-in testing

(defun remove-deep (x s)
  "Remove element X from list S at all nesting levels"
  (cond
    ((null s) nil)
    ((listp (first s))
     (cons (remove-deep x (first s))
           (remove-deep x (rest s))))
    ((equal (first s) x)
     (remove-deep x (rest s)))
    (t
     (cons (first s) (remove-deep x (rest s))))))

;;; Test suite
(defun run-tests (&optional (verbose t))
  "Run all tests and return T if all pass"
  (let ((results nil)
        (test-count 0)
        (pass-count 0))
    
    (dolist (test '(((a b c) (b c))
                    ((a (a b) c) ((b) c))
                    ((1 2 3) (1 2 3))
                    ((a (b (a c) a) d) ((b (c)) d))))
      (incf test-count)
      (let* ((input (first test))
             (expected (second test))
             (result (remove-deep 'a input))
             (passed (equal result expected)))
        
        (when verbose
          (format t "Test ~d: ~a~%" test-count input)
          (format t "  Expected: ~a~%" expected)
          (format t "  Got:      ~a~%" result)
          (format t "  Status:   ~a~%~%" 
                  (if passed "PASS" "FAIL")))
        
        (when passed (incf pass-count))
        (push (list test-count passed result expected) results)))
    
    (when verbose
      (format t "=== SUMMARY ===~%")
      (format t "Tests run: ~d~%" test-count)
      (format t "Passed:    ~d~%" pass-count)
      (format t "Failed:    ~d~%" (- test-count pass-count))
      (format t "Success:   ~d%%~%" 
              (if (> test-count 0) 
                  (floor (* 100 pass-count) test-count) 
                  0)))
    
    (= pass-count test-count)))

;;; Uncomment to auto-run tests when file loads
;; (format t "~%=== Auto-running tests ===~%")
;; (run-tests)