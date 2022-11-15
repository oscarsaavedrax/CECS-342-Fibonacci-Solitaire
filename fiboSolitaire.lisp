;;;; Oscar Saavedra
;;;; CECS 342-07
;;;; Program 3 - Language History
;;;; November 8, 2022
;;;;
;;;; I certify that this program is my own original work. I did not copy any part of this 
;;;; program from any other source. I further certify that I typed each and every line of 
;;;; code in this program.
(setq *print-case* :capitalize)

(defun print-menu ()
    (format t "Welcome to Fibonacci Solitarie!~%")
    (format t "1) New Deck~%")
    (format t "2) Display Deck~%")
    (format t "3) Shuffle Deck~%")
    (format t "4) Play Solitarie~%")
    (format t "5) Exit~%"))

(print-menu)