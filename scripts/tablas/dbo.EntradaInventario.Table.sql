-- Script para crear la tabla EntradaInventario donde se van a guardar los cambios que se realicen en inventario, tanto entradas como salidas

CREATE TABLE dbo.EntradaInventario (
    EntradaID INT IDENTITY(1,1) NOT NULL,
    ProductoID INT NOT NULL,
    Cantidad INT NOT NULL,
    FechaEntrada DATETIME NULL CONSTRAINT DF_EntradaInventario_Fecha DEFAULT GETDATE(),
    CONSTRAINT PK_EntradaInventario PRIMARY KEY CLUSTERED (EntradaID ASC),
    CONSTRAINT FK_EntradaInventario_Producto FOREIGN KEY (ProductoID)
        REFERENCES dbo.Productos (ProductoID)
);
