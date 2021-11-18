#lang racket

(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(display(sum-of-squares 3 4))

(define (sum-squares-largest-arguments a b c) 
    ((if (and (> a b) (> b c)) (sum-of-squares a b)))
    (if (and (> b a) (> a c)) (sum-of-squares a b)))
    (if (and (> c a) (> a b)) (sum-of-squares a c)))