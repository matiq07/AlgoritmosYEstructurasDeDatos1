--Ejercicio 7 
--Por ejemplo:
--distanciaManhattan (2, 3, 4) (7, 3, 8) -> 9
--distanciaManhattan ((-1), 0, (-8.5)) (3.3, 4, (-4)) -> 12.8
distanciaManhattan::(Float,Float,Float)->(Float,Float,Float)->Float
distanciaManhattan (x1,x2,x3) (y1,y2,y3) = abs (y1-x1) + abs (y2-x2) + abs (y3-x3)
