<?php

/* 
    Para mostrar el valor de las cookes, tengo que ussar $_cookie, una variable supergloba,
    es una array asociativo
*/

if(isset($_COOKIE['micookie'])){
    echo $_COOKIE['micookie'];
}else{
    echo "no existe la cookie";
}

if(isset($_COOKIE['ayear'])){
    echo $_COOKIE['ayear'];
}else{
    echo "no existe la cookie";
}
?>
<h1>cookies</h1>
<a href="crear_cookies.php">crear</a>
<a href="borrar_cookies.php">Borrar cookie</a>