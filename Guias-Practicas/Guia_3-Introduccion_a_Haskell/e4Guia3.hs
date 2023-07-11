--Ejercicio 4. a)
--prodInt: devuelve el producto interno entre dos tuplas R × R.
--ejemplo:   prodInt (2, 3) (3, 2) -> 12.0  y prodInt (1, 0) (0, 1) -> 0.0
prodInt:: (Float, Float) -> (Float, Float) -> Float
prodInt (x1, x2) (y1, y2) = x1*y1 + x2*y2


--Ejercicio 4. b)
--todoMenor: dadas dos tuplas R×R, decide si es cierto que cada coordenada de la primera tupla es menor a la coordenada
--correspondiente de la segunda tupla.
--Ejemplo: todoMenor (2, 3) (3, 4) -> True  y   todoMenor (3, 4) (2, 3) -> False
todoMenor:: (Float, Float) -> (Float, Float) -> Bool
todoMenor (x1, x2) (y1, y2) = x1<y1 && x2<y2


--Ejercicio 4. c)
--distanciaPuntos: devuelve la distancia entre dos puntos de R2.
--Ejemplo: distanciaPuntos (1, 1) (2, 2) -> 1,41..  y distanciaPuntos (5, 0) (0, 0) -> 5.0
distanciaPuntos:: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, x2) (y1, y2) = raizCuadrada ((y1-x1)**2 + (y2-x2)**2)

raizCuadrada:: Float -> Float
raizCuadrada = sqrt

--Ejercicio 4. d)
--sumaTerna: dada una terna de enteros, devuelve la suma de sus tres elementos.
--Ejemplo:  sumaTerna (5, 2, 9) -> 16
sumaTerna:: (Int, Int, Int) -> Int
sumaTerna (x, y, z) = x + y + z


--Ejercicio 4. e)
--sumarSoloMultiplos: dada una terna de numeros enteros y un natural, 
--devuelve la suma de los elementos de la terna que son multiplos del numero natural. 
--Por ejemplo:
--sumarSoloMultiplos (10,-8,-5) 2 -> 2
--sumarSoloMultiplos (66,21,4) 5 -> 0
--sumarSoloMultiplos (-30,2,12) 3 -> -18
sumarSoloMultiplos:: (Integer, Integer, Integer) -> Integer -> Integer
sumarSoloMultiplos (num1, num2, num3) x = soloMultiplo num1 x + soloMultiplo num2 x + soloMultiplo num3 x 


--devuelve el multiplo si es que lo es, si no devuelve 0
--ejemplo: soloMultiplo 8 2 -> 8 y soloMultiplo 8 3 -> 0
soloMultiplo:: Integer -> Integer -> Integer
soloMultiplo dividendo divisor 
    | esMultiploDe dividendo divisor = dividendo
    | otherwise = 0


--dados dos numeros naturales, devuelve True si el primero es multiplo del segundo.
--ejemplo: esMultiploDe 9 3 -> True y esMultiploDe 9 2 -> False
esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe num1 num2 = (restoDeLaDivisionEntera num1 num2 == 0)

restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod


--Ejercicio 4. f)
--posPrimerPar: dada una terna de enteros, devuelve la posicion del primer numero par si es que hay alguno, 
--y devuelve 4 si son todos impares.
--ejemplo:  posPrimerPar (2, 3, 6) -> 1
posPrimerPar:: (Integer, Integer, Integer) -> Int
posPrimerPar (x, y, z)
    | esPar x = 1
    | esPar y = 2
    | esPar z = 3
    | otherwise = 4


--devuelve True si el numero es Par
esPar:: Integer -> Bool
esPar numero = (restoDeLaDivisionEntera numero 2 == 0)


--Ejercicio 4. g)
--crearPar :: a ->b ->(a, b): crea un par a partir de sus dos componentes dadas por separado 
--(debe funcionar para elementos de cualquier tipo).
--Ejemplo: crearPar True 'b' -> (True, 'b')
crearPar:: a -> b -> (a, b)
crearPar comp1 comp2 = (comp1, comp2)


--Ejercicio 4. h)
--invertir :: (a, b) ->(b, a): invierte los elementos del par pasado como parametro 
--(debe funcionar para elementos de cualquier tipo).
--ejemplo:  invertir (90, 87.55) -> (87.55, 90)
invertir:: (a, b) -> (b, a)
invertir (x, y) = (y, x)