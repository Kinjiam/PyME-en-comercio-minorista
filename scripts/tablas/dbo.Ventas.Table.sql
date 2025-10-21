-- Script para crear la tabla Ventas

CREATE TABLE dbo.Ventas (
    VentaID INT IDENTITY(1,1) NOT NULL,
    ClienteID INT NOT NULL,
    FechaVenta DATETIME NULL CONSTRAINT DF_Ventas_FechaVenta DEFAULT GETDATE(),
    CONSTRAINT PK_Ventas PRIMARY KEY CLUSTERED (VentaID ASC),
    CONSTRAINT FK_Ventas_Clientes FOREIGN KEY (ClienteID)
        REFERENCES dbo.Clientes (ClienteID)
);
