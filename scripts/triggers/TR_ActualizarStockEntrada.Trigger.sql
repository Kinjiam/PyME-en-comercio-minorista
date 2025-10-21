-- Trigger para aumentar el stock de productos tras una entrada de inventario

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

CREATE TRIGGER dbo.TR_ActualizarStockEntrada
ON dbo.EntradaInventario
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Aumentar el stock del producto ingresado
    UPDATE p
    SET p.Stock = p.Stock + i.Cantidad
    FROM dbo.Productos p
    INNER JOIN inserted i ON p.ProductoID = i.ProductoID;
END;
