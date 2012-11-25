(require 'asdf)
(push #p"~/Documents/Uppsala/funproadv/basic-asdf/" asdf:*central-registry*)
(asdf:operate 'asdf:load-op 'basic)

(defun run-basic (program)
  (run-basic-program program))

(run-basic (car *amazing*))

; fix :on-goto
; fix a specification for each function!!!

