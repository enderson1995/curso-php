<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validacion de formnularios php</title>
</head>
<body>
    <h1>Validar frmularios PHP</h1>
    <?php
        if(isset($_GET['error'])){
            $error = $_GET['error'];
            if($error == 'faltan valores'){
                echo '<strong style="color:red;">Introduce todos los datos en el campo de formulario</strong>';
            }else{
                echo '<strong style="color:red;">'.$error.'</strong>';
            }
        }
    ?>

    <form method="POST" action="procesar_formulario.php">
        <label for="nombre">Nombre:</label></br>
        <input type="text" name="nombre" pattern="[A-Za-z]+">
        </br>

        <label for="apellido">Apellidos:</label></br>
        <input type="text" name="apellido" required="required" pattern="[A-Za-z]+">
        </br>

        <label for="edad">Edad:</label></br>
        <input type="number" name="edad"  required="required" pattern="[0-9]+">
        </br>

        <label for="email">email:</label></br>
        <input type="email" name="email" required="required">
        </br>

        <label for="password">Password:</label></br>
        <input type="password" name="password" required="required">
        </br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>