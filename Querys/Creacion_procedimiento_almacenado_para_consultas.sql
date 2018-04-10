--Para que utilice la base de datos prueba

USE prueba
--Creaci�n del procedimiento almacenado
GO 
CREATE PROCEDURE busqueda_usuarios
--Parametros que utilizara el procedimiento almacenado
	@nombre nvarchar(50) ,
	@apellido nvarchar(50) 
	
AS
--Query que realizara el procedimiento almacenado
	SET NOCOUNT ON;
	SELECT Nombre, Apellido, Correo, convert(varchar(MAX), DECRYPTBYPASSPHRASE('password', Contrasenia))
	FROM USUARIO WHERE Nombre = @nombre AND Apellido = @apellido

GO
	
--Prueba del procedimiento almacenado
 busqueda_usuarios 'Edgar', 'Castillo'