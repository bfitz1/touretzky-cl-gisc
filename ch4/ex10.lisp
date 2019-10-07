(defun constrain-cond (x max min)
  (cond ((< x min) min)
        ((> x max) max)
        (t x)))

(defun constrain-if (x max min)
  (if (< x min) min (if (> x max) max x)))