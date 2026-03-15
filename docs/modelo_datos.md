# Modelo de Datos del Sistema

Este documento describe el **modelo relacional de la base de datos del laboratorio**.

La base de datos representa un **sistema de ventas (POS)** con manejo de:

- clientes
- productos
- inventario
- ventas
- caja
- usuarios del sistema

El objetivo es que los estudiantes comprendan cómo se estructura una base de datos relacional real.

---

# Resumen general de la base de datos

| Elemento | Cantidad |
|--------|--------|
| Tablas | 25 |
| Relaciones | múltiples claves foráneas |
| Tipo de motor | SQL Server |
| Tipo de modelo | Relacional |

---

# Principales módulos del sistema

| Módulo | Descripción |
|------|------|
| Clientes | Información de clientes |
| Productos | Catálogo de productos |
| Inventario | Control de stock por sucursal |
| Ventas | Registro de tickets y detalle de ventas |
| Caja | Control de apertura y cierre de caja |
| Usuarios | Usuarios que operan el sistema |

---

# Entidades principales

| Tabla | Descripción |
|------|-------------|
| cliente | Información de clientes |
| producto | Catálogo de productos |
| categoria | Clasificación de productos |
| proveedor | Proveedores de productos |
| impuesto | Impuestos aplicables |
| sucursal | Sucursales del negocio |
| stock | Stock por sucursal |
| movimiento_inventario | Historial de movimientos de inventario |
| ticket | Ventas realizadas |
| ticket_linea | Detalle de productos vendidos |
| caja | Apertura de caja |
| caja_movimiento | Movimientos de caja |
| usuario | Usuarios del sistema |

---

# Detalle de Tablas de la Base de Datos

Este documento describe la estructura de cada tabla del sistema.

Para cada tabla se muestra:

- nombre del campo
- tipo de dato
- si es clave primaria (PK)
- si es clave foránea (FK)

---

## Tabla `caja`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| apertura_usuario | char(20) | | |
| apertura_fechahora | datetime | | |
| apertura_monto | int | | |
| cierre_usuario | char(20) | | |
| cierre_fechahora | datetime | | |
| cierre_monto | int | | |
| id_sucursal | int | | |

---

## Tabla `caja_movimiento`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| monto | int | | |
| observacion | varchar(150) | | |
| fecha_hora | datetime | | |
| id_usuario | int | | |
| id_caja | int | | caja.id |
| id_tipo_dte | int | | |
| num_dte | int | | |
| id_medio_pago | int | | |
| id_tipo_movimiento_caja | int | | |

---

## Tabla `categoria`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | varchar(100) | | |
| id_categoria_padre | int | | categoria.id |
| id_estado | int | | |

---

## Tabla `cliente`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| rut | char(20) | | |
| razon_social | varchar(200) | | |
| giro | varchar(200) | | |
| direccion | varchar(200) | | |
| email | varchar(100) | | |
| telefono | char(15) | | |
| info_anexa | varchar(500) | | |
| id_comuna | int | | comuna.id |

---

## Tabla `comuna`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | varchar(100) | | |
| id_provincia | int | | provincia.id |

---

## Tabla `estado`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | char(20) | | |

---

## Tabla `forma_pago`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | char(20) | | |

---

## Tabla `impuesto`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | varchar(100) | | |
| valor | decimal | | |

---

## Tabla `producto`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | varchar(200) | | |
| precio | int | | |
| id_categoria | int | | categoria.id |
| id_proveedor | int | | proveedor.id |
| id_impuesto | int | | impuesto.id |
| id_estado | int | | estado.id |

---

## Tabla `proveedor`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| rut | char(20) | | |
| razon_social | varchar(200) | | |
| direccion | varchar(200) | | |
| telefono | char(20) | | |
| email | varchar(100) | | |
| id_comuna | int | | comuna.id |

---

## Tabla `stock`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| id_producto | int | | producto.id |
| id_sucursal | int | | sucursal.id |
| cantidad | int | | |

---

## Tabla `sucursal`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| nombre | varchar(150) | | |
| direccion | varchar(200) | | |
| telefono | varchar(20) | | |
| id_comuna | int | | comuna.id |

---

## Tabla `usuario`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| username | varchar(50) | | |
| nombre | varchar(100) | | |
| apellido | varchar(100) | | |
| email | varchar(100) | | |
| password | varchar(200) | | |
| id_estado | int | | estado.id |

---

## Tabla `ticket`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| fecha | datetime | | |
| id_cliente | int | | cliente.id |
| id_usuario | int | | usuario.id |
| total | int | | |

---

## Tabla `ticket_linea`

| Campo | Tipo | PK | FK |
|------|------|----|----|
| id | int | PK | |
| id_ticket | int | | ticket.id |
| id_producto | int | | producto.id |
| cantidad | int | | |
| precio | int | | |

---



---

# Flujo funcional del sistema

El sistema sigue el siguiente flujo de operación:

```
Cliente
   ↓
Venta (Ticket)
   ↓
Detalle de venta
   ↓
Producto
   ↓
Inventario
   ↓
Movimiento de inventario
```

Además:

```
Venta
   ↓
Movimiento de caja
```

Y todo el sistema es operado por:

```
Usuario del sistema
```

---

# Objetivo académico

Este modelo permite a los estudiantes practicar:

- diseño de bases de datos
- consultas SQL
- relaciones entre tablas
- uso de claves foráneas
- consultas con JOIN
- agregaciones
- reportes

---

# Ejemplo de consulta para estudiantes

```sql
SELECT
c.razon_social,
t.fecha,
p.nombre,
tl.cantidad,
tl.precio
FROM ticket t
JOIN cliente c ON t.cliente_id = c.id
JOIN ticket_linea tl ON t.id = tl.ticket_id
JOIN producto p ON tl.producto_id = p.id
```

Esta consulta muestra **las ventas realizadas a clientes con sus productos**.

---

# Uso en el laboratorio

Los estudiantes utilizarán esta base para:

- practicar SQL
- consultas JOIN
- agregaciones
- reportes
- análisis de datos