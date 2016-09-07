(define (min a b c) 
		(if (< a b)
		    (if (< a c)
		        a
		        (if (< b c)
		            b
		            c))
		    ((if (< b c)
		        b
		        (if (< c a)
		            c
		            a)))))

(define (sumOfMaxTwo a b c) 
	(- (+ a b c) 
		(min a b c)))
