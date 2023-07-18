-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }   

sumaPrimerosNImpares :: Integer -> Integer
sumaPrimerosNImpares n | n == 1 = 4
                       | otherwise = sumaPrimerosNImpares (n-1) +4*n


