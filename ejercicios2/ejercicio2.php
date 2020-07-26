<?php
include_once 'ejercicio1.php';
/* 
Escribir un  programa que añada valores a un array
siempre que su logtud sea menor a 20
*/

$arreglo =[];

while (count($arreglo)<120){
    array_push($arreglo,rand(0,100));
}
echo "<h1>Array de 120 elementos</h1>";
echo mostrar($arreglo);