(defun my-gcd (a b)
  "Return the GCD of I and J using Euclid's algorithm"
  (if (= b 0) a
      (my-gcd b (mod a b))))
