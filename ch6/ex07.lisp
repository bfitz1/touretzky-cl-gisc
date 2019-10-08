(defun next-to-last (x)
  (second (reverse x)))

(defun next-to-last-nth (x)
  (nth (- (length x) 2) x))