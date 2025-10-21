scripts/tablas/

-- Script para crear la tabla Clientes

CREATE TABLE dbo.Clientes (
    ClienteID INT NOT NULL,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NULL,
    Telefono NVARCHAR(20) NULL,
    Direccion NVARCHAR(200) NULL,
    FechaRegistro DATE NOT NULL,
    CONSTRAINT PK_Clientes PRIMARY KEY CLUSTERED (ClienteID ASC)
);
	
