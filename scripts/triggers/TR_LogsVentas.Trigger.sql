-- Crear el trigger para la tabla Ventas

CREATE TRIGGER TR_LogsVentas --Nombre del trigger
ON Clientes  -- Donde se va a crear 
AFTER INSERT, UPDATE  --Después de que acción se va a ejecutar
AS
BEGIN
    INSERT INTO dbo.LogsVentas(Usuario, Rol, Tabla, Accion)  -- En que tabla se va a crear una nueva fila
                                                             -- Indicando que columnas se van a llenar
    SELECT SYSTEM_USER, --El usuario que genera el movimiento
    'RolVentas', -- Indica el rol del sistema para el que se está configurando
    'Ventas', -- Sobre que tabla estamos trabajando 
    'INSERT';  -- La acción que se realiza para que el trigger se active
    
END;
