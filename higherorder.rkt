#lang racket

(define (add1 x) (+ 1 x))

(define (sum-int a b)
    (if (> a b)
        0
        (+ a
           (sum-int (add1 a) b))))

(sum-int 1 3)


(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term
                (next a)
                next
                b))))

(define (sum-int-v2 a b)
    (define (identity x) x)
    (sum identity a add1 b))

(sum-int-v2 1 3)