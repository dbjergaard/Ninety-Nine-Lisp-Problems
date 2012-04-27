(defun range (i j)
  "Return list of integers between i and j"
  (if (and (< i j) (not (eq i j)))
      (append (list i) (range (1+ i) j))
      (append (list j))))
