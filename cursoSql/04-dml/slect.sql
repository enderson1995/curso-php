/* 
    Mostrar tdps ps registros / filas de una tabla
*/

SELECT email, nombre , apellidos FROM usuarios;

/* 
    MOSTRAR TODOS LOS CAMPOS
*/

SELECT * FROM usuarios;

/* 
    Operadores aritmeticos
*/

SELECT email, (7-7) AS 'operacion' FROM usuarios;
SELECT id, email, (7-7) AS 'operacion' FROM usuarios ORDER BY id;
SELECT id, email, (7-7) AS 'operacion' FROM usuarios ORDER BY id DESC;
SELECT id, email, (7-7) AS 'operacion' FROM usuarios ORDER BY id ASC;
SELECT id, email, (id-7) AS 'operacion' FROM usuarios ORDER BY id;

#Funciones matematicas#

SELECT ABS(-7) AS 'operacion' FROM usuarios;
SELECT CEIL(-7.6) AS 'operacion' FROM usuarios;
SELECT FLOOR(-7) AS 'operacion' FROM usuarios;
SELECT PI() AS 'operacion' FROM usuarios;
SELECT RAND() AS 'operacion' FROM usuarios;
SELECT ROUND(-7,2) AS 'operacion' FROM usuarios;
SELECT SQRT(-7) AS 'operacion' FROM usuarios;
SELECT TRUNCATE(-7.7865,1) AS 'operacion' FROM usuarios;
SELECT ROUND(id,2) AS 'operacion' FROM usuarios;

## PONER EN GOOGLE FUNCIONES SQL

## funciones en el texto
SELECT UPPER(nombre) from usuarios;
SELECT LOWER(nombre) from usuarios;
SELECT CONCAT(nombre,' ',apellidos) AS 'conversion' from usuarios;
SELECT UPPER(CONCAT(nombre,' ',apellidos)) AS 'conversion' from usuarios;
SELECT LENGTH(CONCAT(nombre,' ',apellidos)) AS 'conversion' from usuarios;
SELECT email, LENGTH(CONCAT(nombre,' ',apellidos)) AS 'conversion' from usuarios;
SELECT TRIM(CONCAT('      ',nombre,' ',apellidos,'          ')) AS 'conversion' from usuarios;

## FUNCIOES DE FECHAS

SELECT email, fecha, CURDATE() AS 'fecha actual' FROM usuarios;
SELECT email, DATEDIFF(fecha, CURDATE()) AS 'fecha actual' FROM usuarios;
SELECT email, DAYNAME(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, DAYOFMONTH(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, DAYOFWEEK(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, DAYOFWEEK(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, MONTH(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, YEAR(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, DAY(fecha) AS 'fecha actual' FROM usuarios;
SELECT email, CURTIME() AS 'fecha actual' FROM usuarios;
