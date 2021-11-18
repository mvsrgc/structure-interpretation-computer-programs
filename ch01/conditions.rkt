(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(display(abs (- 5)))

(newline)

(define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

(display(abs (- 5)))

(newline)

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(display(abs (- 5)))