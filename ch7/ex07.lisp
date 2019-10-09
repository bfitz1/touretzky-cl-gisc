(defun flip (x)
  (mapcar #'(lambda (y) (if (equal y 'up) 'down 'up)) x))