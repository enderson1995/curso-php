<?php

/* 
    1. una funcion
    validar un email con filter var
    recoger variable por get y validar
    mostrar resultado
*/

function validarEmail($email){
    $status = "no valido";
    if(!empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL)){
        $status = "valido";
    }
    return $status;
}

if(isset($_GET['email'])){
    echo validarEmail($_GET['email']);
}else{
    echo "Pasa por get un email";
}