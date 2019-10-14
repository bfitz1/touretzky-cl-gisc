;; The fact that the termination test passes when I is 5 is definitely
;; more explicit in this version.
(do ((i 0 (+ 1 i)))
    ((equal i 5) i)
    (format t "~&I = ~S" i))