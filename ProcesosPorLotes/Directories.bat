@echo off
:: Directories
:: Jose Antonio Serrano Hernandez
:: 20/11/2024
echo 1 para Crear fichero con nombre pedido de usuario
echo 2 para Mostrar el Arbol del directorio de la carpeta usuario
echo 3 para Mostrar archivos con la extension .txt
echo 4 para Crear los directorios Alfredoff, Marinapg y Ramonan en tu directorio actual
echo 5 para Copia el directorio de tu carpeta de usuario en el escritorio

set /p op=""
if %op% == 1 goto op1
if %op% == 2 goto op2
if %op% == 3 goto op3
if %op% == 4 goto op4
if %op% == 5 goto op5


:op1
set /p name="nombre de texto "
echo >%name%.txt
pause
exit
:op2
tree %userprofile%
pause
exit
:op3
echo *.txt
pause
exit
:op4
mkdir C:\Users\Alumno\Desktop\Script\Alfredoff
mkdir C:\Users\Alumno\Desktop\Script\Marinapg
mkdir C:\Users\Alumno\Desktop\Script\Ramonan
pause
exit
:op5
xcopy /e %userprofile% C:\Copia
pause
exit
