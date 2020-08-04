<?php

$archivo = $_FILES['archivo'];

$nombre = $archivo['name'];
$tipo = $archivo['type'];

if($tipo == "image/jpg" || $tipo == "image/png" || $tipo == "image/jpeg" || $tipo == "image/gift"){

    if(!is_dir('images')){
        mkdir('images', 0777);
    }

    move_uploaded_file($archivo['tmp_name'], 'images/'.$nombre);
    echo "<h1>imagen cargada adecuadamente</h1>";
    header("Refresh: 5; URL=index.php");
}else{
    header("Refresh: 5; URL=index.php");
    echo "<h1>Sube una imagen en un formato correcto</h1>";
    
}