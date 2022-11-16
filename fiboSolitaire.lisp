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
(defvar *menu-choice*)
; Variable for the playing deck
(defparameter *playing-deck* nil)
; List to hold a new deck
(defparameter *new-deck* '("AS" "2S" "3S" "4S" "5S" "6S" "7S" "8S" "9S" "10S" "JS" "QS" "KS" 
                    "AC" "2C" "3C" "4C" "5C" "6C" "7C" "8C" "9C" "10C" "JC" "QC" "KC"
                    "AD" "2D" "3D" "4D" "5D" "6D" "7D" "8D" "9D" "10D" "JD" "QD" "KD"
                    "AH" "2H" "3H" "4H" "5H" "6H" "7H" "8H" "9H" "10H" "JH" "QH" "KH"))


; Function to print the menu
(defun print-menu ()
    (format t "Welcome to Fibonacci Solitarie!~%")
    (format t "1) New Deck~%")
    (format t "2) Display Deck~%")
    (format t "3) Shuffle Deck~%")
    (format t "4) Play Solitarie~%")
    (format t "5) Exit~%")
    (terpri))

; Function to print the deck
(defun print-deck (deck)
    (loop for x in deck do
        (format t "~s, " x))
    (terpri))

; Function to set the new-deck equal to playing deck
(defun selected-new-deck (new-deck)
    (format t "You selected a New Deck~%")
    (setf *playing-deck* (copy-list new-deck))
    (format t "New Deck initialized~%")
    (format t "Ready to play!~%")
    (terpri))

; Function to display the deck
(defun display-deck (deck)
    (format t "Displaying Deck~%")
    (terpri)
    (if (eq deck nil)
        (print-deck *new-deck*)
        (print-deck deck))
    (terpri))
    
; Print menu
(print-menu)
; Get user choice for menu
(format t "Please enter your choice (1-5): ")
(setq menu-choice (read))
(terpri)

; Loop menu options until user exits
(loop
    (when (eq menu-choice 5) (return))
    ; Branch to menu selection
    (case menu-choice 
        (1 (selected-new-deck *new-deck*))
        (2 (display-deck *playing-deck*))
        (3 (format t "You selected Shuffle Deck~%"))
        (4 (format t "You selected Play Solitarie~%"))
        (5 ()))

    ; Print menu
    (print-menu)
    ; Get user choice for menu
    (format t "Please enter your choice (1-5): ")
    (setq menu-choice (read))
    (terpri)
)

; Print the good bye message
(format t "Thank you for playing Fibonacci Solitarie!~%")