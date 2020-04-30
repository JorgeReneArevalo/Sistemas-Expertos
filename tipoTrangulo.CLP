(defrule iniciales-lados
	(initial-fact)
	=>
	(printout t " TIPO DE TRIANGULO " crlf)
	(printout t " 1. LADOS " crlf)
	(printout t " 2. ANGULOS " crlf)
	(assert (triangulo-tipo (read))))
	
(defrule lados
   (triangulo-tipo 1)
   =>
   (printout t "Todos los lados del triángulo son iguales" crlf)
   (printout t "1. Si " crlf)
   (printout t "2. No " crlf)
   (bind ?respuesta (read))
   (if (eq ?respuesta 1)
		then
		(assert (lados-iguales 1))
   else
	(printout t "Tiene 2 lados iguales del triángulo" crlf)
	(printout t "1. Si" crlf )
	(printout t "2. No" crlf )
	(bind ?resultado (read))
	(if (eq ?resultado 1)
		then
		(assert (lados-iguales 2))
	else
	(printout t "Tiene 3 lados desiguales del triángulo" crlf)
	(printout t "1. Si" crlf)
	(printout t "2. No" crlf)
	(bind ?resultado3 (read))
	(if (eq ?resultado3 1)
		then
		(assert (lados-desiguales 3))
	else 
	(printout t " TIPO DE TRIANGULO " crlf)
	(printout t " 1. LADOS " crlf)
	(printout t " 2. ANGULOS " crlf)
	(assert (triangulo-tipo (read))))))
)

(defrule angulos
   (triangulo-tipo 2)
   =>
   (printout t "Uno de sus ángulos es de 90º y los otros dos son agudos (menores de 90º)" crlf)
   (printout t "1. Si" crlf )
   (printout t "2. No" crlf )
   (bind ?respuesta (read))
   (if (eq ?respuesta 1)
		then
		(assert (triangulo-rectangulo 1))
   else
	(printout t "Los tres ángulos son agudos (menores de 90º)." crlf)
	(printout t "1. Si" crlf)
	(printout t "2. No" crlf)
	(bind ?resultado (read))
	(if (eq ?resultado 1)
		then
		(assert (triangulo-acutangulo 2))
	else
	(printout t " Uno de sus ángulos es mayor a 90º. Los otros dos son agudos (menores de 90º). " crlf)
	(printout t "1. Si" crlf)
	(printout t "2. No" crlf)
	(bind ?resultado3 (read))
	(if (eq ?resultado3 1)
		then
		(assert (triangulo-obtusangulo 3))
	else 
	(printout t " TIPO DE TRIANGULO " crlf)
	(printout t " 1. LADOS " crlf)
	(printout t " 2. ANGULOS " crlf)
	(assert (triangulo-tipo (read))))))
)


(defrule regla1
   (lados-iguales 1)
   =>
   (printout t " Triángulo equilátero " crlf))

(defrule regla2
   (lados-iguales 2)
   =>
   (printout t " Triángulo isósceles " crlf))

(defrule regla3
	(lados-desiguales 3)
   =>
   (printout t "Triángulo escaleno" crlf))


(defrule regla4
   (triangulo-rectangulo 1)
   =>
   (printout t " Triángulo rectángulo " crlf))
(defrule regla5
   (triangulo-acutangulo 2)
   =>
   (printout t " Triángulo acutángulo " crlf))

(defrule regla6
	(triangulo-obtusangulo 3)
   =>
   (printout t "Triángulo obtusángulo" crlf))