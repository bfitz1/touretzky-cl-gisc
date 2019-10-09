(defun rec-nth (n x)
  (cond ((null x) nil)
        ((zerop n) (car x))
        (t (rec-nth (- n 1) x))))