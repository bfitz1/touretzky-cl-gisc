(defun largest-even (x)
  (cond ((null x) 0)
        (t (max (car x) (largest-even (cdr x))))))