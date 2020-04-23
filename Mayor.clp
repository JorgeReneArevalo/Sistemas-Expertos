(defrule inicio
    (vector $?x)
=>
    (assert (vector-aux ?x))
)

(defrule metodoOrdenar
?f <- (vector-aux $?b ?m1 ?m2&:(> ?m2 ?m1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?m2 ?m1 $?e))
)



(defrule mostrar
(not (vector-aux $?b ?m1 ?m2&:(> ?m2 ?m1) $?e))
(vector $?x)
(vector-aux $?y)
=>
(printout t "Orde de mayor a menor " " es " ?y crlf)
)