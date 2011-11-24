;; Flatten a list
(defun my-flatten (l)
  "Take a nested list and return a single list of all nested elements"
  (cond ((null l) nil)
	;((listp (car l)) (my-flatten (car l)))
	((atom l) (list l))
	(T (append (my-flatten (car l)) (my-flatten (cdr l))))))
