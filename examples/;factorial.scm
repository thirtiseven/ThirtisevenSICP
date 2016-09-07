;factorial.scm
((define (factorial2 x)
  (* x (factorial2 (- x 1)))))

;WORNG TODO