<?php
/* 
// abrir archivo
$archivo = fopen("fichero_texto.txt", "a+");
//$archivo = fopen("fichero_texto.txt", "r");

// leer archivo 
while(!feof($archivo)){
$contenido = fgets($archivo);
echo $contenido."</br>";
} 

// Escribir 
fwrite($archivo,"Soy un texto escrito desde php".PHP_EOL);
// cerrar archivo
fclose($archivo); */

copy("fichero_texto.txt","fichero_copiado.txt") or die("Error al copiar");