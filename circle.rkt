
;Define area and perimeter of a circle

(provide circle-perimeter circle-area)
(define circle-perimeter (diameter)
    (* pi diameter))

(define circle-area (radius)
    (* (*radius radius) pi))

;Define area and perimeter of a triangle
(provide triangle-perimeter triangle-area)
(define triangle-perimeter (diameter)
    (* pi diameter))

(define triangle-area (radius)
    (* (*radius radius) pi))

