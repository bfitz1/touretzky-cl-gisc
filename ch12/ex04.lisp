(defstruct node
  (name nil)
  (question nil)
  (yes-case nil)
  (no-case nil))

(defun init () (setf *node-list* nil))

(defun add-node (name question yes-case no-case)
  (let ((new-node 
          (make-node :name name
                     :question question
                     :yes-case yes-case
                     :no-case no-case)))
    (setf *node-list* (cons new-node *node-list*))
    new-node))

(defun find-node (name)
  (find-if #'(lambda (n) (equal name (node-name n)))
           *node-list*))

(defun process-node (name)
  (let ((next-node (find-node name)))
    (cond (next-node
            (if (yes-or-no-p (node-question next-node))
              (node-yes-case next-node)
              (node-no-case next-node)))
          (t (format t "This node hasn't been defined yet")))))

(defun run ()
  (do ((current-node 'start (process-node current-node)))
      ((typep current-node 'string) (format t "~&~A" current-node))
      (if (equal current-node nil) (return nil))))

(defun interactive-add-node ()
  (let ((name nil)
        (question nil)
        (yes-case nil)
        (no-case nil))
    (format t "Name: ")
    (setf name (read))
    (format t "Question (please enter a string): ")
    (setf question
      (do ((q (read) (read)))
          ((stringp q) q)
        (format t "That wasn't a string! Try again: ")))
    (format t "Yes-case: ")
    (setf yes-case (read))
    (format t "No-case: ")
    (setf no-case (read))
    (add-node name question yes-case no-case)))
