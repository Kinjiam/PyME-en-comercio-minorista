-- Script para crear la tabla DetalleVenta

CREATE TABLE dbo.DetalleVenta (
    DetalleID INT IDENTITY(1,1) NOT NULL,
    VentaID INT NOT NULL,
    ProductoID INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT PK_DetalleVenta PRIMARY KEY CLUSTERED (DetalleID ASC),  -- Identificación de clave primaria
    CONSTRAINT FK_DetalleVenta_Venta FOREIGN KEY (VentaID) -- Agregar clave foránea para asociar El detalle con un ID de venta
        REFERENCES dbo.Ventas (VentaID),
    CONSTRAINT FK_DetalleVenta_Producto FOREIGN KEY (ProductoID)  -- Agregar clave foránea para asociar el detalle con un ID de producto
        REFERENCES dbo.Productos (ProductoID)
);
