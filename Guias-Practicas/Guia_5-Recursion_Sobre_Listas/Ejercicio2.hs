
--Ejercicio 2.1
--devuelve True sii elemento esta en la lista 
--ejemplo:  pertenece 2 [4, 3, 3, 7] -> False
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece elemento lista 
 | longitud lista == 0 = False
 | otherwise           = cabezaDeLista == elemento || pertenece elemento (colaDeLista)
  where 
    colaDeLista   = tail lista 
    cabezaDeLista = head lista    

--version 2 con pattern matching
perteneceV2 :: (Eq t) => t -> [t] -> Bool
perteneceV2 _ []           = False
perteneceV2 elemento (x:xs)= x==elemento || perteneceV2 elemento xs

--devuelve la longitud de la lista
--ejemplo: longitud ['a', 'b', 'c'] -> 3
longitud :: [t] -> Integer
longitud []     = 0
longitud (_:xs) = 1 + longitud xs


--Ejercicio 2.2
--devuelve True si todos los elemetos de la lista son iguales, de lo contrario devuelve False
--ejemplo:  todosIguales [1, 3, 1] -> False
--          todosIguales [3, 3, 3] -> True
todosIguales :: (Eq t) => [t] -> Bool
todosIguales []     = False
todosIguales [_]    = True
todosIguales (x:xs) = x == head xs && todosIguales xs

--version 2 usando un solo patron:
todosIgualesV2 :: (Eq t) => [t] -> Bool
todosIgualesV2 lista 
 | longitud lista == 0 = False
 | longitud lista == 1 = True
 | otherwise           = cabezaDeLista == cabezaDeColaDeLista && todosIgualesV2 (colaDeLista)
    where 
    colaDeLista         = tail lista 
    cabezaDeLista       = head lista
    cabezaDeColaDeLista = head (tail lista)


--Ejercicio 2.3
--devuelve True si todos los elementos son distintos entre si
--Ejemplo:  todosDistintos [3,4,5,6] -> True
todosDistintos :: (Eq a) => [a] -> Bool
todosDistintos []    = True
todosDistintos lista = todosDistintos (principio lista) && not(pertenece (ultimo lista) (principio lista))

--devuelve la lista con todos los elementos menos el ultimo
--ejemplo: principio [1, 3, 5, 6] -> [1, 3, 5]
principio :: [t] -> [t]
principio []     = undefined
principio [_]    = []
principio (x:xs) = todos_los_elementos_de_la_lista_menos_el_ultimo
  where
  todos_los_elementos_de_la_lista_menos_el_ultimo = [x] ++ principio xs

--devuelve el ultimo elemento de la lista
--ejemplo: ultimo ["a", "e", "i"] -> "i"
ultimo :: [t] -> t
ultimo []                = undefined
ultimo (x:xs)
  | (longitud (x:xs)==1) = x
  |  otherwise           = ultimo xs

--Ejercicio 2.4
--devuelve True si hay elementos repetidos en la lista
--ejemplo:  hayRepetidos ["a", "b", "c", "b"] -> True
hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos []      = False
hayRepetidos (x:cola)= (cantidadDeApariciones x cola )>=1 || hayRepetidos cola

--funcion auxiliar
--devuelve la cantidad de apariciones de un elemento en la lista
--ejemplo: cantidadDeApariciones 5 [1, 2, 4, 5, 4, 9, 67, 5, 5] -> 3
cantidadDeApariciones ::(Eq t)=> t -> [t] -> Int
cantidadDeApariciones _ [] = 0
cantidadDeApariciones elemento (x:xs)
  | (elemento==x)          = 1 + (cantidadDeApariciones elemento xs)
  | otherwise              = 0 + (cantidadDeApariciones elemento xs)


--Ejercicio 2.5
--que dado un elemento x y una lista xs, elimina la primera aparicion de x en la lista xs (de haberla)
--ejemplo:  quitar 'a' "Matias" -> "Mtias"         type String = [Char]
quitar:: (Eq t) => t -> [t] -> [t]
quitar _ []       = []
quitar elemento (x:xs)
  |(elemento== x) = xs
  |  otherwise    = x:(quitar elemento xs)

--Ejercicio 2.6
--que dada una lista xs y un elemento x, elimina todas las apariciones de x en la lista xs (de haberlas).
--ejemplo:   quitarTodos 'a' ["a", "r", "a", "i", "B", "a", "e","a", "r"] -> ['r', 'i', 'B', 'e', 'r'] -> "riBer"
quitarTodos :: (Eq t) => t -> [t]->[t]
quitarTodos _ [] = []
quitarTodos elemento (x:xs)
  | (elemento==x)= quitarTodos elemento xs
  | otherwise    = [x]++(quitarTodos elemento xs)
                          

--Ejercicio 2.7
--devuelve la lista con una unica aparicion de cada elemento, eliminando las repeticiones adicionales
--ejemplo:  eliminarRepetidos [0, 1, 2, 5, 9, 0, 3, 0] -> [1, 2, 5, 9, 3, 0]

eliminarRepetidos :: (Eq a) => [a] -> [a]
eliminarRepetidos []         = []
eliminarRepetidos (cabeza:cola) 
  |  (pertenece cabeza cola) = eliminarRepetidos cola
  |  otherwise               = cabeza:(eliminarRepetidos cola)

--Ejercicio 2.8
--dadas dos listas devuelve True sii ambas listas contienen los mismos elementos, sin tener en cuenta repeticiones
--ejemplo:  mismosElementos [1, 2, 3, 3, 1] [1, 2, 3] -> True
mismosElementos :: (Eq a) => [a] -> [a] -> Bool
mismosElementos lista1 lista2 = incluido lista1 lista2 && incluido lista2 lista1

--funcion auxiliar
--dadas dos listas devuelve True sii todos los elementos de la primera lista estan en la segunda, 
--sin tener en cuenta repeticiones
--ejemplo:  icluido [1, 2, 1, 1] [1, 2, 4] -> True
incluido::(Eq t) => [t] -> [t] ->Bool
incluido [] _ = True
incluido (x:xs) lista = (pertenece x lista) && incluido xs lista
                  
                                          
--Ejercicio 2.9    
--devuelve True sii la lectura es la misma de derecha a izquierda y de izquierda a derecha                                      
--ejemplo:  capicua ['a', 'c', 'b', 'b', 'c', 'a'] -> True     capicua ['a', 'c', 'b', 'c', 'a'] -> True
--          capicua "reconocer" -> True             capicua ['a', 'c', 'b', 'd', 'c', 'a'] -> False
capicua:: (Eq t) => [t]->Bool
capicua []     = True
capicua [_]    = True
capicua (x:xs) = (x==ultimo xs) && capicua (principio xs)