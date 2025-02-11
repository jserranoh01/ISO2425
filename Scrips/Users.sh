#!/bin/bash
#Jose Antonio Serrano Hernandez
#Users
#11/02/2025
clear
dia=$(date $x $X $Y)
if [ $# != 1 ]; then
	uids=1000
	else 
	uids=$1
fi   
IFS=:
echo "el $users ha solicitado un informe de usuarios del $dia " >> /tmp/logeventos
count=0
while read us x uid gid d h shell ;do
	
	if [ $uid -ge $uids ]; then
		count=$(($count+1))
		echo " $us - $uid "
		 
	fi
	
done < /etc/passwd
echo " total de usuarios de $count "
