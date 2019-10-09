;; Stop when x is empty. Its sum is 0. Step by adding the CAR of a
;; non-empty list to the sum of the CDR. 
(defun add-up (x)
  (cond ((null x) 0)
        (t (+ (car x) (add-up (cdr x))))))

;; Bonus
(defun add-up (x) (apply #'+ x))