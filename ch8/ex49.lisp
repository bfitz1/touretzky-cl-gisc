(defun pairings (x y)
  (cond ((null x) nil)
        (t (cons (list (car x) (car y))
                 (pairings (cdr x) (cdr y))))))