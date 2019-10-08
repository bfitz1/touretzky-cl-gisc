(defun swap-first-last (x)
  (append (last x) (butlast (cdr x)) (list (first x))))