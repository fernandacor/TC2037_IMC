#|
  TC2037.602
  Programación funcional Parte 3:
  Programa que imprime la letra de la canción "El Pollito Pío"

  Fernanda Cantú Ortega
  A01782232
|#

#lang racket
(require racket/trace)
(provide pollito-lyrics)

;Líneas que se van a imprimir al iterar las listas
(define lineaRadio "En la radio hay ~a")
(define lineaSonidos "Y ~a")

;Lista de los animales
(define listaAnimales  '("un Pollito Pio"
                         "una Gallina Coo"
                         "un Gallo Corocó"
                         "un Pavo Glú Glú Glú"
                         "una Paloma Ruu"
                         "un Gato Miao"
                         "un Perro Guau Guau"
                         "una Cabra Mee"
                         "un Cordero Bee"
                         "una Vaca Moo"
                         "un Toro Muu"))

;Función que itera sobre la lista de sonidos y la imprime
(define (intRec sonidos)
  ;Lista de los sonidos
  (define listaSonidos  '("el Pollito pio \n"
                          "la Gallina Coo"
                          "el Gallo Corocó"
                          "el Pavo Glú Glú Glú"
                          "la Paloma Ruu"
                          "el Gato Miao"
                          "el Perro Guau Guau"
                          "la Cabra Mee"
                          "el Cordero Bee"
                          "la Vaca Moo"
                          "el Toro Muu"))
  ;Ciclo para iterar e imprimir los sonidos y que le da formato utilizando la función líneaSonidos
  (let loop
    ([lstSnds listaSonidos]
     [snds sonidos]
     [res1 '()])
     (if (zero? snds)
      (map displayln res1)
      (loop (cdr lstSnds) (sub1 snds) (cons (format lineaSonidos (car lstSnds)) res1)))))

;Función para construir la letra de la canción iterando sobre la lista de animales
(define (pollito-lyrics)
  (let loop(
      [animales listaAnimales]
      [anm 1])
      (if (null? (cdr animales))
        (for-each displayln '("En la radio hay un Tractor" "Y el Tractor: Bruum!" "Y el Pollito pio: oh oh!"))
        (begin 
          (displayln (format lineaRadio (car animales)))
          (intRec anm)
          (loop 
            (cdr animales) 
            (add1 anm))))))