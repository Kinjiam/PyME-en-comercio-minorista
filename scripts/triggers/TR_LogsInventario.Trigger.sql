-- Crear el trigger para la tabla EntradaInventario

CREATE TRIGGER TR_LogsInventario --Nombre del trigger
ON EntradaInventario  -- Donde se va a crear 
AFTER INSERT, UPDATE  --Después de que acción se va a ejecutar
AS
BEGIN
    INSERT INTO dbo.LogsInventario (Usuario, Rol, Tabla, Accion) -- En que tabla se va a crear una nueva fila, indicando que columnas se van a llenar
    SELECT SYSTEM_USER, --El usuario que genera el movimiento
    'RolInventario', -- Indica el rol del sistema para el que se está configurando
    'EntradaInventario', -- Sobre que tabla estamos trabajando 
    'INSERT/UPDATE';  -- La acción que se realiza para que el trigger se active
    
END;
