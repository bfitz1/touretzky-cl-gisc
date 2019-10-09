(defun my-assoc (e x)
  (cond ((null x) nil)
        ((equal e (first (first x))) (first x))
        (t (my-assoc e (rest x)))))