<?php

/*
Variables locales: se definen dentro de funcion y no se pueden utilizar fuera

Variables globales: Se definen fuera de la funcion y se pueden utilizar dentro de funciones
*/

$frase="Con esfuerzo lo lograré";

function holaMundo(){
    global $frase;

    echo $frase."<br/>";
}

// Funciones Variables

function buenosDias(){
    return "buenos días como despiertas <br/>";
}

function buenasNoches(){
    return "buenos noches, descansa <br/>";
}

$horario = "buenosdias";
echo $horario();

$noche="Noches";
$hora="buenas".$noche;
echo $hora();