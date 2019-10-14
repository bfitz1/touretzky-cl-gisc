(defun it-length (x)
  (let ((len 0))
    (dolist (e x len)
      (incf len))))