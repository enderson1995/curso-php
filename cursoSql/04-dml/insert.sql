/* 
    Insertar nuevos registros
*/

INSERT INTO usuarios VALUES(null, 'enderson', 'omaña', 'enderson@omaña.com','1234', '2020-05-01');
INSERT INTO usuarios VALUES(null, 'andres', 'lopez', 'adres@lopez.com','1234', '2020-07-01');
INSERT INTO usuarios VALUES(null, 'miguel', 'gutierrez', 'miguel@gutierrez.com','1234', '2020-05-16');

/* Obtener toda la informacion registrada en la base de datos */
select * from usuarios 

/* insertar filas solo con ciertas columnas */

INSERT INTO usuarios(email, passsword) VALUES('admin@admin.com', 'admin');