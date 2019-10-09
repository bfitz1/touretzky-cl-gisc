;; We can change the end test...
(defun count-down-end-test (n)
  (cond ((equal n -1) nil)
        (t (cons n (count-down-end-test (- n 1))))))

;; Or we can change the end value.
(defun count-down-end-value (n)
  (cond ((zerop n) (list 0))
        (t (cons n (count-down-end-value (- n 1))))))

