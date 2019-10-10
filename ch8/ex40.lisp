(defun count-cons (x)
  (cond ((atom x) 0)
        (t (+ 1
               (count-cons (car x))
               (count-cons (cdr x))))))