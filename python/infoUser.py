import os
import cpuinfo as cpu
"""
Autor: Jose Antonio Serrano Hernandez
fecha:25/03/2025
"""

if os.getuid() != 0:
   print(" no eres Root ")
   exit()


while True:
   print("Opción 1: Muestra información del SSOO e información de la CPU.")
   print("Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
   print(
       "Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.")
   print("Opción 4: Salir.")
   opt = int(input(" Elige una opcion "))
   match opt:
       case 1:
           print(os.uname().sysname)
           print(cpu.get_cpu_info()['brand_raw'])
       case 2:
           usu = input(" Dime un usuario ")
           fich = open("/etc/passwd", "r")
           cnt = fich.readlines()
           enc = 0
           for i in cnt:
               if i.split(":")[0] == usu:
                   enc = 1
                   final = i
                   break
           if enc == 1:
               print(final)
           else:
               print(" Usuario no encontrado ")
               os.system("sudo useradd "+ usu)
               print(" Usuario creado ")
       case 3:
           direc = input(" Dime un directorio ")
           if os.path.exists(direc):
               if os.path.isdir(direc):
                   print(" Es un directorio ")
               else:
                   print(" Existe, pero no es un directorio ")
           else:
               os.mkdir(direc)
               print(" Carpeta creada ")
       case 4:
           print(" Adios ")
           break
       case _:
           print(" Error ")
