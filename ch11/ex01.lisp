(defun it-member (elem x)
  (dolist (e x nil)
    (if (equal elem e) (return t))))