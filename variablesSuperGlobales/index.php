<?php

// cariables superglobales 

// variables de servidor

// optienes ip del servidor
echo '<h1>';
echo $_SERVER['SERVER_ADDR'];
echo '</h1>';

//obtienes el dominio de un servidor
echo '<h1>';
echo $_SERVER['SERVER_NAME'];
echo '</h1>';

//que utilizas para levantar el servidor
echo '<h1>';
echo $_SERVER['SERVER_SOFTWARE'];
echo '</h1>';

//navegador web desde donde accedo
echo '<h1>';
echo $_SERVER['SERVER_USER_AGENT'];
echo '</h1>';

// DIRECCION IP DEL CLIENTE
echo '<h1>';
echo $_SERVER['REMOTE_ADDR'];
echo '</h1>';


