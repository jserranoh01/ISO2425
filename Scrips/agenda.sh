  GNU nano 7.2                                                                                                                     agenda.sh                                                                                                                              
 #!/bin/bash
# Agenda
# Jose Antonio Serrano Hernandez
# 28/01/2025

while true; do
    echo " a) Añadir una entrada "
    echo " b) Buscar por DNI "
    echo " c) Ver la agenda completa "
    echo " d) Eliminar todas las entradas de la agenda "
    echo " e) Finalizar "

    read -p " Elige tu opción: " opt

    case $opt in
        a)
            read -p " Introduzca DNI: " dni
            if grep -q "^$dni:" agenda.txt; then
                echo " Ya existe este usuario "
            else
                read -p " ¿Cuál es tu nombre? " name
                read -p " ¿Cuál es tu apellido? " surname
                read -p " ¿Cuál es tu localidad? " location
                echo "$dni:$name:$surname:$location" >> agenda.txt
                echo " Persona añadida con exito "
            fi
            ;;
        b)
            read -p " Introduzca DNI: " dni
            if grep -q "^$dni:" agenda.txt; then
                datos=$(grep "^$dni:" agenda.txt)
                name=$(echo "$datos" | cut -d ":" -f 2)
                apellido=$(echo "$datos" | cut -d ":" -f 3)
                localidad=$(echo "$datos" | cut -d ":" -f 4)
                echo " La persona con DNI $dni se llama $name $apellido y vive en $localidad "
            else
                echo " dni no registrado "
            fi
            ;;
        c)
            if [ ! -s agenda.txt ]; then
                echo " la agenda esta vacia "
            else
                cat agenda.txt
            fi
            ;;
        d)
            > agenda.txt
            echo "Todas las entradas han sido eliminadas "
            ;;
        e)
            echo " Saliendo.. "
            exit 
            ;;
        *)
            echo " Opcion incorrecta, intentelo de nuevo  "
            ;;
    esac
done
