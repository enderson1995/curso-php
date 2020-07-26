<?php

/* 
    Crear un script en php que tenga 4 variables una tipo array, otra tipo string, otra int y una boolean

*/

function verificar($dato){
    $resultado="";
    if(is_array($dato)){
        $resultado = "<h1>Es una variable tipo array</h1></br>";
    }

    if(is_string($dato)){
        $resultado = "<h1>$dato Es una variable tipo string</h1></br>";
    }

    if(is_int($dato)){
        $resultado = "<h1>$dato Es una variable tipo int</h1></br>";
    }

    if(is_bool($dato)){
        $resultado = "<h1>$dato Es una variable tipo bool</h1></br>";
    }
    return $resultado;
}

$array=[1,2,3,4,5];
$string='hola';
$int=1955;
$boolea=true;

echo verificar($array);
echo verificar($string);
echo verificar($int);
echo verificar($boolea);