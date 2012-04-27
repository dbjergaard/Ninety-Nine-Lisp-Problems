(load "~/Ninety-Nine-Lisp-Problems/p18.lisp")
(defmacro n-null (obj)
  `(not (null ,obj)))

(defun lsort-using-sort (lst)
  "Sort list according to length of sublists"
  (sort lst #'(lambda (i j) (< (length i) (length j)))))

(defun my-merge (left right)
  "Merge two lists according to sorting rules"
  (let ((result nil))
    (loop do
	 (print result)
	 (cond ((and (> (length left) 0) (> (length right) 0)) 
		(if (<= (car left) (car right)) 
		    (progn (setq result (append result (list (car left)))) 
			   (setq left (cdr left)))
		    (progn (setq result (append result (list (car right)))) 
			   (setq right (cdr right))))) 
	       ((n-null left) (progn (setq result(append result (list (car left)))) 
				     (setq left (cdr left))))
	       (T (progn (setq result (append result (list (car right)))) 
			 (setq right (cdr right)))))
	 (if (or (> (length left) 0) (> (length right) 0)) (return result))
       while (or (> (length left) 0) (> (length right) 0))) ))

(defun nsort (lst)
  "Sort list of numbers cardinally"
  (let ((lst1 (slice lst 1 (floor (/ (length lst) 2))))
	(lst2 (slice lst (+ (floor (/ (length lst) 2)) 1) (length lst))))
    (cond ((null lst) nil) 
	  ((eq (length lst) 1) lst)
	  (T (my-merge (nsort lst1) (nsort lst2)))
	  )))
;  "Sort list according to length of sublists"
