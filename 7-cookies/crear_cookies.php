<?php

/* 
    Se guarda en el cliente
    Se amacenan datos del usuario en el usuario en el servidor
    ventajas
        -Siempre se guarda en el servidor y el usuario a pesar de que se cierre el navegador
        -Guardar ciertas acciones en la web y se envían cuando se inicia sesión al servidor
    desventajas
        -Se guardan en el cliente, son manipulables
        -Se guarda información límitada

    Es un fichero que se almacena en el ordenador del
    usuario que visita la web con el fin de recordar datos
    o rastrear cierta información o comportamiento del mismo en la web
*/

// Para crear cookie 
//setcookie("nombre","valor que solo puede ser texto",caducidad,ruta,dominio)

setcookie("micookie","valor de mi galleta");

// Cookie con expiración
setcookie("ayear","valor de mi cookie de 365 dias",time()+(60*60*24*365));
?>
<a href="ver_cookies.php">Ver las cookies</a>