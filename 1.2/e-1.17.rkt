#lang racket

(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (fast-multiply a b)
    (cond ((= b 0) 0)
    ((even? b) (double (* a (halve b))))
    (else (+ a (* a (- b 1))))))