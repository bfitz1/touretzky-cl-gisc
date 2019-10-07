(defun f (n)
  (cond ((and (oddp n) (> n 0)) (* n n))
        ((and (oddp n) (< n 0)) (+ n n))
        (t (/ n 2))))