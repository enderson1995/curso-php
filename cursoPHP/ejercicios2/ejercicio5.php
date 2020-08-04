<?php
/* 
    Crear un array con el cotenido de la tabla:
    ACCION          AVENTURA             DEPORTES
    GTA             ASSASING             FIFA 19
    COD             CRASH                PES 19
    PUGH            PRINCE OF PERSIA     MOTO GP 19

    Cada olumna debe ir en un fichero separado
*/

$tabla= [
    "ACCION" => ['GTA','COD','PUGH'],
    "AVENTURA" => ['ASSASING','CRASH','PRINCE OF PERSIA'],
    "DEPORTES" => ['FIFA 19', 'PES 19', 'MOTO GP 19']
];
$categorias= array_keys($tabla);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ejercicio5</title>
</head>
<body>
    <h1>Tabla con datos</h1>
    <table border="1">
        <?php include_once "includes/encabezado.php"?>
        <?php include_once "includes/primera.php"?>
        <?php include_once "includes/segunda.php"?>
        <?php include_once "includes/tercera.php"?>
    </table>
</body>
</html>