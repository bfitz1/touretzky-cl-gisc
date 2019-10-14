(defun it-nth (n x)
  (let ((i 0))
    (dolist (e x nil)
      (if (equal i n) (return e) (incf i)))))