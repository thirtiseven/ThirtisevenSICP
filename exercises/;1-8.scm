;1-8.scm
(define (cuberoot-iter guess x)
	(if (good-enough guess x)
		guess
		(cuberoot-iter (improve guess x)
						x)))

(define (improve guess x)
	(/ (/ x 
		(+ (* guess guess)
			(* 2 guess)))
		3))

(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (cuberoot x)
	cuberoot-iter 1.0 x)