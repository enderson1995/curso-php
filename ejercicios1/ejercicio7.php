<?php

/*
    Ejercicio qe muestre todos los numeros que lleguen a través de la url
*/

if(isset($_GET['num1']) && isset($_GET['num2'])){
    echo '<p> Los números empiezan en: </p>';
    if($_GET['num1'] >= $_GET['num2'] ){
        for($i=$_GET['num2']; $i<=$_GET['num1'];$i++){
            if($i%2 != 0){echo $i.' Es impar </br>';}
        }
    }else{
        for($i=$_GET['num1']; $i<=$_GET['num2'];$i++){
            if($i%2 != 0){echo $i.' Es impar </br>';}
        }
    }
}else{
    echo '<h1>Itroduce num1 y num2 por la url</h1>';
}