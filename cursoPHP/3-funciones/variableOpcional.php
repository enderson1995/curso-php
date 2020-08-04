<?php

function tabla($numero, $opcion = false){
    echo "<h1>Tabla de multiplicar del número: $numero </h1>";

    if($opcion){echo "<h1>";}
    for($i=1;$i<=10;$i++){
        echo "$numero x $i = ".$numero*$i."</br>";
    }
    if($opcion){echo "</h1>";}
}

tabla(2);
tabla(3,true);
