(defun compare (x y)
  (cond ((equal x y) ’numbers-are-the-same)
        ((< x y) ’first-is-smaller)
        ((> x y) ’first-is-bigger)))

(defun compare-if (x y)
  (if (equal x y)
      'numbers-are-the-same
      (if (< x y)
          'first-is-smaller
          'first-is-bigger)))

(defun compare-and-or (x y)
  (or (and (equal x y) 'numbers-are-the-same)
      (and (< x y) 'first-is-smaller)
      'first-is-bigger))