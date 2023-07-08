--Ejercicio 3 
--dados dos numeros naturales devuelve True si el primero es divisible por el segundo.
--ejemplo:  esDivisible 21 3 -> True

esDivisible :: Integer -> Integer -> Bool
esDivisible _ 0          = undefined
esDivisible numero1 numero2
    | (numero1==numero2) = True
    | (numero1<numero2)  = False
    |  otherwise         = esDivisible (numero1 - numero2) numero2
