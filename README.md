# Laboratorio SQL Server – Sistema de Ventas

Este repositorio contiene un **laboratorio práctico de bases de datos relacionales utilizando SQL Server**.

El laboratorio está diseñado para estudiantes que comienzan a trabajar con:

- SQL
- bases de datos relacionales
- análisis de datos
- consultas sobre múltiples tablas

La base de datos incluida representa un **sistema de ventas tipo retail / punto de venta (POS)**.

Todos los datos fueron **anonimizados completamente** y contienen únicamente **información ficticia con fines académicos**.

---

# Instalación del laboratorio

## 1. Clonar el repositorio

```bash
git clone git@github-personal:xc4l1bur/sqlserver-docker-lab.git
```

## 2. Entrar al proyecto

```bash
cd sqlserver-docker-lab
```

## 3. Descomprimir la base de datos

```bash
cd db
unzip laboratorio.zip
cd ..
```

## 4. Iniciar el contenedor SQL Server

```bash
docker compose up -d
```

## 5. Ver logs del contenedor

```bash
docker compose logs -f
```

Una vez iniciado el contenedor, la base de datos **laboratorio** estará disponible.

---

# Descripción del sistema

La base de datos representa un sistema de ventas que permite simular operaciones reales de negocio:

- gestión de clientes
- catálogo de productos
- proveedores
- inventario
- ventas con tickets
- movimientos de caja
- usuarios del sistema

Esta estructura permite practicar **consultas SQL reales sobre un modelo de negocio completo**.

---

# Tamaño de la base de datos

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

---

# Documentación del modelo de datos

La documentación técnica completa del modelo se encuentra en la carpeta `docs`.

## Modelo general

Descripción completa del modelo relacional:

```
docs/modelo_relacional.md
```

## Modelo por módulos

Arquitectura del sistema agrupada por áreas funcionales:

```
docs/modelo_modulos.md
```

---

# Documentación técnica por módulo

Cada módulo del sistema tiene su propia documentación con:

- descripción funcional
- diagrama del módulo
- diccionario técnico de tablas
- campos, tipos de datos y claves

| Módulo | Documento |
|------|------|
| Clientes | docs/modulo_clientes.md |
| Productos | docs/modulo_productos.md |
| Inventario | docs/modulo_inventario.md |
| Ventas | docs/modulo_ventas.md |
| Caja | docs/modulo_caja.md |
| Seguridad | docs/modulo_seguridad.md |

---

# Laboratorio SQL

El repositorio incluye un laboratorio completo de consultas SQL progresivas.
Se divide en 3 arhivos con niveles incrementales de complejidad.

Archivos:

```
docs/consultas_sql_laboratorio1.md
docs/consultas_sql_laboratorio2.md
```

El laboratorio contiene ejercicios organizados por niveles:

| Nivel | Contenido |
|------|-----------|
| 1 | SELECT básicos |
| 2 | WHERE, LIKE, BETWEEN |
| 3 | ORDER BY, TOP, DISTINCT |
| 4 | SUM, COUNT, AVG, GROUP BY |
| 5 | CASE |
| 6 | JOIN |
| 7 | Subconsultas |
| 8 | HAVING |
| 9 | IN / EXISTS |
| 10 | CTE |
| 11 | Window Functions |
| 12 | Análisis de negocio |

En total el laboratorio contiene **más de 180 ejercicios SQL**.

---

# Proyecto Final

El laboratorio culmina con un proyecto integrador donde los estudiantes deben analizar la información del sistema.

Archivo:

```
docs/consultas_sql_laboratorio3.md
```

El proyecto incluye:

- análisis de clientes
- análisis de productos
- análisis de ventas
- análisis de inventario
- análisis de categorías
- consultas avanzadas

El objetivo es aplicar **todos los conceptos aprendidos durante el laboratorio**.

---

# Propósito del laboratorio

Este repositorio fue creado para que los estudiantes puedan practicar:

- diseño de consultas SQL
- uso de JOIN entre tablas
- agregaciones y análisis de datos
- subconsultas y CTE
- funciones analíticas
- generación de reportes de negocio

---

# Notas sobre los datos

La base de datos fue **anonimizada completamente** para eliminar cualquier información personal real.

Todos los registros presentes son **ficticios y utilizados únicamente con fines educativos**.

---

# Tecnologías utilizadas

- SQL Server
- Docker
- Docker Compose
- Git
- Markdown