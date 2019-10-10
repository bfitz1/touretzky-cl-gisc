(defun sum-tree (x)
  (cond ((numberp x) x)
        ((atom x) 0)
        (t (+ (sum-tree (car x)) (sum-tree (cdr x))))))