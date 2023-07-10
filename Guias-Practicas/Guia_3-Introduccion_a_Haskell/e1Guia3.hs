--Ejercicio 1. a)
f :: Integer -> Integer
f numero 
  | numero==1  = 8 
  | numero==4  = 131
  | numero==16 = 16
  | otherwise  = undefined


--Ejercicio 1. b)
g :: Integer -> Integer
g numero 
  | numero == 8   = 16
  | numero == 16  = 4
  | numero == 131 = 1
  | otherwise     = undefined


--Ejercicio 1. c)
composicion1 :: Integer -> Integer
composicion1 num1 = (f . g) num1   -- equivalentemente f (g num1)

composicion2 :: Integer -> Integer
composicion2 num2 = (g . f) num2