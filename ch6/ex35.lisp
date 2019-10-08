;; We'll use a list of pairs i.e. a table
(setf nerd-states '((sleeping eating)
                    (eating waiting-for-a-computer)
                    (waiting-for-a-computer programming)
                    (programming debugging)
                    (debugging sleeping)))

(defun nerdus (state)
  (second (assoc state nerd-states)))

;; States not defined in the table will return nil. So:
;;
;; (nerdus 'playing-guitar)
;; => NIL

(defun sleepless-nerd (state)
  (let ((next-state (nerdus state)))
    (if (equal next-state 'sleeping)
        (nerdus next-state)
        next-state)))

(defun nerd-on-caffeine (state)
  (nerdus (nerdus state)))

;; Advancing two states at a time means it will take 3 steps after
;; programming before finally debugging:
;; 
;; programming -> sleeping -> waiting-for-a-computer -> debugging