(defun every-other (x)
  (cond ((null x) nil)
        (t (cons (car x) (every-other (cddr x))))))