--Ejercicio 3.1
-- devuelve la sumatoria de todos los elementos de la lista
-- ejempplo:    sumatoria [2, 5, 3] -> 10
sumatoria :: [Integer] -> Integer
sumatoria lista
  | not(tiene_elementos) = 0
  | otherwise            = head lista + sumatoria (tail lista)
 where 
  tiene_elementos = lista/=[]


--Ejercicio 3.2
-- devuelve la productoria de cada uno de los elementos de la lista
--ejemplo:  productoria [2, 5, 7, 2, 1, 3] -> 420
productoria :: [Integer] -> Integer
productoria lista
 | longitud lista == 0 = neutro_para_el_producto
 | otherwise = producto_de_todos_los_elementos
 where 
    neutro_para_el_producto = 1
    producto_de_todos_los_elementos = head lista * productoria (tail lista)


--devuelve la longitud de la lista
--ejemplo: longitud ['a', 'b', 'c'] -> 3
longitud :: [t] -> Integer
longitud []     = 0
longitud (_:xs) = 1 + longitud xs


--Ejercicio 3.3
--devuelve el maximo valor de la lista
--ejemplo:  maximo [4, 7, 65, 77, -2, 77, 10] -> 77
maximo :: [Integer] -> Integer
maximo   []     = undefined
maximo [x]    = x
maximo (x:y:ys)
  | max x y== x= maximo (x:ys)
  | otherwise = maximo (y:ys)

-- Ejercicio 3.4
--devuelve una nueva lista pero habiendo sumado n a cada elemento de la lista de entrada
--ejemplo:  sumarN 4 [2, 4, 5, 7] -> [6, 8, 9, 11]
sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n (x:xs) = (n + x):(sumarN n xs) 


--Ejercicio 3.5
--devuelve una nueva lista resultante de sumar el primer elemento de la lista de entrada a todos los elementos de la misma lista
--ejemplo: sumarElPrimero [3, 1, 5, 6] -> [6, 4, 8, 9]
sumarElPrimero:: [Integer] -> [Integer]
sumarElPrimero lista = sumarN (head lista) lista


--Ejercicio 3.6
--devuelve una nueva lista resultante de sumar el ultimo elemento de la lista de entrada a todos los elementos de la misma lista
--ejemplo: sumarElUltimo [3, 1, 5, 6] -> [9, 7, 11, 12]
sumarElUltimo:: [Integer] -> [Integer]
sumarElUltimo lista = sumarN (ultimo lista) lista


--devuelve el ultimo elemento de la lista
--ejemplo: ultimo ["a", "e", "i"] -> "i"
ultimo :: [t] -> t
ultimo []                = undefined
ultimo (x:xs)
  | (longitud (x:xs)==1) = x
  |  otherwise           = ultimo xs


--Ejercicio 3.7
--devuelve una lista de todos elementos pares
-- ejemplo: pares [1, 2, 3, 5, 8, 2] -> [2, 8, 2]
pares:: [Integer] -> [Integer]
pares [] = []
pares (x:xs)
  | (esPar x) = x:pares xs
  | otherwise = pares xs

esPar:: Integer -> Bool
esPar n = (mod n 2 ==0)


--Ejercicio 3.8
--devuelve una lista con todos elementos multiplos del entero pasado como parametro
--ejemplo:  multiplosDeN 3 [2, 3, 5, 6, 9] -> [3, 6, 9]

multiplosDeN:: Integer -> [Integer] ->[Integer]
multiplosDeN _ [] = []
multiplosDeN numero (x:xs)
  | (esMultiploDe x numero) = x:(multiplosDeN numero xs)
  | otherwise               = (multiplosDeN numero xs)

esMultiploDe:: Integer ->Integer ->Bool
esMultiploDe numero divisor
  | (divisor /=0) = ((mod numero divisor) ==0)
  | otherwise     = False 

