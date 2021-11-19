#lang racket

(define (abs1 x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(display(abs1 (- 5)))

(newline)

(define (abs2 x)
    (cond ((< x 0) (- x))
          (else x)))

(display(abs2 (- 5)))

(newline)

(define (abs3 x)
    (if (< x 0)
        (- x)
        x))

(display(abs3 (- 5)))