#lang racket

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
        (sum term (next a) next b))))

(define (pi-sum a b)
    (sum (lambda (i) (/ i (* i (+ i 2))))
    a
    (lambda (i) (+ i 4))
    b))

(pi-sum 1 5)