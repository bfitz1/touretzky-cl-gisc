(setf a '(soap water))

(union a '(no soap radio))
;; => (water no soap radio)

(intersection a (reverse a))
;; => (soap water)

(set-difference a '(stop for water))
;; => (soap stop for water)

(set-difference a a)
;; => nil

(member 'soap a)
;; => (soap water)

(member 'water a)
;; => (water)

(member 'washcloth a)
;; => nil