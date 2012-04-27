(load "~/Ninety-Nine-Lisp-Problems/p03.lisp")
(load "~/Ninety-Nine-Lisp-Problems/p20.lisp")
(defun rnd-select (lst n)
  "Randomly select N elements from LST"
  (let ((k (random (if (null lst) 1 (length lst)))))
    (if (eq k 0) 
	(setq k 1))
    (cond ((or (eq n 0) (null lst)) nil) 
	  (T (append (list (element-at lst k)) (rnd-select (remove-at lst k) (1- n)))
	   
	   ))))
