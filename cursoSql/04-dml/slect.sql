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