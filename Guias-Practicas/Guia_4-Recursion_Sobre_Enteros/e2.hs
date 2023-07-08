--Ejercicio 2
--devuelve el entero mas proximo y menor de un numero cualquiera
--ejemplo:  parteEntera 2.5 -> 2

parteEntera:: Float -> Integer
parteEntera numero
  | numero>=0 = parteEnteraPositivosOCero numero
  | otherwise = parteEnteraNegativos numero


--devuelve el entero mas proximo y menor de un numero no negativo
--ejemplo:  parteEnteraPositivosOCero 0 -> 0
parteEnteraPositivosOCero :: Float -> Integer
parteEnteraPositivosOCero numero 
        | (numero>=0 && numero<1) = 0
        |  numero>=1              = (parteEnteraPositivosOCero(numero-1)) + 1
        |  otherwise              = undefined

--devuelve el entero mas proximo y menor de un numero negativo
-- ejemplo: parteEnteraNegativos (-7.6) -> -8
parteEnteraNegativos :: Float -> Integer
parteEnteraNegativos numero
  | (numero<0 && numero>=(-1)) = -1
  |        numero<(-1)         = parteEnteraNegativos (numero+1) + (-1)
  |         otherwise          = undefined