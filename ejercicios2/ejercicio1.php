<?php

/* 
    Un array con 8 numeros,
    recorrerlo y mostrarlo
    mostrar su longitud
*/
function mostrar($numeros){
    $resultado = "";
    foreach($numeros as $key=>$numero){
        $resultado .= $numero.'<br/>';
    }
    return $resultado;
}

// .= en un aarray acumula en un string

$numeros=[5,2,3,4,5,6,1,9];
echo 'Recorrerlos y mostrarlos<br/>';
echo mostrar($numeros);

sort($numeros);
echo 'Ordenar Mostrar, Recorrerlos y mostrarlos<br/>';
echo mostrar($numeros);

echo 'Longitud<br/>';
echo count($numeros);

if($_GET['num']){
    $buscar =$_GET['num'];
    $search= array_search($buscar,$numeros);
    echo "<br/>Buscar el $buscar<br/>";
    if($search){
        echo "El numero $buscar se ha encontrado en el indice $search";
    }else{
        echo "El numero $buscar no se ha encontrado";
    }
}else{
    echo "<h1>Introduce un número por url</h1>";
}