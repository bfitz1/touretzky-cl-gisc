(defun gtest (x y)
  (or (> x y)
      (zerop x)
      (zerop y)))

(defun gtest-if (x y)
  (if (> x y)
      t
      (if (zerop x)
          t
          (zerop y))))

(defun gtest-cond (x y)
  (cond ((> x y) t)
        ((zerop x) t)
        (t (zerop y))))