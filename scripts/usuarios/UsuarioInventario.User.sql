-- Script para crear el usuario UsuarioInventario y asignarlo al rol RolInventario

CREATE USER UsuarioInventario FOR LOGIN LoginInventario WITH DEFAULT_SCHEMA = dbo;

ALTER ROLE RolInventario ADD MEMBER UsuarioInventario;  
