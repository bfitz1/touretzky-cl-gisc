(defun count-atoms (x)
  (cond ((atom x) 1)
        (t (+ (count-atoms (car x))
              (count-atoms (cdr x))))))