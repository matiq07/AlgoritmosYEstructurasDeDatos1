--Ejercicio 5
--Ejemplo:  todosMenores (3, 4, 5) -> False  y todosMenores (4, 6, 2) -> True
todosMenores :: (Integer, Integer, Integer) ->Bool
todosMenores (num1, num2, num3) = ((f num1) > (g num1)) && ((f num2 )> (g num2)) && ((f num3) > (g num3))


f :: Integer -> Integer
f numero
    | numero<=7 = numero*numero
    | otherwise = 2*numero - 1


g :: Integer -> Integer
g numero
    | (esPar numero) = numero `div` 2
    | otherwise = 3*numero + 1




--devuelve True si el numero es Par
esPar:: Integer -> Bool
esPar numero = (restoDeLaDivisionEntera numero 2 == 0)

restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod