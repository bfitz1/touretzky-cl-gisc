(setf family
 '((colin nil nil)
   (deirdre nil nil)
   (arthur nil nil)
   (kate nil nil)
   (frank nil nil)
   (linda nil nil)
   (suzanne colin deirdre)
   (bruce arthur kate)
   (charles arthur kate)
   (david arthur kate)
   (ellen arthur kate)
   (george frank linda)
   (hillary frank linda)
   (andre nil nil)
   (tamara bruce suzanne)
   (vincent bruce suzanne)
   (wanda nil nil)
   (ivan george ellen)
   (julie george ellen)
   (marie george ellen)
   (nigel andre hillary)
   (frederick nil tamara)
   (zelda vincent wanda)
   (joshua ivan wanda)
   (quentin nil nil)
   (robert quentin julie)
   (olivia nigel marie)
   (peter nigel marie)
   (erica nil nil)
   (yvette robert zelda)
   (diane peter erica)))


(defun father (person)
  (second (assoc person family)))

(defun mother (person)
  (third (assoc person family)))

(defun parents (person)
  (remove-if #'null (rest (assoc person family))))

(defun children (person)
  (mapcar #'first
          (remove-if-not #'(lambda (x) (member person (rest x)))
                         family)))

(defun siblings (person)
  (remove-if #'(lambda (x) (equal person x))
             (union (children (father person))
                    (children (mother person)))))

(defun mapunion (f x) (reduce #'union (mapcar f x)))

(defun grandparents (person)
  (mapunion #'parents (parents person)))

(defun cousins (person)
  (mapunion #'children (mapunion #'siblings (parents person))))

(defun descended-from (person ancestor)
  (cond ((null person) nil)
        ((member ancestor (parents person)) t)
        (t (or (descended-from (father person) ancestor)
               (descended-from (mother person) ancestor)))))

(defun ancestors (person)
  (cond ((null person) nil)
        (t (append (parents person)
                   (mapunion #'ancestors
                             (list (father person) (mother person)))))))

(defun generation-gap (person ancestor)
  (let ((gap (generation-gap-helper person ancestor)))
    (if (null gap) nil (length gap))))

(defun generation-gap-helper (person ancestor)
  (cond ((not (descended-from person ancestor)) nil)
        ((member ancestor (parents person)) (list ancestor))
        (t (let ((father-ancestors (generation-gap-helper (father person) ancestor))
                 (mother-ancestors (generation-gap-helper (mother person) ancestor)))
             (if (> (length father-ancestors) (length mother-ancestors))
                 (cons (father person) father-ancestors)
                 (cons (mother person) mother-ancestors))))))


;; Answering some questions:
;;
;; (descended-from 'robert 'deirdre)
;; => NIL
;;
;; (ancestors 'yvette)
;; => (ROBERT ZELDA GEORGE ELLEN LINDA FRANK JULIE QUENTIN VINCENT
;;     WANDA DEIRDRE COLIN ARTHUR KATE SUZANNE BRUCE)
;;
;; (generation-gap 'olivia 'frank)
;; => 3
;;
;; (cousins 'peter)
;; => (ROBERT JOSHUA)
;;
;; (grandparents 'olivia)
;; => (HILLARY ANDRE GEORGE ELLEN)