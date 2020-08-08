## Consulta con una condicion

SELECT * FROM usuarios WHERE email = 'admin@admin.com';

/* 
    Comporadores:
        igual           =
        distinto        !=
        menor           <
        mayor           >
        menor o igual   <=
        mayor o igual   >=
        Entre           between A and B
        en              IN
        ES NULLO        IS NULL
        NO NULO         IS NOT NULL
        COMO            LIKE        OPERADOR PARA BUSCAR SIMILITUDES 
        NO ES COMO      NOT LIKE
*/

/* 
    Operadores logicos:
        O           OR
        Y           AND
        NO          NOT
        XOR
*/

/* 
    Comodines:
        cualquier cantidad de caracteres:   %
        Un caracter desconocido:            _
*/


## EJEMPLOS
# 1. CONSULAR TODOS LOS USUARIOS nombre y apellido REGISTRADOS EN 2020
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = 2020;

# 2. CONSULAR TODOS LOS USUARIOS nombre y apellido que no se REGISTRARON EN 2020
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2020 OR ISNULL(fecha);

#EJEMPLOS 2
#3. SOLICITAR EL EMAIL DE LOS USUARIOS QUE CONTENGA EN EL APELLIDO LA LETRA A Y CONTRASEÑA SEA 1234
SELECT email FROM usuarios WHERE apellidos LIKE ('%a%') AND passsword = '1234'; 

#4. EXTRAER TODOS LOS REGISTROS DE LA TABLA USUARIO CUYO AÑO SEA PAR
SELECT * FROM usuarios WHERE (YEAR(fecha)%2) = 0;

#. EXTRAER TODOS LOS REGISTROS CUYOS NOMBRE TENGAN MAS DE 7 LETRAS QUE SE HAYAN REGISTRADO ANTES DEL 2021 Y QUE LAS LETRAS VENGAN EN MAYUSCULA.

SELECT UPPER(nombre) AS 'NOMBRE', apellidoS FROM usuarios WHERE LENGTH(nombre) >= 7 AND YEAR(fecha) < 2021;

# ORDER BY
SELECT * FROM usuarios ORDER BY fecha;

#LIMIT LIMITA LA CATIDAD MOSTRADA

SELECT * FROM usuarios LIMIT 1,2;
SELECT * FROM usuarios LIMIT 1;