(defun it-assoc (key x)
  (dolist (e x nil)
    (if (equal key (car e)) (return e))))