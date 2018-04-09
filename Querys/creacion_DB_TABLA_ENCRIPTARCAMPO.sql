
CREATE DATABASE prueba

USE prueba


CREATE TABLE USUARIO (

		id int NOT NULL PRIMARY KEY IDENTITY,
		Nombre nvarchar(50) NOT NULL,
		Apellido nvarchar(50) NOT NULL,
		Correo nvarchar(50) NOT NULL,
		Contrasenia VARBINARY(8000) NOT NULL
);

INSERT INTO USUARIO (Nombre, Apellido, Correo, Contrasenia) VALUES ('Edgar', 'Castillo', 'edgar@gmail.com', ENCRYPTBYPASSPHRASE('password','1234'))

SELECT * FROM USUARIO


SELECT id, nombre, convert(varchar(MAX), DECRYPTBYPASSPHRASE('password', Contrasenia)) FROM USUARIO