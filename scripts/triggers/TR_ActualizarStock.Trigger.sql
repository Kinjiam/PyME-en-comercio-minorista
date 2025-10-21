-- Trigger para actualizar el stock de productos después de una venta

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

CREATE TRIGGER dbo.TR_ActualizarStock
ON dbo.DetalleVenta
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Disminuir el stock del producto vendido
    UPDATE p
    SET p.Stock = p.Stock - i.Cantidad
    FROM dbo.Productos p
    INNER JOIN inserted i ON p.ProductoID = i.ProductoID;
END;
