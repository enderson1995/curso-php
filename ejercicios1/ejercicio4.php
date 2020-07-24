<?php

/*
ejercicio 4 
    Obtener valores por la url y hacer 
*/ 


// Verificar que introduzcan algun valor

if(isset($_GET['num1']) && isset($_GET['num2'])){
    echo 'suma: '.$_GET['num1'] + $_GET['num2']. '</br>';
    echo 'resta: '.$_GET['num1'] - $_GET['num2']. '</br>';
    echo 'multiplicacion: '.$_GET['num1'] * $_GET['num2']. '</br>';
    echo 'división: '.$_GET['num1'] / $_GET['num2']. '</br>';
}else{
    echo '<h1>Itroduce num1 y num2 por la url</h1>';
}