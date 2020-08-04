<?php

$frutas = ['pera','manzana','tomate','guayaba'];

/* Alfabetico */
asort($frutas);
var_dump($frutas);

/* Afabetico inverso */

arsort($frutas);
echo '<br/>';
var_dump($frutas);

/* Ordenar numeros */
$numeros = [7,5,6,4,3,2,8,9,1];
sort($numeros);
echo '<br/>';
var_dump($numeros);

/* añadir elementos a un array */

//simple
$frutas[] = 'maracuya';
echo '<br/>';
var_dump($frutas);

// array push para agregar un elemento a un array
array_push($frutas,'mamon');
echo '<br/>';
var_dump($frutas);

// quitar el ultiimo elemento que tiene el array
array_pop($frutas);
echo '<br/>';
var_dump($frutas);

// eliminar un elemento en especfico
unset($frutas[2]);
echo '<br/>';
var_dump($frutas);

// obtener un indice aleatrorio del array
$indice = array_rand($frutas);
echo '<br/>';
echo 'El indice '.$indice.' corresponde a la fruta '.$frutas[$indice];

/* Voltear un array */
echo '<br/>';
var_dump(array_reverse($numeros));

/* buscar dentro de un array */
echo '<br/>';
echo array_search('manzana',$frutas);

/* Contar numero de elementos */
echo '<br/>';
echo count($frutas);