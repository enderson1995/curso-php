<?php

//funcion ara debuguar
$nombre ="enderson Omaña";
var_dump($nombre);

//fechas

echo "<br/>".date('d-m-y');
echo "<br/>".time();

//matematicas

echo "<br/>".sqrt(10);
echo "<br/>Número aleatorio entre 10 y 40= ".rand(10,40);

echo "<br/>Número pi= ".pi();
echo "<br/>redondear pi = ".round(pi(),3);

// comprobar tipo de variable

echo "<br/>".gettype($nombre);
echo "<br/>".gettype($nombre);
echo "<br/>";

if(is_string($nombre)){
    echo "La variable es un string";
}
echo "<br/>";
if(!is_float($nombre)){
    echo"La variable no es un numero con decimales";
}

// verificar existencia
echo "<br/>";
if(isset($edad)){
    echo " La varible existe<br/>";
}else{
    echo " La varible no existe<br/>";
}

// limpiar espacios

$frase= "   mi contenido   ";
var_dump($frase);
echo "<br/>";
var_dump(trim($frase));

// Eliminar variables /indices
$year=2020;
unset($year);

// comprobar variable vacia

if(empty($texto)){
    echo "<br/> La variable est vacia";
}else{
    echo "<br/> La variable no est vacia";
}

// Cotar Cadenas de un Striing

$cadena="12345";
echo "<br/>".strlen($cadena);

// encontrar caracter

$frase="La vida es bella";
echo "<br/>".strpos($frase,"a");
// Remplazar contenido

$frase = str_replace("vida","moto",$frase);
echo "<br/>".$frase;

// mayusculas y minusculas

echo "<br/>".strtolower($frase);
echo "<br/>".strtoupper($frase);