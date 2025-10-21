-- Script para crear el usuario UsuarioVentas y asignarlo al rol RolVentas

CREATE USER UsuarioVentas FOR LOGIN LoginVentas WITH DEFAULT_SCHEMA = dbo;

ALTER ROLE RolVentas ADD MEMBER UsuarioVentas;
