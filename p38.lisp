(load "~/Ninety-Nine-Lisp-Problems/p31.lisp")
(defun primes-between (i j)
  "Return a list of all primes between I and J"
  (cond ((= i j) nil)
	((is-prime i) (append (list i) (primes-between (1+ i) j)))
	(T (primes-between (1+ i) j))))
