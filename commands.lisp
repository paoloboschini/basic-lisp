(defun b-dim (args)
  (dolist (arg (car args)) (b-eval arg nil nil)))

(defun b-dimd (args)
  (destructuring-bind (name &rest rest) (funs-to-vals args)
    (setf (gethash name *atable*) (make-array rest))))
    
(defun access-array (arr dims name)
  (list :array (apply #'aref arr (print dims)) dims name))

(defun b-lazy-binary (args)
  (call args))

(defun b-and (args)
  (destructuring-bind (arg1 arg2) args
    (data-val (if (cadr (b-eval arg1 nil nil)) (cadr (b-eval arg2 nil nil))))))

(defun b-or (args)
  (destructuring-bind (arg1 arg2) args
    (data-val (if (not (cadr (b-eval arg1 nil nil))) (cadr (b-eval arg2 nil nil))))))

(defun b-def (args)
  (destructuring-bind (fname &rest rest) args
    (setf (gethash fname *ftable*) rest)))

(defun b-goto (args)
  (destructuring-bind (lnum) args
    (setf *g-goto* lnum)))

(defun b-gosub (args lnum)
  (destructuring-bind (goto-line) args
    (if (eql (car *substack*) lnum)
      (setf *substack* (cdr *substack*))
      (progn
        (setf *substack* (cons lnum *substack*))
        (b-goto (list goto-line))))))

(defun b-return ()
  (b-goto (list (car *substack*))))

(defun b-end ()
  (setf *g-goto* :end))

(defun b-stop (lnum)
  (progn
    (format t "Stopped at line ~A~%" lnum)
    (b-end)))

(defun b-apply (args)
  (destructuring-bind (fun &rest rest) (funs-to-vals args)
    (cond ((gethash fun *ftable*)
           (apply-custom (gethash fun *ftable*) (car rest)))
          ((gethash fun *atable*)
           (access-array (gethash fun *atable*) rest fun))
          (t
           (funcall (intern (concatenate 'string "B-" (symbol-name fun))) rest)))))

; returns the :semi keyword which is processed by the b-print function.
(defun b-semi ()
  (data-val :semi))

; returns the :comma keyword which is processed by the b-print function.
(defun b-comma ()
  (data-val :comma))

(defun b-icon (i)
   (data-val (car i)))

(defun b-fcon (f)
  (data-val (car f)))

(defun b-scon (s)
  (data-val (car s)))

(defun b-rem (&optional slask)
  (declare (ignore slask)))

(defun b-plus (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (+ x y))))

(defun b-minus (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (- x y))))

(defun b-mul (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (* x y))))

(defun b-div (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (/ x y))))

(defun b-uminus (args)
  (destructuring-bind (x) (funs-to-vals args)
    (data-val (- x))))

(defun b-lt (args)
  (destructuring-bind (x y) (funs-to-vals args)
   (data-val (< x y))))

(defun b-le (args)
  (destructuring-bind (x y) (funs-to-vals args)
   (data-val (<= x y))))

(defun b-ge (args)
  (destructuring-bind (x y) (funs-to-vals args)
   (data-val (>= x y))))

(defun b-gt (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (> x y))))

(defun b-eq (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (eql x y))))

(defun b-ne (args)
  (destructuring-bind (x y) (funs-to-vals args)
    (data-val (not (eql x y)))))

(defun b-binary (args)
  (call args))

(defun b-var (args)
  (destructuring-bind (var) args
    (data-var var)))

(defun b-if (args)
  (destructuring-bind (x) (funs-to-vals args)
    (if (not x) :false)))
                      
(defun b-let (args)
  (destructuring-bind (var val) args
    (if (eql (car var) :array)
      (destructuring-bind (dims name) (cddr var)
        (setf (apply #'aref (gethash name *atable*) dims) (car (funs-to-vals (list val)))))
      (setf (gethash (cadr var) *vtable*) (car (funs-to-vals (list val)))))))

(defun b-print (&optional args)
  (let ((end-of-line (car (funs-to-vals (last args))))
        (strs (insert-tabs (rp :comma (format nil "~8T") (rp :semi (format nil "~T") (funs-to-vals args))))))
    (format t 
            (if (or (eql end-of-line :semi) (eql end-of-line :comma))
              "~{~A~^~}"  
              "~{~A~^~}~%")
            strs)))
 
(defun b-for (args lnum)
  (destructuring-bind (var from to step) (funs-to-vals args)
    (if (null step) 
      (setf step 1))
    (cond ((null (gethash var *fortable*)) 
           (setf (gethash var *fortable*) (list (setf (gethash var *vtable*) from) to lnum step)))
          (t 
           (setf (gethash var *fortable*) 
                 (list (setf (gethash var *vtable*) (+ (gethash var *vtable*) step)) to lnum step))))))

(defun b-next (args)
  (destructuring-bind (fid) args
    (destructuring-bind (from to lnum step) (gethash fid *fortable*)
      (if (or (and (> step 0) (> to from)) (and (< step 0) (< to from)))
        (b-goto (list lnum))
        (setf (gethash fid *fortable*) nil)))))