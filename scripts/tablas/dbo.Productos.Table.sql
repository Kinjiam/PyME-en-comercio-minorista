-- Script para crear la tabla Productos

CREATE TABLE dbo.Productos (
    ProductoID INT NOT NULL,
    Nombre VARCHAR(20) NULL,
    Descripcion VARCHAR(50) NULL,
    Stock INT NOT NULL CONSTRAINT DF_Productos_Stock DEFAULT 0,
    Precio DECIMAL(10, 2) NOT NULL CONSTRAINT DF_Productos_Precio DEFAULT 0.00,
    CONSTRAINT PK_Productos PRIMARY KEY CLUSTERED (ProductoID ASC)
);
