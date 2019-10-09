(setf english '(one two three four five))

(setf french '(un deux trois quatre cinq))

(setf spanish '(uno dos tres quatro cinco))


(setf dictionary (mapcar #'list english french spanish))