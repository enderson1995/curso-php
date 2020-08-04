/* 
Tipos de datos:
    int(n° caracteres)              ENTERO
    integer(n° caracteres)          ENTERO                 
    varchar(n° caracteres)          STRING / ALFANUMERICO      1 bytes
    char(n° caracteres)             STRING / ALFANUMERICOS
    float(n° cifras, n° decimaes)   DECIMAL / COMA FLOTANTE
    date, time, timestamp

    // Strings mas grandes
    TEXT            4 BYTES
    LONGTEST        1 MBYTES
    MEDIUM TEXET    4 MBYTES
*/


/* 
    Crear tabla
*/

CREATE TABLE usuarios(
id          int(11),
nombre      varchar(100),
apellidos   varchar(255),
email       varchar(100),
password    varchar(250)
);