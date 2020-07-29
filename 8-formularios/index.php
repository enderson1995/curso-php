<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularios PHP y HTML</title>
</head>
<body>
    <h1>Formulario</h1>
    <form action="" method="POST" enctype="multipart/form-data">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" pattern="[A-Z]"/></br>
        <label for="apellido" >Apellido:</label>
        <input type="text" name="apellido" autofocus="autofocus"/></br>
        <input type="submit" value="enviar"/></br>
    </form>
</body>
</html>