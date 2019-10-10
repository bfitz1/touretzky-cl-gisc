(defun factor-tree (n)
  (factor-tree-help n 2))

(defun factor-tree-help (n p)
  (cond ((equal n p) p)
        ((zerop (rem n p))
         (list n p (factor-tree-help (/ n p) p)))
        (t (factor-tree-help n (+ p 1)))))