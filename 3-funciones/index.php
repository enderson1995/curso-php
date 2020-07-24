<?php

/* funciones*/

function mi(){
    echo 'enderson</br>';
    echo 'enderson</br>';
    echo 'enderson</br>';
    echo 'enderson</br>';
}

mi();

function tabla($numero){
    echo "<h1>Tabla de multiplicar del número: $numero </h1>";

    for($i=1;$i<=10;$i++){
        echo "$numero x $i = ".$numero*$i."</br>";
    }
}

if(isset($_GET['num'])){
    tabla($_GET['num']);
}else{
    echo "No hay úmero para multiplicar";
}

for($i=1;$i<=10;$i++){
    tabla($i);
}