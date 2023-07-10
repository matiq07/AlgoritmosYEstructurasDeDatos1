--Ejercicio 2. a)
--devuelve al valor absoluto de un numero entero
--ejemplo:  absoluto (-5) -> 5 y absoluto 3 -> 3
absoluto :: Int -> Int
absoluto numero 
    | numero>=0 = numero
    | otherwise = (-numero)


--Ejercicio 2. b)
--devuelve el maximo entre el valor absoluto de dos numeros enteros
--ejemplo:  maximoAbsoluto (-7) 5 -> 7
maximoAbsoluto:: Int -> Int -> Int
maximoAbsoluto numero1 numero2 = max (absoluto numero1) (absoluto numero2)


--Ejercicio 2. c)
--devuelve el maximo entre tres numeros enteros
--ejemplo:    maximo3 3 4 (-3) -> 4
maximo3:: Int -> Int -> Int -> Int
maximo3 num1 num2 num3 = max (max num1 num2) num3


--Ejercicio 2. d)
--devuelve True si alguno de los dos numeros racionales es 0
--Ejemplo: algunoEs0 3 0 -> True   y algunoEs0 2 2 -> False
--usando pattern matching:
algunoEs0 :: Float -> Float -> Bool
algunoEs0 _ 0 = True
algunoEs0 0 _ = True
algunoEs0 _ _ = False   -- cuando no uso la variable en el segundo miembro pongo _ para indicarlo

--usando un solo patron "las variables"
algunoEs0V2 :: Float -> Float -> Bool
algunoEs0V2 numero1 numero2= (numero1==0 || numero2==0)


--Ejercicio 2. e)
--devuelve True si los dos numeros racionales son 0s
--Ejemplo: ambosSon0 0 0 -> True   y ambosSon0 0 2 -> False
--usando pattern matching:
ambosSon0 :: Float -> Float -> Bool
ambosSon0 0 0 = True
ambosSon0 _ _ = False


--usando un solo patron
ambosSon0V2 :: Float -> Float -> Bool
ambosSon0V2 numero1 numero2 = (numero1==0 && numero2==0)

--Ejercicio 2. f)
--devuelve True si ambos numeros pertenecen al mismo intervalo A, B o C: A=(−∞, 3], B=(3, 7] y C=(7,∞)
--ejemplo: mismoIntervalo 2 3 -> True y mismoIntervalo 0 5 -> False
mismoIntervalo:: Float -> Float -> Bool
mismoIntervalo num1 num2
  | (estaEnClaseA num1 && estaEnClaseA num2) = True
  | (estaEnClaseB num1 && estaEnClaseB num2) = True
  | (estaEnClaseC num1 && estaEnClaseC num2) = True
  |                   otherwise              = False

estaEnClaseA:: Float -> Bool
estaEnClaseA numero = numero<=3

estaEnClaseB:: Float -> Bool
estaEnClaseB numero = numero>3 && numero<=7

estaEnClaseC:: Float -> Bool
estaEnClaseC numero = numero>7


--Ejercicio 2. g)
--que dados tres numeros enteros, devuelve la suma sin sumar repetidos (si los hubiera).
--ejemplo: sumaDistintos 2 2 3 -> 5 y sumaDistintos 4 4 4 -> 4
sumaDistintos:: Int -> Int -> Int ->Int
sumaDistintos numero1 numero2 numero3
    | ((numero1 == numero2) && (numero2==numero3)) = numero1
    | ((numero1 == numero2) && (numero2/=numero3)) = numero1 + numero3
    | ((numero1 == numero3) && (numero2/=numero3)) = numero2 + numero3
    | ((numero2 == numero3) && (numero1/=numero3)) = numero1 + numero2
    | otherwise = numero1 + numero2 + numero3


--Ejercicio 2. h)
--dados dos numeros naturales, devuelve True si el primero es multiplo del segundo.
--ejemplo: esMultiploDe 9 3 -> True y esMultiploDe 9 2 -> False
esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe num1 num2 = (restoDeLaDivisionEntera num1 num2 == 0)

restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod

--Ejercicio 2. i)
--dado un numero natural, devuelve el dıgito de las unidades.
--ejemplo: digitoUnidades 6 -> 6   y digitoUnidades 357 -> 7
digitoUnidades:: Integer -> Integer
digitoUnidades numero
  | numero>=0 && numero<=9 = numero
  | otherwise = restoDeLaDivisionEntera numero 10


--Ejercicio 2. j)
--dado un numero natural, devuelve el dıgito de las decenas.
--ejemplo: digitoDecenas 6 -> 0   y digitoDecenas 357 -> 5
digitoDecenas:: Integer -> Integer
digitoDecenas numero
  | numero>=0 && numero<=9 = 0
  | numero>=10 && numero <=99 = divisionEntera numero 10
  | otherwise = restoDeLaDivisionEntera (divisionEntera numero 10) 10

divisionEntera:: Integer -> Integer -> Integer
divisionEntera = div
