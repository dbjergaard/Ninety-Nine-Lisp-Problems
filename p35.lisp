(load "~/Ninety-Nine-Lisp-Problems/p39.lisp")
(defun prime-factors (n &optional plst)
  "Return a flat list of containing prime factors in ascending order"
  (cond ((is-prime n) (list n))
	((null plst) (prime-factors n (primes-between 1 n)))
	((= (mod n (car plst)) 0) (append (list (car plst)) (prime-factors (/ n (car plst)))))
	(T (prime-factors n (cdr plst)))))
