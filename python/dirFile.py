import os.path
import shutil as s

"""
Autor: Jose Antonio Serrano Hernandez
fecha:7/03/2025
"""

listaCarpetas = []
listaFicheros = []
fich = open("rutas.txt", "r")
contenido = fich.readlines()
opciones_validas = [listaFicheros, listaCarpetas]
for i in contenido:
    r = i.strip()
    if os.path.isfile(r):
        listaFicheros.append(r)
    elif os.path.isdir(r):
        listaCarpetas.append(r)
print("Carpetas", listaCarpetas)
print("Ficheros", listaFicheros)
while True:
    print("▪ A- Pedir nombre de fichero y eliminarlo.")
    print("▪ B- Pedir nombre de directorio y mostrar su información.")
    print("▪ C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino. ")
    print("▪ D- Mostrar lista elegida por el usuario ")
    print("▪ E- Salir")
    opt = input("Elige la opcion que desees.")
    match opt:
        case "A":
            nombreFichero = input("Nombre de fichero: ")
            if os.path.exists(nombreFichero):
                os.remove(nombreFichero)
                print("Fichero Eliminado")
            else:
                print("el fichero no existe o no es valido")
        case "B":
            nombreDirectorio = input("Nombre de directorio: ")
            if os.path.exists(nombreDirectorio) and os.path.isdir(nombreDirectorio):
                print(os.system("ls -l " + nombreDirectorio))
            else:
                print("el fichero no existe o no es valido")
        case "C":
            nombreFichero = input("Nombre de fichero: ")
            nombreDirectorio = input("Nombre de directorio de destino: ")
            if os.path.exists(nombreFichero) and os.path.isfile(nombreFichero):
                s.copy(nombreFichero, nombreDirectorio)
            else:
                print("el fichero no existe o no es valido")
        case "D":
            listaelegida = input("Lista de qué deseas elegir: (listaCarpetas o listaFicheros): ").strip()
            if listaelegida == "listaCarpetas":
                print("Lista de carpetas:", listaCarpetas)
            elif listaelegida == "listaFicheros":
                print("Lista de ficheros:", listaFicheros)
            else:
                print("Opción inválida. Debes elegir 'listaCarpetas' o 'listaFicheros'.")
        case "E":
            print("Saliendo...")
            break
        case _:
            print("Opcion invalida ")
