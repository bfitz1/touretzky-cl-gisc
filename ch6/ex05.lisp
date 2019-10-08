(setf line '(roses are red))

(reverse line)
;; => (red are roses)

(first (last line))
;; => red

(nth 1 line)
;; => are

(reverse (reverse line))
;; => (roses are red)

(append line (list (first line)))
;; => (roses are red roses)

(append (last line) line)
;; => (red roses are roses)

(list (first line) (last line))
;; => (roses (red))

(cons (last line) line)
;; => ((red) roses are red)

(remove 'are line)
;; => (roses are)

(append line '(violets are blue))
;; => (roses are red violets are blue)