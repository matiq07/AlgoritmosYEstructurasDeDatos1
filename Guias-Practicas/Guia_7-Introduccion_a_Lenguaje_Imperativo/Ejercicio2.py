from math import sqrt
from math import ceil
import math

#1.
def imprimir_saludo(nombre:str):
 print("hola", nombre)

nombre: str = input("Ingrese nombre: ")
imprimir_saludo(nombre)


#2. 
def raizCuadradaDe(numero: float) -> float:
 radicando: float = numero
 raiz: float = sqrt(radicando)
 return(raiz)

x:float = float(input("ingrese un numero decimal: "))
print("la raiz cudrada de", x, "es:", raizCuadradaDe(x))


#3.
estribillo : str = "Bajan, el día es vidrio sin sol \nBajan, la noche te oculta la voz \nY además vos querés sol \nDespacio también podés hallar la luna \n"
def imprimir_dos_veces(estribillo: str):
    print(estribillo*2)
    

imprimir_dos_veces(estribillo)


#4
def es_multiplo_de(n: int, m: int) -> bool:
  dividendo: int= n
  divisor: int= m
  resto: int= dividendo % divisor
  resultado: bool= (resto==0)
  return resultado

n: int= int(input("ingrese dividendo: "))
m: int= int(input("ingrese divisor: "))
print(n, "es multiplo de", str(m)+"?->", es_multiplo_de(n,m))


#5.

def es_par(numero: int) -> bool:
  res: bool= es_multiplo_de(numero, 2)
  return res

numero: int= int(input("ingrese numero: "))
print(numero, "espar?:", es_par(numero))


#6
def cantidad_de_pizzas(comensales: int, min_cant_de_porciones:int) -> int:
 porciones_por_pizza: int= 8
 porciones_totales: int = comensales * min_cant_de_porciones
 pizzas_totales: int = ceil(porciones_totales/porciones_por_pizza)
 return(pizzas_totales)

 
comensales=int(input("ingrese la cantidad de comensales: "))
min_cant_de_porciones: int= int(input("ingrese la cantidad que come cada uno: "))
print("la cantidad de pizzas que necesitamos es:", cantidad_de_pizzas(comensales, min_cant_de_porciones))