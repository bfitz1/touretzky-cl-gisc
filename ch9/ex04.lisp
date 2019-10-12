;; I'm not splitting hairs about quantifying "bottles" properly.
(defun ninety-nine-bottles (n)
  (cond ((zerop n)
         (format t "~&No more bottles of beer on the wall,")
         (format t "~&no more bottles of beer!")
         (format t "~&We've taken them down and passed them around;")
         (format t "~&now we're drunk and passed out!"))
        (t
         (format t "~&~A bottles of beer on the wall," n)
         (format t "~&~A bottles of beer!" n)
         (format t "~&Take one down, pass it around,")
         (format t "~&~A bottles of beer on the wall.~%~%" (- n 1))
         (ninety-nine-bottles (- n 1)))))