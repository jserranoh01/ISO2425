@echo off
:: CreateFiles.bat
:: Jose Antonio Serrano Hernandez
:: Fecha 20/11/2024
set /p op="Pulsa 1 para texto Pulsa 2 Para archivo .bat "
if %op% == 1 goto op1
if %op% == 2 goto op2
:op1
set /p name="nombre de texto "
echo > %name%.txt
pause
exit
:op2
set /p arc="nombre de archivo "
echo >%arc%.bat
pause
exit
