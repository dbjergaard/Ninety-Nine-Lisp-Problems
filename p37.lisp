(load "~/Ninety-Nine-Lisp-Problems/p36.lisp")

(defun calc-phi (lst)
  "Take a list of prime factors and return value of totient phi"
  (let ((p (caar lst))
	(m (cadar lst)))
    (if (null lst) 0
	(+ (* (1- p) (expt p (1- m))) (calc-phi (cdr lst))))
    ))

(defun totient-phi-improved (n)
  "Improved version of Euler's totient function"
  (calc-phi (prime-factors-mult n)))
