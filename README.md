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


### Roles y usuarios
- `RolClientes`, `RolInventario`, `RolVentas`: Roles con permisos específicos.
- `UsuarioClientes`, `UsuarioInventario`, `UsuarioVentas`: Usuarios asignados a cada rol.

---

## Seguridad y trazabilidad

- Claves primarias y foráneas para integridad referencial.
- Roles y usuarios para control de acceso.
- Triggers para auditoría y actualización automática.
- Tabla `LogsUsuarios` para registrar acciones del sistema.

---

## Requisitos

- SQL Server 2019 o superior
- SSMS (SQL Server Management Studio)
- Permisos para crear usuarios, roles y triggers

---

## Cómo usar

1. Ejecuta los scripts en este orden:
   - Tablas
   - Roles
   - Usuarios
   - Permisos
   - Triggers
   - Inserciones (opcional)

2. Verifica que los triggers estén activos y que los roles tengan los permisos adecuados.

3. Realiza pruebas de inserción, venta y entrada de inventario para validar auditoría y actualización de stock.

---


## Autora

**Jimena Maya**  
Para el “Método Caso 1 PyME en comercio minorista”.
