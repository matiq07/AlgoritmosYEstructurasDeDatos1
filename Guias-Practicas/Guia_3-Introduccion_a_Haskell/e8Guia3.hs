--Ejercicio 8
--Devuelve 1 si la suma de los dos ultimos digitos del primer numero es menor a la suma 
--de los ultimos dos digitos del segundo y, -1 si es mayor y 0 si es igual
--Ejemplo:
--comparar 45 312 -> -1
--comparar 2312 7 -> 1
--comparar 45 172 -> 0

comparar :: Integer -> Integer -> Integer
comparar numero1 numero2
    |(sumaUltimosDosDigitos numero1) < (sumaUltimosDosDigitos numero2) = 1
    |(sumaUltimosDosDigitos numero1) > (sumaUltimosDosDigitos numero2) = -1
    |                             otherwise                            = 0


sumaUltimosDosDigitos:: Integer -> Integer
sumaUltimosDosDigitos numero = digitoUnidades numero + digitoDecenas numero


--dado un numero natural, devuelve el dıgito de las unidades.
--ejemplo: digitoUnidades 6 -> 6   y digitoUnidades 357 -> 7
digitoUnidades:: Integer -> Integer
digitoUnidades numero
  | numero>=0 && numero<=9 = numero
  | otherwise = restoDeLaDivisionEntera numero 10


--dado un numero natural, devuelve el dıgito de las decenas.
--ejemplo: digitoDecenas 6 -> 0   y digitoDecenas 357 -> 5
digitoDecenas:: Integer -> Integer
digitoDecenas numero
  | numero>=0 && numero<=9 = 0
  | numero>=10 && numero <=99 = divisionEntera numero 10
  | otherwise = restoDeLaDivisionEntera (divisionEntera numero 10) 10


restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod


divisionEntera:: Integer -> Integer -> Integer
divisionEntera = div
