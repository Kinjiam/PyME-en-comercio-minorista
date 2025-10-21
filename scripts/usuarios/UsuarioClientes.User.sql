-- Script para crear el usuario UsuarioClientes y asignarlo al rol RolClientes

CREATE USER UsuarioClientes FOR LOGIN LoginClientes WITH DEFAULT_SCHEMA = dbo;

ALTER ROLE RolClientes ADD MEMBER UsuarioClientes; --Asignación del rol
