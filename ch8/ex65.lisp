(defun tr-count-slices (x)
  (labels ((tr-cs (s y)
             (if (null y)
                 s
                 (tr-cs (+ s 1)
                        (rest y)))))
    (tr-cs 0 x)))

(defun tr-reverse (x)
  (labels ((tr-r (s y)
             (if (null y)
                 s
                 (tr-r (cons (first y) s)
                        (rest y)))))
    (tr-r nil x)))