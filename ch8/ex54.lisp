(defun huge (n) (power n n))

(defun power (n m)
  (cond ((zerop m) 1)
        (t (* n (power n (- m 1))))))