(load "~/Ninety-Nine-Lisp-Problems/p17.lisp")

(defun rotate (lst n)
  "Rotate LST N places to the left, can take a negative argument to rotate to the right"
  (if (< n 0) (rotate lst (+ (length lst) n))
      (append (cadr (split lst n)) (car (split lst n)))))
