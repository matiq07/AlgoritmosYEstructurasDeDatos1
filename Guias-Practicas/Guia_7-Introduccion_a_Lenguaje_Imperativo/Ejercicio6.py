#1
i:int =1
while (i<=10):
    print(i)
    i+=1

#2
i:int =10
while(i<=40):
   print(i)
   i+=2
    

#3
i:int =1
while(i<=10):
    print("eco")
    i+=1


#4
def cuentaRegresiva(numero:int):
    while(numero>=1):
        print(numero)
        numero-=1
    print("despegue") 
    
numero:int=int(input("ingresa numero para empesar la cuenta regresiva: "))
cuentaRegresiva(numero)


#5

#Proposito o requerimientos: funcion que monitoree un viaje en el tiempo
# precondicion: anoPartida siempre es mayor que anoLlegada

def monitorDeViaje(anoPartida: int, anoLlegada: int):
    while (anoPartida>anoLlegada):
        anoPartida= anoPartida-1
        print("viajo un ano al pasado, estamos en el ano:",anoPartida)
        

anoPartida = int(input("ingrese ano partida: "))
anoLlegada = int(input("ingrese ano llegada: "))
monitorDeViaje(anoPartida,anoLlegada)   
