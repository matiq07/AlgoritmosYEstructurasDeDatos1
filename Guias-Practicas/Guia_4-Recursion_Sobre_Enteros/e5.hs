--Ejercicio 5. 
--dado n∈N calcula n!! = n (n−2)(n−4) · · · .
--Por ejemplo:
--medioFact 10 -> 10 ∗ 8 ∗ 6 ∗ 4 ∗ 2 -> 3840
--medioFact 9 -> 9 ∗ 7 ∗ 5 ∗ 3 ∗ 1 -> 945
--medioFact 0 -> 1

medioFact :: Integer ->Integer
medioFact 0 = 1
medioFact 1 = 1
medioFact n = medioFact (n-2) * n