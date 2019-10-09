(defun rank (card) (first card))

(defun suit (card) (second card))

(setf my-hand
  '((3 hearts)
    (5 clubs)
    (2 diamonds)
    (4 diamonds)
    (ace spades)))

(defun count-suit (suit hand)
  (length (remove-if-not #'(lambda (x) (equal suit x))
                         (mapcar #'suit hand))))

(setf colors
  '((clubs black)
    (diamonds red)
    (hearts red)
    (spades black)))

(defun color-of (card)
  (second (assoc (suit card) colors)))

(defun first-red (hand)
  (find-if #'(lambda (x) (equal 'red (color-of x))) hand))

(defun black-cards (hand)
  (remove-if-not #'(lambda (x) (equal 'black (color-of x))) hand))

(defun what-ranks (suit hand)
  (mapcar #'rank 
          (remove-if-not #'(lambda (x) (equal suit (suit x))) hand)))

(setf all-ranks
  '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun higher-rank-p (c1 c2)
  (member (rank c1) (member (rank c2) all-ranks)))

(defun high-card-v1 (hand)
  (let ((ranks (mapcar #'rank hand)))
    (assoc (find-if #'(lambda (x) (member x ranks))
                      (reverse all-ranks))
            hand)))

(defun high-card-v2 (hand)
  (reduce #'(lambda (c1 c2) (if (higher-rank-p c1 c2) c1 c2)) hand))