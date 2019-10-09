(defun count-odd-conditional (x)
  (cond ((null x) 0)
        ((oddp (first x)) (+ 1 (count-odd-conditional (rest x))))
        ((t (count-odd-conditional (rest x))))))

(defun count-odd-augmented (x)
  (cond ((null x) 0)
        (t (+ (if (oddp (first x)) 1 0)
              (count-odd-augmented (rest x))))))