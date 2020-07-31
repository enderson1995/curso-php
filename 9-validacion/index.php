<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validacion de formnularios php</title>
</head>
<body>
    <h1>Validar frmularios PHP</h1>
    <form action="POST" action="procesar_formulario.php">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre">

        <label for="Apellidos">Apellidos:</label>
        <input type="text" name="Apellidos">

        <label for="Edad">Edad:</label>
        <input type="number" name="Edad">

        <label for="email">email:</label>
        <input type="email" name="email">

        <label for="Password">Password:</label>
        <input type="password" name="Password">
    </form>
</body>
</html>