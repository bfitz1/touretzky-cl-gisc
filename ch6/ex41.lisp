;; This is where I begin to miss Scheme's square brackets. Or
;; Clojure's maps. Some syntactic differentiation is nice.
(setf rooms 
  '((living-room
      (north front-stairs)
      (south dining-room)
      (east kitchen))
    (upstairs-bedroom
      (west library)
      (south front-stairs))
    (dining-room
      (north living-room)
      (east pantry)
      (west downstairs-bedroom))
    (kitchen
      (west living-room)
      (south pantry))
    (pantry
      (north kitchen)
      (west dining-room))
    (downstairs-bedroom
      (north back-stairs)
      (east dining-room))
    (back-stairs
      (south downstairs-bedroom)
      (north library))
    (front-stairs
      (north upstairs-bedroom)
      (south living-room))
    (library
      (east upstairs-bedroom)
      (south back-stairs))))

(defun set-robbie-location (place)
  "Moves Robbie to PLACE by setting the variable LOC"
  (setf loc place))

(set-robbie-location 'pantry)

(defun choices (room)
  (cdr (assoc room rooms)))

(defun look (direction room)
  (second (assoc direction (choices room))))

(defun how-many-choices ()
  (length (choices loc)))

(defun upstairsp (room)
  (or (equal room 'library) (equal room 'upstairs-bedroom)))

(defun onstairsp (room)
  (or (equal room 'front-stairs) (equal room 'back-stairs)))

(defun where ()
  (cond ((upstairsp loc)
         (list 'robbie 'is 'upstairs 'in 'the loc))
        ((onstairsp loc)
         (list 'robbie 'is 'on 'the loc))
        (t 
         (list 'robbie 'is 'downstairs 'in 'the loc))))

(defun move (direction)
  (let ((room (look direction loc)))
    (if room
       (and (set-robbie-location room) (where))
       '(ouch! robbie hit a wall))))

;; This is annoying to do without the figure, but our approach
;; should look something like this:
;;
;; (move west)
;; (move west)
;; (move north)
;; (move north)
;; (move east)
;; (move south)
;; (move south)
;; (move east)