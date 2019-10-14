(defun it-union (x y)
  (let ((z y))
    (dolist (e x z)
      (unless (member e z) (setf z (cons e z))))))