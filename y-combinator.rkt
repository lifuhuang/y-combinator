(define almost-factorial
    (lambda (f)
        (lambda (n)
            (if (= n 0)
                1
                (* (f (- n 1)) n)))))

(define Y
    (lambda (f)
        ((lambda (x) (x x))
            (lambda (x) (f (lambda (z) ((x x) z)))))))

(define factorial (Y almost-factorial))
