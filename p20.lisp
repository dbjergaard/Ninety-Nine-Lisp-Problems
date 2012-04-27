(defun remove-at (lst k)
  "Remove Kth element from LST"
  (cond ((null lst) nil)
	((eq k 1) (cdr lst))
	(T (append (list (car lst)) (remove-at (cdr lst) (1- k))))))
