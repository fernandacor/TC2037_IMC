#lang racket

; Basis: ["b"]
; Rules: ["ub", "uab", "uba", "bua"]
; Iterations: 3

(provide L_n)

(define (L_n base rules n)
    (final_L = [])
    (if (zero? n)
        return base;
    (define L_i)
    ))


;~Cómo sería en Python:~
; def L_n (base, rules, n):
;     """ Expand the language recursively """
;     final_L = []
;     if n == 0:
;         final_L.append(base)
;     else:
;         for i in range(n):
;             new_base = []
;             for item in base:
;                 for rule in rules:
;                     new_base.append(rule.replace("u", item))
;             base = new_base
;             final_L.append(base)
;     return final_L

;input: L_n(["b"], ["aau", "ua", "ub"], [3])
