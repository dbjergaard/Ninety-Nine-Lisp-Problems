(defun drop (lst n &optional nt)
  "Drop every Nth element of LST"
  (if (eq nt nil) (setq n (1- n)))
  (when (eq nt nil) (setq nt n))
  (cond ((null lst) nil)
	((eq n 0) (append (drop (cdr lst) nt nt)))
	(T (append (if (atom (car lst)) (list (car lst)) (car lst)) (drop (cdr lst) (1- n) nt)))
	))
