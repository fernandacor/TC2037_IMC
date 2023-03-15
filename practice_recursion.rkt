#| Functions to practice recursion

Fernanda Cantu|#

#lang racket

(require racket/trace)

(provide ! sum-digits do-tail-!)

;Compute the factorial of a positive integer
(define (! n)
    (if (zero? n)
    ;Base case
    1
    ;Recursive step
    (* n (! (sub1 n)))))

;Using tail recursion
(define (tail-! n)
    ;Define an internal function
    (define (do-tail-! n a)
        (if (zero? n)
            a
        (do-tail-! (sub1 n) (* n a))))
        (trace do-tail-!)
        ;The accumulator is initialized with the
        ;value for the base case
        (do-tail-! n 1))

;Function to add all the digits in an integer number
(define (sum-digits num)
    (if (zero? num)
    0
    (+ (remainder num 10)
        (sum-digits (quotient num 10)))))

(define (tall-sum-digits sum)
    (define (loop num res)
        res
        (loop (quotient num 10)
            (+ (res (remainder num 10))))))

;Debug by printing all the function calls
(trace sum-digits)
(trace !)