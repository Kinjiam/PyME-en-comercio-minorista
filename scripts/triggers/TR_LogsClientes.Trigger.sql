-- Crear el trigger para la tabla Clientes

CREATE TRIGGER TR_LogsClientes --Nombre del trigger
ON Clientes  -- Donde se va a crear 
AFTER INSERT, UPDATE  --Después de que acción se va a ejecutar
AS
BEGIN
    INSERT INTO dbo.LogsUsuarios(Usuario, Rol, Accion)
    -- En que tabla se va a crear una nueva fila
                                                    -- Indicando que columnas se van a llenar
    SELECT SYSTEM_USER, --El usuario que genera el movimiento
    'RolClientes', -- Indica el rol del sistema para el que se está configurando
    'Clientes', -- Sobre que tabla estamos trabajando 
    'INSERT/UPDATE';  -- La acción que se realiza para que el trigger se active
    
END;
