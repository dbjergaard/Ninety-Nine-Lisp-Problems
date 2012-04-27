(defun coprime (a b)
  "T if GCD of A and B is 1"
  (if (= (gcd a b) 1) T nil))
