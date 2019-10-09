(defun my-member (e x)
  (cond ((null x) nil)
        ((equal e (first x)) x)
        (t (my-member e (rest x)))))