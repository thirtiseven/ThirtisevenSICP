 ;1-11.scm
 (define (fexe n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (fexe (- n 1))
        			 (* 2 (fexe (- n 2)))
        			 (* 3 (fexe (- n 3)))))))


(define (f-iter a b c i n)
  		(if (= i n)
  		    c
  		    (f-iter b 
  		    		c 
  		    		(+ (* a 3) (* b 2) c)
  		    		(+ i 1)
  		    		n)))

(define (fsec n)
  f-iter 0 1 2 0 n)

(define (f2 n)
    (f-iter2 2 1 0 0 n))

(define (f-iter2 a b c i n)
    (if (= i n)
        c
        (f-iter2 (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))