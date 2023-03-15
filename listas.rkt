#| 
    Listas en Racket
    Fernanda Cantú
    06/03/2023
|#
#lang racket

; '(3 . 6) ;construir un par

; (define par (cons 3 6)) ;define una constante
; (car par) ;devuelve primer elemento del par
; (cdr par) ;devuelve segundo elemento del par

; (cons 3 (cons 4 (cons 5 null))) ;una forma de crear una lista

; (list 3 4 5) ;otra forma de crear una lista

; (define lst '(1 2 3 4 5 6))
; (length lst)

; (define lst2 (lst append (7)))
; (first lst2) ;hace lo mismo que car
; (rest lst2) ;hace masomenos lo mismo que cdr

; (append lst lst2) ;append junta dos listas

#|
    Function to work with lists recursively
|#

(require racket/trace)

(provide lista len len-tail sum-tail sqrt-list)

; Recreate the functionality 'length'
; Return the number of elements in a list


(define lista '(1 2 3 4 5 6 7 8))

(define (len lista)
    (if (empty? lista)
        0
        (+ 1 (len (cdr lista)))))

(trace len)

; Reimplement length using tail recursion
(define (len-tail lista)
    (trace-let loop
        ([lista lista]
        [res 0])
    (if (empty? lista)
        res
        (loop (cdr lista)(+ 1 res)))))

; Function that sums all the elements in a list
(define (sum-tail lista)
    (trace-let loop
        ([lista lista]
        [res 0])
    (if (empty? lista)
        res
        (loop (cdr lista) (+ (car lista) res)))))

; Square root of every element in a list
(define (sqrt-list lista)
    (trace-let loop
        ([lista lista]
        [res '()])
    (if (empty? lista)
        res
        (loop (cdr lista)
            (append res (list (sqrt (car lista) res)))))))