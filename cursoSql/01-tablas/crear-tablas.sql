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
/* 
    nombre      tipo            restricciones
*/
    id          int(11)         auto_increment not null,/* Se incrementa solo y No puede ser nulo */
    nombre      varchar(100)    not null,/* Puede ser nulo */
    apellidos   varchar(255)    default'hola',/* por defecto asigna este valor al campo */
    email       varchar(100)    not null, /* No puede ser nulo */
    password    varchar(250),    

    CONSTRAINT  pk_usuarios    PRIMARY KEY(id)
);