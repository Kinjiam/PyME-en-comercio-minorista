-- Script para crear la tabla LogsUsuarios donde se registraran los cambios que cada usuario asociado a un rol realicen.

CREATE TABLE dbo.LogsUsuarios (
    LogID INT IDENTITY(1,1) NOT NULL,
    Usuario NVARCHAR(100) NOT NULL,
    Rol NVARCHAR(100) NOT NULL,
    Accion NVARCHAR(100) NOT NULL,
    FechaHora DATETIME NULL CONSTRAINT DF_LogsUsuarios_FechaHora DEFAULT GETDATE(),
    Tabla NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_LogsUsuarios PRIMARY KEY CLUSTERED (LogID ASC)
);
