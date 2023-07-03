
#1
def alguno_es_0(num1: float, num2: float) -> bool:
    res: bool= (num1==0 or num2==0)
    return res

num1: float= float(input("ingrese primer numero: "))
num2: float= float(input("ingrese segundo numero: "))
print("alguno de los numeros es 0: ", alguno_es_0(num1,num2))


#2
def ambos_son_0(num1: float,num2: float) -> bool:
    res: bool= (num1==0 and num2==0)
    return res

num1: float= float(input("ingrese primer numero: "))
num2: float= float(input("ingrese segundo numero: "))
print("ambos numeros son 0: ", ambos_son_0(num1,num2))

#3

def es_nombre_largo(nombre: str)-> bool:
 res: bool=( len(nombre)>=3 and len(nombre)<=8 )
 return res

nombre: str= (input("ingrese nombre "))
print("el nombre es largo? ->",es_nombre_largo(nombre))


def es_bisiesto(ano: int) -> bool:
   res: bool= (ano % 400==0) or ((ano % 4 ==0) and not(ano % 100==0))
   return res

ano: int= int(input("ingrese el ano "))
print("es ano bisiesto? ->",es_bisiesto(ano))