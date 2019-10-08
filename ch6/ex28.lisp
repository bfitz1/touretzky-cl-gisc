(setf produce '((apple   . fruit)
                (celery  . veggie)
                (banana  . fruit)
                (lettuce . veggie))

(assoc 'banana produce)
;; => (BANANA . FRUIT)

(rassoc 'fruit produce)
;; => (APPLE . FRUIT)

(assoc 'lettuce produce)
;; => (LETTUCE . VEGGIE)

(rassoc 'veggie produce)
;; => (CELERY . VEGGIE)