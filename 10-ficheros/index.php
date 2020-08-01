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

/* 
echo "Problemas de permiso para copiar, so probemas con linux aun no resuelto";
copy("fichero_texto.txt","fichero_copiado.txt") or die("Error al copiar");
 */
// renombrar fichero
//rename('fichero_texto.txt','archivo.txt');

//Eliminar
unlink("fichero_texto.txt") or die('error borrar');

if(file_exists("fichero_texto.txt")){
    echo "existe";
}else{
    echo "no existe";
}