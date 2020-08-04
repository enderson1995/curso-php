<?php
    session_start();

    if(!isset($_SESSION['mi_sesion'])){
        $_SESSION['mi_sesion'] = 0;
    }

    if(isset($_GET['num'])){
        $num = $_GET['num'];
        switch ($num) {
            case '1':
                $_SESSION['mi_sesion']++;
                break;
            
            case '0':
                $_SESSION['mi_sesion']--;
                break;
        }
    }
?>

<a href="ejercicio1Solucion.php?num=1">Aumentar</a>
<a href="ejercicio1Solucion.php?num=0">Reducir</a>

<h2>La sesion lleva: <?=$_SESSION['mi_sesion']?></h2>