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
        
        <label for="button">Botón:</label>
        <input type="button" name="button" value="Clickeame"/></br>
        
        <label for="sexo" >Sexo:</label>
        <p>
            Hombre: <input type="checkbox" name="sexo" value="hombre"/>
            Mujer: <input type="checkbox" name="sexo" value="mujer" checked="checked"/>
        </p>

        <label for="color" >Color:</label>
        <p>
            <input type="color" name="color" value="hombre"/>
        </p>

        <label for="email" >Email:</label>
        <p>
            <input type="email" name="email" value=""/>
        </p>

        <label for="file" >file:</label>
        <p>
            <input type="file" name="file" mutiple="multiple"/>
        </p>

        <label for="number" >number:</label>
        <p>
            <input type="number" name="number"/>
        </p>

        <label for="password" >password:</label>
        <p>
            <input type="password" name="password"/>
        </p>

        <label for="continente" >continente:</label>
        <p>
            america del sur:<input type="radio" name="continente" value="amaerica del sur"/>
            Europa<input type="radio" name="continente" value="europa"/>
            Asia<input type="radio" name="continente" value="asia"/>
        </p>

        <label for="url" >url:</label>
        <p>
            <input type="url" name="url"/>
        </p>


        <input type="submit" value="enviar"/></br>
    </form>
</body>
</html>

<?php

?>