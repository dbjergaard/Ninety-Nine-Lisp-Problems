(load "~/Ninety-Nine-Lisp-Problems/p23.lisp")
(defun rnd-permu (lst)
  "Return random permutation of list"
  (rnd-select lst (length lst)))
