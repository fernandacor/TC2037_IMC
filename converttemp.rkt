#| Functions to convert between units (Celsius and Fahrenheit)
Fernanda Cantu |#

#lang racket

(provide C->F F->C)

;Give a name to a value. A "variable"
(define data 46.7)

(define (C->F celsius)
    (+(* celsius (/ 9 5.0) 32)))

(define (F->C fahrenheit)
    (*(- fahrenheit 32)(/ 5 9.0)))

