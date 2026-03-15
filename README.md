# Laboratorio SQL Server -- Base de Datos de Ventas

Este repositorio contiene un laboratorio práctico para estudiantes que
están comenzando en bases de datos relacionales utilizando **SQL
Server** y **Docker**.

La base de datos incluida ha sido **completamente anonimizada** y
contiene únicamente **datos ficticios con fines académicos**.

------------------------------------------------------------------------

# Instalación del laboratorio

Clonar el repositorio:

``` bash
git clone git@github-personal:xc4l1bur/sqlserver-docker-lab.git
```

Entrar al proyecto:

``` bash
cd sqlserver-docker-lab
```

Descomprimir la base de datos:

``` bash
cd db
unzip laboratorio.zip
cd ..
```

Iniciar el contenedor de SQL Server:

``` bash
docker compose up -d
```

Ver logs del contenedor:

``` bash
docker compose logs -f
```

Una vez iniciado el contenedor la base de datos **laboratorio** estará
disponible.

------------------------------------------------------------------------

# Descripción de la base de datos

La base representa un **sistema de ventas tipo retail / punto de venta
(POS)**.

Permite simular operaciones como:

-   administración de clientes
-   control de productos
-   ventas con ticket
-   movimientos de caja
-   control de stock
-   proveedores
-   usuarios del sistema

------------------------------------------------------------------------

## Cantidad de registros por tabla

| Tabla | Registros |
|------|-----------|
| caja | 4608 |
| caja_movimiento | 367320 |
| categoria | 48 |
| cliente | 1138 |
| comuna | 345 |
| estado | 3 |
| forma_pago | 3 |
| impuesto | 1 |
| ingreso_mercaderia | 1299 |
| ingreso_mercaderia_detalle | 6512 |
| medio_pago | 7 |
| movimiento | 6 |
| pagina | 22 |
| producto | 11097 |
| proveedor | 9 |
| provincia | 53 |
| region | 15 |
| rol | 4 |
| rol_pagina | 58 |
| stock | 829804 |
| sucursal | 4 |
| ticket | 368048 |
| ticket_linea | 776767 |
| tipo_dte | 8 |
| usuario | 21 |

------------------------------------------------------------------------

# Tablas principales

## cliente

Contiene los clientes registrados en el sistema.

Campos principales:

-   rut
-   razon_social
-   giro
-   direccion
-   email
-   telefono

Registros: **1138**

------------------------------------------------------------------------

## producto

Productos disponibles para venta.

Campos principales:

-   nombre
-   precio
-   categoria
-   impuesto

Registros: **11097**

------------------------------------------------------------------------

## ticket

Representa una venta realizada en el sistema.

Campos principales:

-   fecha
-   cliente
-   sucursal
-   total
-   forma_pago

Registros: **368048**

------------------------------------------------------------------------

## ticket_linea

Detalle de los productos vendidos en cada ticket.

Campos principales:

-   ticket_id
-   producto_id
-   cantidad
-   precio

Registros: **776767**

------------------------------------------------------------------------

## caja

Registros de apertura y cierre de caja.

Campos principales:

-   apertura_usuario
-   apertura_fechahora
-   apertura_monto
-   cierre_usuario
-   cierre_fechahora
-   cierre_monto

Registros: **4608**

------------------------------------------------------------------------

## caja_movimiento

Movimientos financieros asociados a cada caja.

Ejemplos:

-   ventas
-   devoluciones
-   ingresos
-   egresos

Registros: **367320**

------------------------------------------------------------------------

## sucursal

Sucursales donde se realizan las ventas.

Campos principales:

-   nombre
-   direccion
-   telefono
-   comuna

Registros: **4**

------------------------------------------------------------------------

## usuario

Usuarios del sistema.

Campos principales:

-   usuario
-   nombre
-   apellido
-   rol

Registros: **21**

------------------------------------------------------------------------

# Relaciones principales

El modelo utiliza claves foráneas para mantener integridad referencial.

Ejemplos:

-   cliente → comuna
-   comuna → provincia
-   provincia → region
-   producto → proveedor
-   ticket → cliente
-   ticket_linea → producto
-   caja_movimiento → caja

------------------------------------------------------------------------

# Propósito del laboratorio

Esta base de datos está diseñada para practicar:

-   consultas SQL básicas
-   JOIN entre tablas
-   agregaciones
-   análisis de ventas
-   subconsultas
-   funciones de agrupación
-   optimización de consultas

------------------------------------------------------------------------

# Ejemplos de ejercicios para alumnos

### Total de ventas por sucursal

``` sql
SELECT sucursal_id, SUM(total)
FROM ticket
GROUP BY sucursal_id;
```

### Productos más vendidos

``` sql
SELECT producto_id, SUM(cantidad)
FROM ticket_linea
GROUP BY producto_id
ORDER BY SUM(cantidad) DESC;
```

### Ventas por cliente

``` sql
SELECT cliente_id, COUNT(*)
FROM ticket
GROUP BY cliente_id;
```

------------------------------------------------------------------------

# Notas

La base fue **anonimizada para eliminar datos personales reales**.

Los datos presentes son **ficticios y se utilizan exclusivamente para
aprendizaje**.
