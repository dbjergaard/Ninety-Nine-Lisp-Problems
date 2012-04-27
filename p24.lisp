(defun lotto-select (n m)
  "Draw N random numbers from the set {1,...,M}"
(let ((k (random m)))
  (if (and (> k 0) (not (eq n 0))) (append (list k) (lotto-select (1- n) m)))))

