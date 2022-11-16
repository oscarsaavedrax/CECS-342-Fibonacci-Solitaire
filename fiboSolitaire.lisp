;;;; Oscar Saavedra
;;;; CECS 342-07
;;;; Program 3 - Language History
;;;; November 8, 2022
;;;;
;;;; I certify that this program is my own original work. I did not copy any part of this 
;;;; program from any other source. I further certify that I typed each and every line of 
;;;; code in this program.

; Set the print case to capitalize
(setq *print-case* :capitalize)

; Variable for menu selection
(defvar *menuChoice*)

; Function to print the menu
(defun print-menu ()
    (format t "Welcome to Fibonacci Solitarie!~%")
    (format t "1) New Deck~%")
    (format t "2) Display Deck~%")
    (format t "3) Shuffle Deck~%")
    (format t "4) Play Solitarie~%")
    (format t "5) Exit~%")
    (terpri))
    
; Print menu
(print-menu)
; Get user choice for menu
(format t "Please enter your choice (1-5): ")
(setq menuChoice (read))

; Loop menu options until user exits
(loop
    (when (eq menuChoice 5) (return))
    ; Branch to menu selection
    (case menuChoice 
        (1 (format t "You selected New Deck~%"))
        (2 (format t "You selected Display Deck~%"))
        (3 (format t "You selected Shuffle Deck~%"))
        (4 (format t "You selected Play Solitarie~%"))
        (5 (format t "You selected Exit~%")))

    ; Print menu
    (print-menu)
    ; Get user choice for menu
    (format t "Please enter your choice (1-5): ")
    (setq menuChoice (read))
)
