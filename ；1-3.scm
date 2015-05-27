；1-3.scm
(define (SumOfMaxtwo alice bob carol)
		cond (> alice bob) (+ alice (cond ((> bob carol) bob  )
									 cond ((> carol bob) carol)))
		cond (> bob alice) (+ bob   (cond ((> alice carol) alice)
									 cond ((> carol alice) bob)))
		cond (> carol bob) (+ carol (cond ((> alice carol) alice)
									 cond ((> carol alice) carol))))

(SumOfMaxtwo 15 18 233)