--devuelve el i-esimo numero de Fibonacci
--ejemplo:  fibonacci 0 -> 0 y fibonacci 6 -> 8

fibonacci :: Integer -> Integer
fibonacci numero 
        | numero==0 = 0
        | numero==1 = 1
        | otherwise = fibonacci (numero-2) + fibonacci (numero-1)