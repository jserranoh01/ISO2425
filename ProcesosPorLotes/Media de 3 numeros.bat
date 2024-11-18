@echo off
:: Media de 3 numeros
:: Autor Jose antonio Serrano Hernandez
::Fecha 18/11/24
set suma=%1+ %2 +%3
set /a res=(%1 +%2 + %3)/3
echo La media de %1 mas %2 y %3 es igual a %res%