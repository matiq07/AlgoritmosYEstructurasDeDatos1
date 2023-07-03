import math
#1.
def raizDe2() -> float :
    raiz: float= math.sqrt(2)
    res: float= round(raiz,4)
    return res

print("La raiz cuadrada de 2 es: ", raizDe2())

#2.
def imprimir_hola():
  print("hola")

imprimir_hola()

#3.
def imprimir_un_verso():
 print("Aquí me pongo a cantar \nAl compás de la vigüela, \nQue el hombre que lo desvela \nUna pena extraordinaria \nComo el ave solitaria \nCon el cantar se consuela.")

imprimir_un_verso()

#4.
def factorial_2() -> int:
 res : int=1*2
 return res

print("el factorial de 2 es: " + str (factorial_2()))

#5.
def factorial_3() -> int:
 res: int= 3*factorial_2()
 return res

print("el factorial de 3 es: " + str (factorial_3()))

#6.
def factorial_4() -> int:
 res: int = 4 * factorial_3()
 return res
 
print("el factorial de 4 es: " + str (factorial_4()))


#7
def factorial_5() -> int:
 res: int = 5 * factorial_4()
 return res
 
print("el factorial de 5 es:", factorial_5())