#lang racket

(define (pascal n r)
    (if (or (= r 1) (= r n))
        1
        (+ (pascal (- n 1) (- r 1)) (pascal (- n 1) r))))

(pascal 3 3)