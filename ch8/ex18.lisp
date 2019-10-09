(defun last-element (x)
  (cond ((atom (cdr x)) (car x))
        (t (last-element (cdr x)))))