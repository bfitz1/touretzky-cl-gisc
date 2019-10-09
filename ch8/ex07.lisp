(defun rec-member (e x)
  (cond ((null x) nil)
        ((equal e (car x)) t)
        (t (rec-member e (cdr x)))))