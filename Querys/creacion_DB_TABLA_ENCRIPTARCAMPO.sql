--CREAR BASE DE DATOS
CREATE DATABASE prueba
--USAR BASE DE DATOS QUE SE CREO
USE prueba

--CREAR TABLA CON CAMPO ENCRIPTADO PARA CONTRASEÑAS
CREATE TABLE USUARIO (

		id int NOT NULL PRIMARY KEY IDENTITY,
		Nombre nvarchar(50) NOT NULL,
		Apellido nvarchar(50) NOT NULL,
		Correo nvarchar(50) NOT NULL,
		Contrasenia VARBINARY(8000) NOT NULL
);

--EJEMPLO DE INSERCION CON 

INSERT INTO USUARIO (Nombre, Apellido, Correo, Contrasenia) VALUES ('Edgar', 'Castillo', 'edgar@gmail.com', ENCRYPTBYPASSPHRASE('password','1234'))

SELECT * FROM USUARIO


SELECT id, nombre, convert(varchar(MAX), DECRYPTBYPASSPHRASE('password', Contrasenia)) FROM USUARIO