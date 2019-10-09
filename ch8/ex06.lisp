(defun alloddp (x)
  (cond ((null x) t)
        ((evenp (car x)) nil)
        (t (alloddp (cdr x)))))