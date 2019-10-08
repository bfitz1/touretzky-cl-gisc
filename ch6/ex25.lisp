(defun proper-subsetp (x y)
  (and (subsetp x y)
       (not (subsetp y x))))