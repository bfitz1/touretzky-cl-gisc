(defun it-reverse (x)
  (let ((z nil))
    (dolist (e x z)
      (push e z))))