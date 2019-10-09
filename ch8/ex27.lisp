(defun square-list (x)
  (cond ((null x) nil)
        (t (cons (* (car x) (car x)) (square-list (cdr x))))))