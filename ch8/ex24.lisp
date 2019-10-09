(defun count-down (n)
  (cond ((zerop n) nil)
        (t (cons n (count-down (- n 1))))))