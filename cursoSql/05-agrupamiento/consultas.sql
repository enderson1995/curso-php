# Consultas de Agrupamiento #

SELECT COUNT(titulo) AS 'NÚMERO DE ENTRADAS', categoria_id FROM entradas GROUP BY categoria_id;

#Cnosulta de agrupamiento con condicion#
SELECT COUNT(titulo) AS 'NÚMERO DE ENTRADAS', categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo)>=4;

/* 
    FUNCIONES E AGRUPAMIENTO
        AVG     SACAR LA MEDIA
        COUNT   CONTAR EL NUMEOR DE ELEMENTOS
        MAX     VALOR MAXIMO DEL GRUPO
        MIN     VALOR MINIMO DEL GRUPO
        SUM     SUMAR TODO EL ONTENIDO DEL GRUPO
*/

SELECT AVG(id) AS 'Media de entradas' FROM entradas;
SELECT MAX(id) AS 'MAXIMO ID', titulo FROM entradas;
SELECT MIN(id) AS 'MINIMO ID', titulo FROM entradas;
SELECT SUM(id) AS 'SUMA DE ID', titulo FROM entradas;