<?php

/* 
Ejercicio3. Hacer una interfz de usuario ( formlario) on dos inputs y 4 botones uno para sumar,
restar, dividir y mutiplicar
*/
    $resultado = false;
    if(isset($_POST['num1'])&& $_POST['num1'] != '' && isset($_POST['num2']) && $_POST['num2'] != ''){
        if(isset($_POST['sumar'])){
            $resultado = $_POST['num1'] + $_POST['num2'];
        }
        if(isset($_POST['restar'])){
            $resultado = $_POST['num1'] - $_POST['num2'];
        }
        if(isset($_POST['multiplicar'])){
            $resultado = $_POST['num1'] * $_POST['num2'];
        }
        if(isset($_POST['dividir']) &&  $_POST['num2'] != 0 ){
            $resultado = $_POST['num1'] / $_POST['num2'];
        }
    }else{
        $resultado= "introduce valores";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora</title>
</head>
<body>  

    <h1>Calculadora php</h1>
        <form action="" method="post">
            numero 1:</br>
            <input type="number" name="num1" id=""></br></br>
            numero 2:</br>
            <input type="number" name="num2" id=""></br></br>
            <input type="submit" value="sumar" name="sumar">
            <input type="submit" value="restar" name="restar">
            <input type="submit" value="multiplicar" name="multiplicar">
            <input type="submit" value="dividir" name="dividir">
        </form>
    <h2>Resultado:<?php
        if($resultado != false){
            echo $resultado;
        }
    ?></h2>
</body>
</html>