#|
    Functions to practice recursion

    Fernanda Cantú 27/02/2023
|#

#lang racket

(provide !)

(define (! n) ;factorial
    (if (zero? n)
        1
        (* n (! (sub1 n)))))

(define (sum)
    (if (remainder n 10)
    (quotient n 10)))


