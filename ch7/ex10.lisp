(setf note-table
  '((c 1)
    (c-sharp 2)
    (d 3)
    (d-sharp 4)
    (e 5)
    (f 6)
    (f-sharp 7)
    (g 8)
    (g-sharp 9)
    (a 10)
    (a-sharp 11)
    (b 12)))

(defun numbers (note-list)
  (mapcar #'(lambda (x) (second (assoc x note-table))) note-list))

(defun rassoc+ (key table)
  (find-if #'(lambda (x) (equal key (second x))) table))

(defun notes (number-list)
  (mapcar #'(lambda (x) (first (rassoc+ x note-table))) number-list))

;; NUMBERS and NOTES don't compose with themselves because they each
;; accept and return lists of different types.

(defun raise (n number-list)
  (mapcar #'(lambda (x) (+ x n)) number-list))

(defun normalize (number-list)
  (mapcar #'(lambda (x) (cond ((> x 12) (- x 12))
                              ((< x  1) (+ x 12))
                              (t x))) number-list))

(defun transpose (n song)
  (notes (normalize (raise n (numbers song)))))