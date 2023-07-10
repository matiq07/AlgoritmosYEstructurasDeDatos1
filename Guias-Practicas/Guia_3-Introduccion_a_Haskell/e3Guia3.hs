-- Ejercicio 3. 
-- problema estanRelacionados (a:Z, b:Z) : Bool {
-- requiere: {a ̸= 0 ∧ b ̸= 0}
-- asegura: {(res = true) ↔ (∃k : Z)((k ̸= 0) ∧ (a ∗ a + a ∗ b ∗ k = 0))}
-- }
-- Por ejemplo:
-- estanRelacionados 8 2 -> True porque existe un k = −4 tal que 8^2 + 8*2*(−4) = 0.
-- estanRelacionados 7 3 -> False porque no existe un k entero tal que 7^2 + 7*3*k = 0.
-- a*a + a*b*k = 0 <-> a*(a + b*k) = 0 <-> a + b*k = 0 <-> a = b*(-k) <-> a mod b = 0

estanRelacionados :: Integer ->Integer ->Bool
estanRelacionados num1 num2 = (restoDeLaDivisionEntera num1 num2 == 0)

restoDeLaDivisionEntera:: Integer -> Integer -> Integer
restoDeLaDivisionEntera = mod