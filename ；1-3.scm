；1-3.scm
(define (sum-of-squared-largest-two a b c) 
   (- (+ (square a) (square b) (square c)) (square (min a b c)))) 