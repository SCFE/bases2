USE [prueba]
GO
/****** Object:  StoredProcedure [dbo].[insertar_usuarios]    Script Date: 10/4/2018 04:23:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[insertar_usuarios]

	@nombre nvarchar(50),
	@apellido nvarchar(50),
	@correo nvarchar(50),
	@contrasenia VARBINARY(8000)
AS

	SET NOCOUNT ON;

	INSERT INTO USUARIO (Nombre, Apellido, Correo, Contrasenia) 
	VALUES (@nombre, @apellido, @correo, ENCRYPTBYPASSPHRASE('password',@contrasenia));

	--insertar_usuarios 'Santiago', 'Juarez', 'santiago@gmail.com', '789'
