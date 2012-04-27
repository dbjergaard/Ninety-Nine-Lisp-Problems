(load "~/Ninety-Nine-Lisp-Problems/p33.lisp")

(defun totient-phi (m &optional n count)
  "Totient Phi(m) is defined as the number of postive integers R between 1 and m that are coprime to m"
  (cond ((= m 1) 1)
	((or (null count) (null n)) (totient-phi m 1 1))
	((= n (1- m)) count)
	((coprime m n) (totient-phi m (1+ n) (1+ count)))
	(T (totient-phi m (1+ n) count))))
