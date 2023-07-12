#1 version for
for num in range(1, 11, 1):
    print(num)


#2 version for
for num in range(10, 41, 2):
    print(num)


#3 version for
for num in range(1, 11, 1):
    print("eco")


#4 version for
def cuentaRegresiva(num):
    for num in range(num,0,-1):
        print(num)
    print("despegue")

x = int(input("ingrese valor para empezar cuenta regresiva: "))
cuentaRegresiva(x)