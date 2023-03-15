#|
    Functions to find the date of the day after a specified date

    Fernanda Cantú 27/02/2023
|#

#lang racket

(provide leap? month-days next-day)

(define (leap? year)
    (and (= 0 (remainder year 4))
        (or (not (= 0 (remainder year 100)))
            (= 0 (remainder year 400)))))

(define (month-days month year)
    (case month
        [(4 6 9 11) 30]
        [(2) (if (leap? year) 29 28)]
        [else 31]))

(define (next-day day month year)
    (if (= day (month-days month year))
        (if (= 12 month)
            (list 1 1 (add1 year))
            (list 1 (add1 month) year))
    (list (add1 day) month year)))