(load "~/Ninety-Nine-Lisp-Problems/p23.lisp")

(defun my-member (e lst)
  "Redefine member so that it works with list elements"
  (cond ((null lst) nil)
	((equal e (car lst)) T)
	(T (my-member e (cdr lst)))
	))

(defun binomial (n k)
  "Calculate binomial coefficient (ie N choose K)"
  (cond ((or (= k 0) (= n k)) 1)
	(T (+ (binomial (1- n) (1- k)) (binomial (1- n) k)))))

(defun combination (k lst &optional n cur-lst)
  "Generate list of K elements chosen from LST of length N (N choose K)"
  (let ((perm (rnd-select lst k)))
    (cond ((null cur-lst) (combination k lst (1- (binomial (length lst) k)) (append (list perm))))
	  ((= n 0) cur-lst)
	  ((my-member perm cur-lst) (combination k lst n cur-lst))
	  (T (combination k lst (1- n) (append (list perm) cur-lst))))))
