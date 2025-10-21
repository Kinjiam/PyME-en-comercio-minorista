# PyME-en-comercio-minorista
Script del Método caso U1 Bases de Datos

# Sistema de Ventas para PyME

## Descripción del proyecto

Este repositorio contiene el diseño e implementación de un sistema de ventas para una pequeña empresa de comercio minorista, desarrollado en SQL Server. El sistema incluye gestión de clientes, productos, ventas, inventario y auditoría de acciones, con enfoque en trazabilidad, seguridad y buenas prácticas de base de datos.

## Componentes principales

### Tablas
- `Clientes`: Registro de clientes.
- `Productos`: Catálogo de productos con stock y precio.
- `Ventas`: Encabezado de ventas realizadas.
- `DetalleVenta`: Detalle de productos vendidos por venta.
- `EntradaInventario`: Registro de entradas de productos al inventario.
- `LogsUsuarios`: Auditoría de acciones realizadas por usuarios.

### Roles
- `RolClientes`: Acceso a datos de clientes.
- `RolInventario`: Acceso a productos y entradas de inventario.
- `RolVentas`: Acceso a ventas y detalles de venta.

### Usuarios
- `UsuarioClientes`, `UsuarioInventario`, `UsuarioVentas`: Usuarios asignados a roles específicos.

---

## Seguridad y auditoría

El sistema implementa:
- Claves primarias y foráneas para integridad referencial.
- Valores por defecto para fechas y cantidades.
- Roles y usuarios para control de acceso.
- Tabla de auditoría (`LogsUsuarios`) para registrar acciones.

---

## Requisitos

- SQL Server 2019 o superior
- SSMS (SQL Server Management Studio)
- Permisos para crear usuarios, roles y asignar logins

---

## Cómo usar

1. Ejecuta los scripts en orden:
   - Tablas
   - Roles
   - Usuarios
   - (Opcional) Triggers, inserciones y permisos

2. Verifica que los usuarios estén correctamente asignados a sus roles.

3. Realiza pruebas de inserción, consulta y auditoría.

---

## Autora

**Jimena Maya**  
Para el “Método Caso 1 PyME en comercio minorista”.
