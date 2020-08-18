/* 
    1. Diseñar y crear la base de datos de un concensionario
*/

/* primero crear las tablas que tengas menos reaciones */

/* tabla de carros */

CREATE DATABASE IF NOT EXISTS concensionario;
USE concensionario;

CREATE TABLE carros(
id          int(10) auto_increment not null,
modelo      varchar(100) not null,
marca       varchar(50),
precio      int(20) not null,
stock       int(255) not null,
CONSTRAINT pk_carros PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE grupos(
id          int(10) auto_increment not null,
nombre      varchar(100) not null,
ciudad      varchar(100),
CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE vendedores(
id          int(10) auto_increment not null,
grupo_id    int(10) not null,
jefe        int(10),
nombre      varchar(100) not null,
apellidos   varchar(150),
cargo       varchar(50),
fecha_alta  date,
sueldo      float(20,2),
comision    float(10,2),
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedor_feje FOREIGN KEY(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE clientes(
id              int(10) auto_increment not null,
vendedor_id     int(10),
nombre          varchar(150) not null,
ciudad          varchar(100),
gastado         float(50,2),
fecha           date,
CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE pedidos(
id          int(10) auto_increment not null,        
cliente_id  int(10) not null,
carro_id    int(10) not null,
cantidad    int(100),
fecha       date,
CONSTRAINT pk_pedidos PRIMARY KEY(id),
CONSTRAINT fk_pedido_cliente FOREIGN key(cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_pedido_carro FOREIGN key(carro_id) REFERENCES carros(id)
)ENGINE=InnoDB;

#RELLENAR LA BASE DE DATOS CON INFORMACIÓN#

#CARROS#
INSERT INTO carros VALUE(null, 'Renault Clio', 'Renault', 12000, 13);
INSERT INTO carros VALUE(null, 'Seat Panda', 'Seat', 10000, 10);
INSERT INTO carros VALUE(null, 'Mercedes Ranchera', 'Mercedes Benz', 32000, 24);
INSERT INTO carros VALUE(null, 'Porche Cayene', 'Porche', 65000, 5);
INSERT INTO carros VALUE(null, 'Lambo Aventador', 'Lamborgini', 170000, 2);
INSERT INTO carros VALUE(null, 'Ferrari Spider', 'Ferrari', 245000, 80);

#grupos

INSERT INTO grupos VALUES(null, 'vendedores A', 'Madrid');
INSERT INTO grupos VALUES(null, 'vendedores B', 'Madrid');
INSERT INTO grupos VALUES(null, 'Directores mecanicos', 'Madrid');
INSERT INTO grupos VALUES(null, 'vendedores A', 'Barcelona');
INSERT INTO grupos VALUES(null, 'vendedores B', 'Barcelona');
INSERT INTO grupos VALUES(null, 'vendedores C', 'Valencia');
INSERT INTO grupos VALUES(null, 'vendedores A', 'Bilbao');
INSERT INTO grupos VALUES(null, 'vendedores B', 'Pamplona');
INSERT INTO grupos VALUES(null, 'vendedores C', 'Santiago de compostela');

# Venedores
INSERT INTO vendedores VALUES(null, 1, null, 'David', 'Lopez', 'Responsable de tienda',CURDATE(), 30000,4); 
INSERT INTO vendedores VALUES(null, 1, 1, 'Fran', 'Martinez', 'Ayudante de tienda',CURDATE(), 23000,2); 
INSERT INTO vendedores VALUES(null, 2, null, 'Nelson', 'Sanchez', 'Responsable de tienda',CURDATE(), 38000,5); 
INSERT INTO vendedores VALUES(null, 2, 3, 'Jesus', 'Lopez', 'Ayudante de tienda',CURDATE(), 12000,6); 
INSERT INTO vendedores VALUES(null, 3, null, 'Victor', 'Lopez', 'Mecanico Jefe',CURDATE(), 50000,2); 
INSERT INTO vendedores VALUES(null, 4, null, 'Antonio', 'Lopez', 'Vendedor de Recambios',CURDATE(), 13000,8); 
INSERT INTO vendedores VALUES(null, 5, null, 'Salvador', 'Lopez', 'Vendedor Experto',CURDATE(), 60000,2); 
INSERT INTO vendedores VALUES(null, 6, null, 'Joaquin', 'Lopez', 'Ejecutivo de cuentas',CURDATE(), 80000,1); 
INSERT INTO vendedores VALUES(null, 6, 8, 'Luis', 'Lopez', 'Ayudante de tienda',CURDATE(), 10000,10); 

##clientes

INSERT INTO clientes VALUES(null,1,'Construcciones Diaz Inc', 'Alcobendas', 24000, CURDATE());
INSERT INTO clientes VALUES(null,1,'Fruteria antonia inc', 'Fuenlabrada', 40000, CURDATE());
INSERT INTO clientes VALUES(null,1,'Imprenta Martinez Inc', 'Barcelona', 32000, CURDATE());
INSERT INTO clientes VALUES(null,1,'Jesus Colchones Inc', 'El Prat', 96000, CURDATE());
INSERT INTO clientes VALUES(null,1,'Bar Pepe Inc', 'Valencia', 170000, CURDATE());
INSERT INTO clientes VALUES(null,1,'Tienda Pc Inc', 'Murcia', 245000, CURDATE());

## Encargos
INSERT INTO pedidos VALUES(null, 1, 1, 2, CURDATE());
INSERT INTO pedidos VALUES(null, 2, 2, 4, CURDATE());
INSERT INTO pedidos VALUES(null, 3, 3, 1, CURDATE());
INSERT INTO pedidos VALUES(null, 4, 3, 3, CURDATE());
INSERT INTO pedidos VALUES(null, 5, 5, 1, CURDATE());
INSERT INTO pedidos VALUES(null, 6, 6, 1, CURDATE());
