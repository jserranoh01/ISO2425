#!/bin/bash
#Jose Antonio Serrano Hernandez
#FiveOrMore
#10/02/2025
clear

fich=$1
dire=$2
arch=$(ls $dire | wc -l)
if [ $# != 2 ]; then
	echo " Parametros incorrectos "
	Exit
fi
if [ -f $fich ]; then
		echo " El fichero existe "
		exit
	else
		touch $fich
fi
if [ ! -d $dire ]; then
	echo " El directorio no existe "
		exit
fi
if [ $arch -eq 0 ];then
	echo " esta vacio "
	exit
fi
echo " Jose Antonio Serrano Hernandez "

direc=$(ls $dire/*.txt)
cuant=$(wc -l $direc)

for i in $direc; do	
	cuen=$(cat $i | wc -l)
	pala=$(cat $i | wc -w)
	if [ $cuen -ge 5 ];then
		echo $i
		echo $i >> $fich
		echo " el fichero original tiene $pala palabras " > $i.q
		cat $i >> $i.q
	fi
done
num=$(cat $fich | wc -l)
echo " hay $num ficheros " >> $fich
