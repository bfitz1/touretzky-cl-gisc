(defun space-over (n)
  (labels ((so (m)
             (cond ((zerop m) nil)
                   (t (format t " ")
                      (so (- m 1))))))
    (if (< n 0)
        (format t "Error!")
        (so n))))

(defun test (n)
  (format t "~%>>>")
  (space-over n)
  (format t "<<<"))

(defun plot-one-point (plotting-string y-val)
  (space-over y-val)
  (format t "~A~%" plotting-string))

(defun plot-points (plotting-string points)
  (mapcar #'(lambda (y-val) (plot-one-point plotting-string
                                            y-val))
          points)
  nil)

(defun generate (m n)
  (if (> m n)
      nil
      (cons m (generate (+ m 1) n))))

(defun make-graph ()
  (format t "What's your function? ")
  (let ((func (read)))
    (format t "Where to start? ")
    (let ((start (read)))
      (format t "Where to end? ")
      (let ((end (read)))
        (format t "What to plot? ")
          (let ((plotting-string (read)))
            (plot-points plotting-string
                         (mapcar func (generate start end))))))))

(defun square (n) (* n n))