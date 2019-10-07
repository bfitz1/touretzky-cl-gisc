(defun demorgan-and-3 (x y z)
  (not (or (not x) (not y) (not z))))

(defun demorgan-or-3 (x y z)
  (not (and (not x) (not y) (not z))))