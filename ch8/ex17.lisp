(defun find-first-odd (x)
  (cond ((null x) nil)
        ((oddp (car x)) (car x))
        (t (find-first-odd (cdr x)))))