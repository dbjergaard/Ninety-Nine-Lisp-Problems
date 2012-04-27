(defun is-prime (n &optional i) 
  "Returns T if N is prime, NIL else."
  (cond ((or (= n 0) (= n 1)) nil)
	((= n 2) T)
	((null i) (is-prime n 2))
	((= i (1- n)) T)
	((= (mod n i) 0) nil) 
	(T (is-prime n (1+ i)))))
