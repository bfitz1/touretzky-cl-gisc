(defstruct (starship
             (:print-function print-starship))
  (captain nil)
  (name nil)
  (shields 'down)
  (condition 'green)
  (speed 0))

(defstruct (captain
             (:print-function print-captain))
  (name nil)
  (age nil)
  (ship nil))

(defun print-starship (s stream depth)
  (format stream "#<STARSHIP ~S>" (starship-name s)))

(defun print-captain (c stream depth)
  (format stream "#<CAPTAIN ~S>" (captain-name c)))


(setf kirk
  (make-captain :name "James T. Kirk"
                :age 35))

(setf enterprise
  (make-starship :captain kirk
                 :name "Enterprise"))

(setf (captain-ship kirk) enterprise)

