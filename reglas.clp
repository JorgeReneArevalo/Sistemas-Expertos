(deffacts hechos-iniciales
   (H)
   (K))
(defrule regla1
   (A)
   =>
   (printout t "A   --> E  --- E,A,H,K" crlf)
   (assert (E)))

(defrule regla2
   (B)
   =>
   (printout t "B   --> D  --- D,B,E,A,H,K" crlf)
   (printout t " Solucion" crlf)
   (printout t " B --> D " crlf)
   (assert (D)))

(defrule regla3
   (H)
   =>
   (printout t "H   --> A  --- A,H,K" crlf)
   (assert (A)))

(defrule regla4
   (E)
   (G)
   =>
   (assert (C)))

(defrule regla5
   (E)
   (K)
   =>
   (printout t "E,K --> A  --- B,E,A,H,K" crlf)
   (assert (B)))

(defrule regla6
   (D)
   (E)
   (K)
   =>
   (assert (C)))

(defrule regla7
   (B)
   (K)
   (F)
   =>
   (assert (A)))