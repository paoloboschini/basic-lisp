; returns the value of a variable or 0 if it does not exist
(defun getval (var tab)
  (let ((val (gethash var tab)))
    (cond ((null val)
           (setf (gethash var tab) 0))
          (t val))))

(defun apply-custom (body arg)
  (destructuring-bind (param &rest rest) body
    (b-eval (car (rp param arg (rp :var :val rest))) nil nil)))

(defun b-val (args)
  (data-val (car args)))

;todo tidy up with destructuring-bind
(defun call (fn &optional lnum)
  (let ((keyw (if (consp (car fn)) (caar fn) (car fn)))
        (args (if (consp (car fn)) (cdar fn) (cdr fn)))
        (f (gethash (if (consp (car fn)) (cadr fn) (car fn)) *stable*)))
     (if (null f)
       (setf f (setf (gethash keyw *stable*) (intern (concatenate 'string "B-" (symbol-name keyw))))))
     (cond ((null args)
            (if (eql keyw :stop) (funcall f lnum) (funcall f)))
           ((or (eql keyw :for) (eql keyw :gosub))
            (funcall f args lnum))
           (t (call-basic-function f args)))))

;if the function with a given name does not exist it has
; to be a dimdN-function.
(defun call-basic-function (fun args)
  (if (fboundp fun) 
    (funcall fun args)
    (funcall (intern (subseq (symbol-name fun) 0 6)) args))) 
  
;evaluates expressions and statements in a line
(defun b-eval (item acc lnum)
  (cond 
   ((and (null item) (not (null acc))) 
    (call (reverse acc) lnum))
   ((consp (car item))
    (b-eval (cdr item) 
            (cons (b-eval (car item) nil lnum) acc) 
            lnum))
   (t 
    (b-eval (cdr item) (cons (car item) acc) lnum))))


(defun slice (lst elt)
  ; to handle the goto at the last line?
  (cond ((null lst) nil)
        ; returns the rest of lines to be evaluated
        ((eql (car lst) elt)
         (cdr lst))
        (t (slice (cdr lst) elt))))

; evaluate the program line at the goto position
; and returns the rest of the lines to be evaluated
(defun goto-jump (goto)
  (progn  
    (setf *g-goto* nil)
    (eval-line goto (gethash goto *lines*))
    (slice *numbers* goto)))

; evaluates a single line
(defun eval-line (lnum statements)
  (cond ((null statements) t)
        ((or (eql (caar statements) :def)
             (eql (caar statements) :input)
             (eql (caar statements) :lazy-binary)
             (eql (caar statements) :dim))
         (call (car statements)))
        (t (if (not (eql (b-eval (car statements) nil lnum) :false))
             (eval-line lnum (cdr statements))))))

; next-line goes through each line and do some checks
; 1. if g-goto is null, the line is evaluated by eval-line
; that gets the line to be evaluated from *lines*,
; and check then if a goto has to be performed, otherwise
; returns the rest of the lines to be evaluated
; 2. if goto is :end, returns nil, the program stops
; 3. if goto is not nil, jump to the goto line
(defun next-line (lnums)
  (let ((goto *g-goto*))
    (cond ((null goto)
           (format t "Executing line ~A~%" (car lnums))
           (eval-line (car lnums) (gethash (car lnums) *lines*))
           (if (null *g-goto*) (cdr lnums) (goto-jump *g-goto*)))
          ((eql goto :end) nil)
          (t (goto-jump goto)))))

;runs the basic program until there are no next-lines
(defun execute (prog)
  (if prog
    (execute (next-line prog))))

;inserts a singe line in *lines* with the line-number as key.
(defun insert-line (line)
  (setf (gethash (cadr line) *lines*) (cddr line)))

;inserts basic lines in a hash-table with line-number as key.
(defun read-lines (prog)
  (dolist (line prog) (insert-line line)))

; where it all begins
; inits the globals
; fills the lines of a basic program in *lines*
; execute the program sending only the line numbers as parameter
(defun run-basic-program (program)
  (progn
    (init-globals program)
    (read-lines program)
    (execute *numbers*)))