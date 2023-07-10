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