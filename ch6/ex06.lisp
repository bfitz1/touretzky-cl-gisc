(defun last-element (x)
  (car (last x)))

(defun last-element-reverse (x)
  (car (reverse x)))

(defun last-element-nth (x)
  (nth (- (length x) 1) x))