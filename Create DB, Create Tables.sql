CREATE DATABASE IntelligentDevicesDB;

USE IntelligentDevicesDB;

CREATE TABLE Devices (
	 Id INT PRIMARY KEY IDENTITY(1,1),
	 Nombre VARCHAR(MAX) NOT NULL,
	 Descripción NVARCHAR(MAX) NOT NULL,
	 Precio Decimal(12,2) NOT NULL,
	 Anio INT,
	 Marca VARCHAR(20) NOT NULL,
	 Imagen NVARCHAR(MAX)
 );


 CREATE TABLE Comentarios (
	Id INT PRIMARY KEY IDENTITY(1,1),
	DeviceId INT NOT NULL,
	Usuario VARCHAR(100) NOT NULL,
	Comentario NVARCHAR(MAX) NOT NULL,
	Fecha DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (DeviceId) REFERENCES Devices(Id)
 );

