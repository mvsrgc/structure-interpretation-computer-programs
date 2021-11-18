#lang racket

(define (add1 x) (+ x 1))
(define (sub1 x) (- x 1))

(define (peano-addition-alternate x y)
    (if (= x 0)
        y
        (add1 (peano-addition-alternate (sub1 x) y))))

(define (peano-addition x y)
    (if (= x 0)
        y
        (peano-addition (sub1 x) (add1 y))))

(peano-addition 5 2)
(peano-addition-alternate 5 2)