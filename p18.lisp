(defun slice (lst I K)
  "Return a list of elements from position I to K of LST, including
the ith and kth elements where list is indexed from 1"
  (cond ((null lst) nil)
	((and (eq i 1) (not (eq k 0))) (append (list (car lst)) (slice (cdr lst) 1 (1- k))))
	((and (eq i 1) (eq k 0)) nil)
	(T (slice (cdr lst) (1- i) (1- k)))))
