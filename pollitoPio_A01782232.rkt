; Programa que imprime la letra de la canción "El Pollito Pío"

; Fernanda Cantú A01782232
; 31 de marzo de 2023

#lang racket

; Función que define una lista de los animales y sus respectivos sonidos
(define animalSounds '(("un pollito" "Y el Pollito Pio")
                  ("una gallina" "Y la Gallina Coo")
                  ("un gallo" "Y el Gallo Corocó")
                  ("un pavo" "Y el Pavo Glú Glú Glú")
                  ("una paloma" "Y la Paloma Ruu")
                  ("un gato" "Y el Gato Miao")
                  ("un perro" "Y el Perro Guau Guau")
                  ("una cabra" "Y la Cabra Mee")
                  ("un cordero" "Y el Cordero Bee")
                  ("una vaca" "Y la Vaca Moo")
                  ("un toro" "Y el Toro Muu")
                  ("un tractor" "Y el Tractor: Bruum"
                   "Y el Pollito: oh oh!")))

; Función que imprime la letra de la canción
(define (pollito-lyrics)
  
  ; Función que imprime los sonidos de cada animal
  (define (print-animals animalSounds)
    
    ; Si la lista está vacía, imprime el último verso
    (if (empty? animalSounds)
        (display "En la radio hay un Tractor\n  Y el Tractor: Bruum\n  Y el Pollito: oh oh!")
        
        ; Si no, imprime el verso actual y llama a la función recursivamente
        (let ((current-animal (car animalSounds))
              (rest-animals (cdr animalSounds)))
          
          ; Imprime el verso actual
          (begin
            (display "En la radio hay ")
            (display (car current-animal))
            (newline)
          
          ; Imprime los sonidos del animal actual
            (for-each (lambda (sound)
                        (display "  ")
                        (display sound)
                        (newline))
                      (cdr current-animal))
            (print-animals rest-animals)))))
  
  ; Llama a la función que imprime los sonidos de cada animal
  (print-animals animals))

  (provide pollito-lyrics)

(define (animalList '("un pollito" "una gallina" "un gallo" "un pavo" "una paloma" "un gato" "un perro" "una cabra" "un cordero" "una vaca" "un toro" "un tractor")))
(define (soundList ("y el pollito pio" "y la gallina coo" "y el gallo coroco" "y el pavo glu glu glu" "y la paloma ruu" "y el gato miao" "y el perro guau guau" "y la cabra mee" "y el cordero bee" "y la vaca moo" "y el toro muu" "y el tractor: bruum")))

(define (pollito-lyrics))
  (("En la radio hay " + animalList)
  (displayln "  " + soundList)))

; Cuando la lista está vacía, imprime el último verso




#lang racket

(define (animalList '("un pollito"
                      "una gallina"
                      "un gallo"
                      "un pavo"
                      "una paloma"
                      "un gato"
                      "un perro"
                      "una cabra"
                      "un cordero")))
(define (soundsList '("y el pollito pio"
                      "y la gallina coo"
                      "y el gallo corocó"
                      "y el pavo glú glú glú"
                      "y el gato miao"
                      "y el perro guau guau"
                      "y la cabra mee"
                      "y el cordero bee")))

(define (buildLyrics)
  (if (null? animalList)
     (display "En la radio hay un tractor \n Y el tractor bruum \n Y el pollito: oh oh!")

     (let ((current-animal (car animalList))
           (rest-animals (cdr animalLisr)))
     (let ((current-sound (car soundsList))
           (rest-sounds (cdr soundsList)))

       (begin
         (display "En la radio hay ")
         (display (car current-animal))
         (newline))))

         (for-each (lambda (sound)
                        (display "  ")
                        (display sound)
                        (newline))
                      (cdr current-animal))
            (buildLyrics rest-animals)))

(buildLyrics)

(append (animalList) (soundsList))

(define animalSounds '(("un pollito" "pio")
                      ("una gallina" "coo")
                      ("un gallo" "corocó")
                      ("un pavo" "glú glú glú")
                      ("una paloma" "ruu")
                      ("un gato" "miao")
                      ("un perro" "guau guau")
                      ("una cabra" "mee")
                      ("un cordero" "bee")
                      ("una vaca" "moo")
                      ("un toro" "muu")))

(define (build-lyrics)
  (if (null? animalSounds)
      (display "En la radio hay un tractor \n Y el tractor bruum \n Y el pollito: oh oh!")
    
    (begin
      (displayln (string-append "En la radio hay " (car (car animalSounds))))
      (displayln (string-append "Y el " (car (car animalSounds)) " " (car (cdr (car animalSounds)))))
      (build-lyrics (cdr animalSounds)))))

(build-lyrics)

; Ya sirve masomenos:
#lang racket

(define animalSounds '(("un pollito" "pio")
                      ("una gallina" "coo")
                      ("un gallo" "corocó")
                      ("un pavo" "glú glú glú")
                      ("una paloma" "ruu")
                      ("un gato" "miao")
                      ("un perro" "guau guau")
                      ("una cabra" "mee")
                      ("un cordero" "bee")
                      ("una vaca" "moo")
                      ("un toro" "muu")))

(define (buildLyrics animalSounds)
  (if (null? animalSounds)
      (begin 
        (displayln "En la radio hay un tractor")
        (displayln "Y el tractor: Bruum")
        (displayln "Y el pollito: oh oh!"))
      (begin
        (displayln (string-append "En la radio hay " (car (car animalSounds))))
        (displayln (string-append "Y el " (car (car animalSounds)) " " (cadr (car animalSounds))))
        (buildLyrics (cdr animalSounds)))))

(buildLyrics animalSounds)
