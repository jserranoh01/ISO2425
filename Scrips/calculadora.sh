#!/bin/bash
#Jose Antonio Serrano Hernandez
#Calculadora
#04/02/25
archivo=$1
max=$2
if [ $# -ne 2 ]; then
    echo " carpeta $archivo $max "
    exit
fi
if [ -f "$archivo.txt" ]; then
    echo " El fichero ya existe "
    exit
else
echo "Operaciones maximas de $max "

	cont=1
	while [ $cont -le $max ]; do
  	  read -p " Operación (S,R,M,D o X para salir) op1 op2: " op op1 op2
	if [ %op == X ];then
		echo " Saliendo "
		break
	fi
  	  case $op in
  	      "S") 
  	          res=$((op1 + op2))
  	          echo "$op1 + $op2 = $res" >> "$archivo.txt"
  	          ;;
   	     "R")
   	         res=$((op1 - op2))
   	         echo "$op1 - $op2 = $res" >> "$archivo.txt"
   	         ;;
   	     "M") 
   	         res=$((op1 * op2))
    	        echo "$op1 x $op2 = $res" >> "$archivo.txt"
    	        ;;
    	    "D") 
    	        if [ "$op2" -eq 0 ]; then
   	             echo "Error división por cero no permitida."
   	         else
   	             res=$((op1 / op2))
   	             echo "$op1 / $op2 = $res" >> "$archivo.txt"
		fi
		;;
			*) 
		 echo " Operacion no valida "
		;;
	esac
   	cont=$((cont + 1))
	done
fi
pwd
cat $archivo.txt
