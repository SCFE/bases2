

--Para que utilice la base de datos prueba

USE prueba
--Creaci�n del procedimiento almacenado
GO 
CREATE PROCEDURE carga_masiva
--Parametros que utilizara el procedimiento almacenado
	@ruta nvarchar(250)
AS
--Query que realizara el procedimiento almacenado
	SET NOCOUNT ON;
	BULK INSERT USUARIO
	FROM 'C:\Users\CloudOperator\Desktop\database\informacion.csv'
	WITH 
	(
		FIELDTERMINATOR= ';',
		ROWTERMINATOR = '\n'
	)
GO

DELETE FROM USUARIO
SELECT * FROM USUARIO
	
--Prueba del procedimiento almacenado
carga_masiva -- 'C:\Users\CloudOperator\Desktop\database\informacion.csv'