#lang racket

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess old-guess)
    (< (abs (- guess old-guess)) (abs (* guess 0.001)))) 

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)) 

(define (cube-root-iter guess prev-guess x)
    (if (good-enough? guess prev-guess)
        guess
        (cube-root-iter (improve guess x) guess x)))

(define (3root x) (cube-root-iter 1.0 0.0 x))

(3root 9)