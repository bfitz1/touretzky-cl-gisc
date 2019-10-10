(defun sublists (x)
  (cond ((null x) nil)
        (t (cons x (sublists (cdr x))))))