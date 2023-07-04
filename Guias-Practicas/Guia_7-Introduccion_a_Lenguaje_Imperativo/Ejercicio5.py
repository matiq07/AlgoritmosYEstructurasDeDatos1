#devolver el doble si es par(un numero). Debe devolver el mismo n´umero en caso de no ser par.


#1
def es_multiplo_de(n: int, m: int)-> bool:
  dividendo: int= n
  divisor: int= m
  resto: int= dividendo % divisor
  resultado: bool= (resto==0)
  return resultado


def es_par(numero: int)-> bool:
  res: bool= es_multiplo_de(numero, 2)
  return res


def devolver_el_doble_si_es_par(numero: int) ->int:
  if (es_par(numero)):
    return 2*numero
  else:
    return numero
  
numero: int= int(input("Ingrese un numero: "))
print(devolver_el_doble_si_es_par(numero))

#2
def devolver_valor_si_es_par_sino_el_que_sigue (numero: int)-> int:
  if (es_par(numero)):
    return numero
  else:
    return numero +1
  
numero= int(input("ingrese un numero: "))
print(devolver_valor_si_es_par_sino_el_que_sigue(numero))


#3
def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(numero:int) -> int:
  doble: int= 2*numero
  triple: int= 3*numero
  if (es_multiplo_de(numero,9)):
    return triple
  else:
    if (es_multiplo_de(numero,3)):
           return doble
    else:
      return numero
    
numero: int= int(input("ingrese valor: "))
print(devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(numero))

#4
def devolver_frase (nombre:str)->str:
  if (len(nombre)>=5):
   return "Tu nombre tiene muchas letras!"
  else:
    return "Tu nombre tiene menos de 5 caracteres"

nombre: str= input("ingrese nombre: ")
print(devolver_frase(nombre))

#5 
def esHombreJubilado(sexo: str, edad: int):
    return (edad>=65 and sexo=="M")
    
def esMujerJubilada (sexo:str, edad:int):
	return (edad>=60 and sexo=="F")
	
def esMayorDeEdad(edad):
	return edad>=18
		

def dondeVoy(sexo: str,edad: int):
   if(esHombreJubilado(sexo,edad)):
      print("anda de vacaciones")
   else:
      if(esMujerJubilada(sexo,edad)):
         print("anda de vacaciones")
      else:
         if(esMayorDeEdad(edad)):
            print("anda a trabajar")
         else:
            print("anda de vacaciones")
   

sexo=(input("Ingrese su género M o F: "))
edad=int(input("ingrese su edad: "))
dondeVoy(sexo,edad)


