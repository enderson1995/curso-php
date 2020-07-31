<?php
$error = 'faltan valores';
if(
    !empty($_POST['nombre']) && 
    !empty($_POST['edad']) &&
    !empty($_POST['email']) &&
    !empty($_POST['apellido']) &&
    !empty($_POST['password'])
)
{
    $error = 'ok';
    
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $edad = (int)$_POST['edad'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Validar nombre
    if(!is_string($nombre) || preg_match("/[0-9]/",$nombre)){
        $error = "El nombre no es correcto"; 
    }

    if(!is_string($apellido) || preg_match("/[0-9]/",$apellido)){
        $error = "Los apellidos no son correctos"; 
    }
    
    if(!is_int($edad) || !filter_var($edad, FILTER_VALIDATE_INT)){
        $error = "introduce una edad correcto"; 
    }

    if(!is_string($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)){
        $error = "el email es erroneo"; 
    }
    
    if(empty($password) || strlen($password)<5){
        $error = "password es muy corta"; 
    }   

    if($error !== 'ok'){
        header("Location:index.php?error=$error");
    }
}else{
    $error = 'faltan valores';
    header("Location:index.php?error=$error");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validacion de formnularios php</title>
</head>
<body>
    <?php if($error== 'ok'):?>
        <h1>Datos validados correctamente</h1>
        <p><?=$nombre?></p>
        <p><?=$apellido?></p>
        <p><?=$edad?></p>
        <p><?=$email?></p>
    <?php endif; ?>
    
</body>
</html>