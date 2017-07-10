(load "y-combinator.rkt")

(define almost-factorial
    (lambda (f)
        (lambda (n)
            (if (= n 0)
                1
                (* (f (- n 1)) n)))))

;(define part-factorial
;    (lambda (x)
;        (almost-factorial (lambda (z) ((x x) z)))))

(define factorial (Y almost-factorial))

(assert (= (factorial 0) 1))
(assert (= (factorial 1) 1))
(assert (= (factorial 2) 2))
(assert (= (factorial 3) 6))
(assert (= (factorial 4) 24))
(assert (= (factorial 5) 120))
(assert (= (factorial 10) 3628800))