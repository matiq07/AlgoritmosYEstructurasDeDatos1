import math

#tengo que usar las funciones min  y max para resolver
#La altura esta expresda en metros
#El peso del pino esta expresada en kilogramos
#El peso del pino se estima a partir de la altura
# si altura del arbol es de 5 metros los primeros 3 metros pesan 900=3*300
# y los siguientes 2 metros pesan 200*2= 400

#4.1
def metro_a_centimetro(altura:int)->int:
    res: int= altura*100
    return res

def peso_pino(altura:int):
    if (altura<=3):
        return metro_a_centimetro(altura)*3
    else:
        return (metro_a_centimetro(3)*3 + metro_a_centimetro(altura-3) *2)


altura= int(input("ingrese altura en metros del pino: "))
print("El peso del pino en kg es:", peso_pino(altura))

#4.2
peso_util_min= min(400,1000)
peso_util_max= max(400,1000)
def es_peso_util(pesoPino: int)->bool:
    res: bool= (pesoPino>= peso_util_min and pesoPino<= peso_util_max)
    return res

pesoPino= int(input("ingrese peso en kg del pino: "))
print("Le sirve a la Fabrica este pino segun su peso?:",es_peso_util(pesoPino))

#4.4
def sirve_pino(altura)->bool:
    res: bool= (peso_pino(altura)>=400 and peso_pino(altura)<=1000)
    return res


altura= int(input("ingrese altura en metros del pino: "))  
print("Le sirve a la fabrica este pino segun su altura:", sirve_pino(altura))