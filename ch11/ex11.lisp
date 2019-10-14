(defun find-largest (list-of-numbers)
  (do* ((numbers list-of-numbers (rest numbers))
        (largest (first numbers) (max largest (first numbers))))
       ((null (rest numbers)) largest)))