(defun add-nums (n)
  (cond ((zerop n) 0)
        (t (+ n (add-nums (- n 1))))))