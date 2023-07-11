--Ejercicio 6
--devuelve True si es un no bisiesto
--Ejemplos:
--bisiesto 1901 -> False, bisiesto 1904 -> True,
--bisiesto 1900 -> False, bisiesto 2000 -> True.
bisiesto :: Integer -> Bool
bisiesto año = not(not(esMultiploDe año 4 ) || (esMultiploDe año 100 && not(esMultiploDe año 400 )))


--dados dos numeros naturales, devuelve True si el primero es multiplo del segundo.
--ejemplo: esMultiploDe 9 3 -> True y esMultiploDe 9 2 -> False
esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe num1 num2 = (restoDeLaDivisionEntera num1 num2 == 0)


restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod
