(defun flatten (x)
  (cond ((null x) nil)
        ((atom (car x)) (cons (car x) (flatten (cdr x))))
        (t (append (flatten (car x))
                   (flatten (cdr x))))))