--Ejercicio 1.1
--devuelve la longitud de la lista
--ejemplo: longitud ['a', 'b', 'c'] -> 3
longitud :: [t] -> Integer
longitud []     = 0
longitud (_:xs) = 1 + longitud xs


--Ejercicio 1.2
--devuelve el ultimo elemento de la lista
--ejemplo: ultimo ["a", "e", "i"] -> "i"
ultimo :: [t] -> t
ultimo []                = undefined
ultimo (x:xs)
  | (longitud (x:xs)==1) = x
  |  otherwise           = ultimo xs


--Ejercicio 1.3
--devuelve la lista con todos los elementos menos el ultimo
--ejemplo: principio [1, 3, 5, 6] -> [1, 3, 5]
principio :: [t] -> [t]
principio []     = undefined
principio [_]    = []
principio (x:xs) = todos_los_elementos_de_la_lista_menos_el_ultimo
  where
  todos_los_elementos_de_la_lista_menos_el_ultimo = [x] ++ principio xs


--Ejercicio 1.4
--devuelve la lista dada vuelta
--ejemplo: reverso [3, 4, 5] -> [5, 4, 3]
reverso :: [t] -> [t]
reverso []     = []
reverso (x:xs) = reverso xs ++ [x]
