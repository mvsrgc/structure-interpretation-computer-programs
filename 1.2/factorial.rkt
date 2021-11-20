#lang racket

(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))

(factorial 6)

(define (factorial-two n product counter)
    (if (> counter n)
        product
        (factorial-two n (* product counter) (+ counter 1))))

(factorial-two 6 1 1)