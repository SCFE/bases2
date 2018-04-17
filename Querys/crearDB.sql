CREATE TABLE BODEGA (id int IDENTITY NOT NULL, nombre varchar(50) NOT NULL, descripcion varchar(200) NOT NULL, PRIMARY KEY (id));
CREATE TABLE INVENTARIO (id int IDENTITY NOT NULL, id_usuario int NULL, producto int NOT NULL, existencia binary(1000) NOT NULL, cantidad int NULL, PRIMARY KEY (id));
CREATE TABLE MOVIMIENTO (id int IDENTITY NOT NULL, movimiento int NOT NULL, descripcion varchar(150) NOT NULL, usuario int NOT NULL, producto int NOT NULL, cantidad int NOT NULL, PRIMARY KEY (id));
CREATE TABLE PRESENTACION (id int IDENTITY NOT NULL, nombre_presentacion varchar(50) NOT NULL, PRIMARY KEY (id));
CREATE TABLE PRODUCTO (id int IDENTITY NOT NULL, nombre varchar(50) NOT NULL, proveedor int NOT NULL, precio int NOT NULL, presentacion int NOT NULL, bodega int NOT NULL, descripcion varchar(200) NOT NULL, id_usuario int NOT NULL, PRIMARY KEY (id));
CREATE TABLE PROVEEDOR (id int IDENTITY NOT NULL, nombre varchar(50) NOT NULL, nit varchar(50) NOT NULL, telefono varchar(50) NOT NULL, direccion varchar(60) NOT NULL, id_usuario int NOT NULL, PRIMARY KEY (id));
CREATE TABLE TIPO_MOVIMIENTO (id int IDENTITY NOT NULL, nombre varchar(50) NOT NULL, descripcion varchar(150) NOT NULL, PRIMARY KEY (id));
CREATE TABLE USUARIO (id int IDENTITY NOT NULL, nombre varchar(50) NOT NULL, nombre2 varchar(50) NULL, apellido1 varchar(50) NOT NULL, apellido2 varchar(50) NULL, fecha_nac date NOT NULL, email varchar(60) NOT NULL, nombre_usuario varchar(50) NOT NULL, password varchar(50) NOT NULL, PRIMARY KEY (id));
ALTER TABLE PRODUCTO ADD CONSTRAINT FKPRODUCTO991309 FOREIGN KEY (proveedor) REFERENCES PROVEEDOR (id);
ALTER TABLE PRODUCTO ADD CONSTRAINT FKPRODUCTO880596 FOREIGN KEY (presentacion) REFERENCES PRESENTACION (id);
ALTER TABLE PRODUCTO ADD CONSTRAINT FKPRODUCTO725490 FOREIGN KEY (bodega) REFERENCES BODEGA (id);
ALTER TABLE PRODUCTO ADD CONSTRAINT FKPRODUCTO483314 FOREIGN KEY (id_usuario) REFERENCES USUARIO (id);
ALTER TABLE PROVEEDOR ADD CONSTRAINT FKPROVEEDOR11524 FOREIGN KEY (id_usuario) REFERENCES USUARIO (id);
ALTER TABLE INVENTARIO ADD CONSTRAINT FKINVENTARIO709665 FOREIGN KEY (producto) REFERENCES PRODUCTO (id);
ALTER TABLE MOVIMIENTO ADD CONSTRAINT FKMOVIMIENTO50392 FOREIGN KEY (movimiento) REFERENCES TIPO_MOVIMIENTO (id);
ALTER TABLE MOVIMIENTO ADD CONSTRAINT FKMOVIMIENTO236322 FOREIGN KEY (usuario) REFERENCES USUARIO (id);
ALTER TABLE MOVIMIENTO ADD CONSTRAINT FKMOVIMIENTO544603 FOREIGN KEY (producto) REFERENCES PRODUCTO (id);