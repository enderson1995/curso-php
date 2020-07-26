<?php

/*  
    Promgrama que compruebe que 
    si una variable esta vacía rellenarla con minusculas
    y mostrar mayusculas
*/

$variable = "";

if(empty($variable)){
    $variable= strtolower('La vida es bella');
}

echo "<h1>Minusculas</h1></br>";
echo $variable."</br>";

echo "<h1>Mayusculas</h1></br>";
echo strtoupper($variable)."</br>";