--Ejercicio 9. a)
--devuelve 1 si el numero n es igual a 0, en caso contrario devuelve 0
f1 :: Float -> Float
f1 n 
    | n == 0 = 1
    | otherwise = 0


--devuelve 15 si n es igual a 1, y devueleve -15 si n es igual a -1. En cualquier otro caso se indefine
f2 :: Float -> Float
f2 n 
    | n == 1 = 15
    | n == -1 = -15
    | otherwise = undefined


--devuelve 7 si n es menor o igual a 9 y si n es mayor que 9 devuelve 5
f3 :: Float -> Float
f3 n 
    | n <= 9 = 7
    | n >= 3 = 5
    |otherwise = undefined


--devuelve la mitad de la suma de dos numeros flotantes
f4 :: Float -> Float -> Float
f4 x y = (x + y)/2


--devuelve devuelve el promedio entre las componentes de la tupla
f5 :: (Float , Float) -> Float
f5 (x , y) = (x + y)/2

--devuelve true si el primer numero sin tener en cuenta el decimal es igual al segundo numero
f6 :: Float -> Int -> Bool
f6 a b = truncate a == b