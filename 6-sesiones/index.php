<?php

/* 
    Las sesiones son cuando un usuario esta navegando por a pagin web
    y se mueve en las distintas vistas, esntonces
    se requiere almacenar la información relevante 
    del usuario en uso

    El usuario ve las distintas paginas del dominio y se almacena
    la informacion

    Deben soportar:
        -Debe permanecer invariable hasta que se cierre sesión o se cierre el navegador

    Las seciones almacenan y persisten datos del usuario mientras que navega en u sitio wb hasta que cierreo la sesión o cierra el navegador

    Los datos se almacenan en el servidor, por lo que la hace segura
*/

// Iniciar sesion
session_start();

// Variable Local
$variable_normal = "Soy una cadena de texto";

// Variable de sesión
$_SESSION['variable_persistente'] = "Hola soy una sesión activa";

echo $variable_normal."</br>";
echo $_SESSION['variable_persistente'];