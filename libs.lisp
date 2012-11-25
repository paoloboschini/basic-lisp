; basic's library functions
(defun b-tab (args)
  (destructuring-bind (spaces) (funs-to-vals args)
    (data-val (list :tab spaces)))) 
;(format nil (concatenate 'string "~" (write-to-string spaces) "T")))))

(defun b-int (args)
  (destructuring-bind (val) (funs-to-vals args)
    (data-val (floor val))))

(defun b-exp (args)
  (destructuring-bind (val) (funs-to-vals args)
    (data-val (exp val))))

(defun b-sqr (args)
  (destructuring-bind (val) (funs-to-vals args)
    (data-val (if (< val 0) 0 (sqrt val)))))

(defun b-rnd (&optional args)
  (declare (ignore args))
  (data-val (random 1.0)))

(defun b-input (args)
  (destructuring-bind (str &rest rest) args
    (if (not (null str)) (format t "~A~%" str))
    (dolist (var (car rest))
      (format t "??: ")
      (let ((input (read-line)))
        (setf (gethash (cadr var) *vtable*) 
              (if (find #\$ (symbol-name (cadr var))) input (read-from-string input)))))))