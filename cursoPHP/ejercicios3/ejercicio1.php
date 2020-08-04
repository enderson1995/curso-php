<?php
session_start();

if(isset($_SESSION['mi_sesion'])){
    if(isset($_GET['num'])){
        $num = $_GET['num'];
        switch ($num) {
            case '1':
                $_SESSION['mi_sesion']++;
                break;
            
            case '0':
                $_SESSION['mi_sesion']--;
                break;

            default:
                echo "<h1>Envia el parametro Get valido 0 o 1</h1>";
                break;
        }

    echo "<h2>La sesion lleva: ".$_SESSION['mi_sesion']."</h2>";
    }else{
        echo "<h1>Envia el parametro Get</h1>";
        echo "<h2>La sesion lleva: ".$_SESSION['mi_sesion']."</h2>";
    }
    
}else{
    echo "<h1>Inica sesión</h1>";
}

?>