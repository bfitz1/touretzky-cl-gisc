(setf database
  '((b1 shape brick)
    (b1 color green)
    (b1 size small)
    (b1 supported-by b2)
    (b1 supported-by b3)
    (b2 shape brick)
    (b2 color red)
    (b2 size small)
    (b2 supports b1)
    (b2 left-of b3)
    (b3 shape brick)
    (b3 color red)
    (b3 size small)
    (b3 supports b1)
    (b3 right-of b2)
    (b4 shape pyramid)
    (b4 color blue)
    (b4 size large)
    (b4 supported-by b5)
    (b5 shape cube)
    (b5 color green)
    (b5 size large)
    (b5 supports b4)
    (b6 shape brick)
    (b6 color purple)
    (b6 size large)))

(defun match-element (s1 s2)
  (or (equal s1 s2) (equal '? s2)))

(defun match-triple (assertion pattern)
  (every #'(lambda (x) x) (mapcar #'match-element assertion pattern)))

(defun fetch (pattern)
  (remove-if-not #'(lambda (x) (match-triple x pattern)) database))

;; (fetch '(b4 shape ?))
;; => ((b4 shape pyramid))
;;
;; (fetch '(? shape brick))
;; => ((b1 shape brick) (b2 shape brick) (b3 shape brick) (b6 shape brick))
;;
;; (fetch '(b2 ? b3))
;; => ((b2 left-of b3))
;;
;; (fetch '(b4 ? ?))
;; => ((b4 shape pyramid) (b4 color blue) (b4 size large) (b4 supported-by b5))

(defun color-of (block) (list block 'color '?))

(defun supporters (block)
  (mapcar #'third (fetch (list block 'supported-by '?))))

(defun supp-cube (block)
  (find-if #'(lambda (x) x)
           (mapcar #'(lambda (b) (fetch (list b 'shape 'cube)))
                   (supporters block))))

(defun desc1 (block) (fetch (list block '? '?)))

(defun desc2 (block) (mapcar #'cdr (desc1 block)))

(defun description (block) (reduce #'append (desc2 block)))

;; (description 'b1)
;; => (shape brick color green size small supported-by b2 supported-by b3)
;;
;; (description 'b4)
;; => (shape pyramid color blue size large supported-by b5)

(setf database 
  (append '((b1 material wood) (b2 material plastic)) database))