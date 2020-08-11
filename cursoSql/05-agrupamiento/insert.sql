# Insert para categorias#

INSERT INTO categorias VALUES(NULL, 'Accion');
INSERT INTO categorias VALUES(NULL, 'Rol');
INSERT INTO categorias VALUES(NULL, 'Deportes');

# insert para entradas # 
INSERT INTO entradas VALUES(NULL,1,1, 'Novedades del gta 5', 'Review del GTA 5',CURDATE());
INSERT INTO entradas VALUES(NULL,1,2, 'Review de LOL online', 'Todo sobre LOL',CURDATE());
INSERT INTO entradas VALUES(NULL,1,3, 'Nombre de jugadores de fifa', 'Review de fifa',CURDATE());

INSERT INTO entradas VALUES(NULL,2,1, 'Novedades del assasings', 'Review del assasings',CURDATE());
INSERT INTO entradas VALUES(NULL,2,1, 'Review de tibia', 'Todo sobre tibia',CURDATE());
INSERT INTO entradas VALUES(NULL,2,3, 'Nombre de jugadores de formula 1', 'Review del formula 1',CURDATE());

INSERT INTO entradas VALUES(NULL,3,1, 'Novedades de metro', 'Review de metro',CURDATE());
INSERT INTO entradas VALUES(NULL,3,2, 'Review de ward craft', 'Todo sobre warcraft',CURDATE());
INSERT INTO entradas VALUES(NULL,3,3, 'Nombre de jugadores de pest', 'Review de pest',CURDATE());