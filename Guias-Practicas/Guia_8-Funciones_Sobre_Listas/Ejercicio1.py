
#import array
#1
def pertenece(enteros:list, elem: int) ->bool:
    for entero in enteros:
        if(entero==elem):
            return True
    else:
        return False

#ejemplos:
enteros1 = [2, 5, 8, 9]
enteros2 = [2, 4, 6, 8, 9, 12]

print("10 pertenece a", enteros1,"es", pertenece(enteros1, 10)) #debe imprimir False
print("12 pertenece a", enteros2,"es", pertenece(enteros2, 12)) #debe imprimir True


#2
def divideATodos(enteros, elem):
    indice = 0
    esDivisible = True
    while(indice < len(enteros)):
        esDivisible= esDivisible and (enteros[indice]%elem==0)
        indice += 1
    return esDivisible

#ejemplos:

lista1 =[3,6,9,12,15]
lista2 = [3,6,9,8,8,2]

print("todos los elementos de", lista1, "son divisibles por 3:", divideATodos(lista1,3)) #deberia imprimir True
print("todos los elementos de", lista2, "son divisibles por 2:",divideATodos(lista1,2)) #deberia imprimir False


#3
def sumaTotal(numeros)->int:
    suma = 0
    for elem in numeros:
        suma = suma + elem
    return suma

#ejemplos
impares = [1, 3, 5, 7]
pares = [0, 2, 4, 6, 8]

print("la suma de los valores de la lista impares: ",sumaTotal(impares)) #debe imprimir 16
print("la suma de los valores de la lista pares: ",sumaTotal(pares))#debe imprimir 20


#4
 
#def ordenados(listaNumeros):
  


numeros1= [1, 2, 3, 4, 5]
numeros2= [2, 5, 5, 14, 1, 6, 3]

numeros2.count(5)

print(numeros2.count(5))


#5. Dada una lista de palabras, devolver verdadero si alguna palabra tiene longitud mayor a 7.
def tieneLongitudMayor7(palabras) -> bool:
    i=0
    resultado=False
    while(i<len(palabras)):
        resultado=resultado or (len(palabras[i])>=7)
        i+=1
    return resultado

palabras1 = ["chau", "gato", "hola", "perro"]
palabras2 = ["cigarillo", "animal"]
print(tieneLongitudMayor7(palabras1)) #debe imprimir False
print(tieneLongitudMayor7(palabras2)) #debe imprimir True

"""  6. Dada una cadena de texto (string), devolver verdadero si esta es palindroma (se lee igual en ambos sentidos), falso en
caso contrario. """
