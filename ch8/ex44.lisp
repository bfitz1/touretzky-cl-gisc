(defun tree-depth (x)
  (cond ((atom x) 0)
        (t (+ 1 (max (tree-depth (car x))
                     (tree-depth (cdr x)))))))