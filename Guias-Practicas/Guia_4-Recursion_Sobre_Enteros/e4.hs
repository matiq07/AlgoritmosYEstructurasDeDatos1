--Ejercicio 4 
--dado n∈N devuelve la suma de los primeros n numeros impares. 
--Por ejemplo: sumaImpares 3 -> 9

sumaImpares :: Integer -> Integer
sumaImpares 1 = 1
sumaImpares n = sumaImpares (n-1) + (2*n-1)