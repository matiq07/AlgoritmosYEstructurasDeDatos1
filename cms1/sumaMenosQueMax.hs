
-- No editar esta parte
main :: IO()
main = do {
  x <- readLn;
  print (sumaMenosQueMax (x :: (Int, Int, Int))) 
  }
sumaMenosQueMax :: (Int, Int, Int) -> Bool
sumaMenosQueMax (num1,num2,num3) = maximo3 num1 num2 num3 > ((minimo3 num1 num2 num3) + (medio num1 num2 num3))
                        
--uso las funciones min y max del prelude de haskell
maximo3 :: Int->Int->Int->Int
maximo3 x y z = max (max x y ) z


minimo3 :: Int->Int->Int->Int
minimo3 x y z = min (min x y) z
 

medio :: Int->Int->Int->Int
medio x y z
  |(max x y) < z = max x y
  |(min x y) > z = min x y
  |otherwise = z

