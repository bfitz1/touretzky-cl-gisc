(defun rec-assoc (e x)
  (cond ((null x) nil)
        ((equal e (car x)) x)
        (t (rec-assoc e (cdr x)))))