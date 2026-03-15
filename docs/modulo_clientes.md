# Módulo Clientes

Este módulo gestiona la información de clientes y su ubicación geográfica.

Incluye:

- clientes
- comunas
- provincias
- regiones

---

## Diagrama del módulo

```mermaid
flowchart LR

CLIENTE[cliente]
COMUNA[comuna]
PROVINCIA[provincia]
REGION[region]

CLIENTE --> COMUNA
COMUNA --> PROVINCIA
PROVINCIA --> REGION
```

---

## Tabla: cliente

| Campo | Tipo | Null | PK | FK | Identity |
|------|------|------|----|----|---------|
| id | int | NO | PK | | YES |
| rut | char(20) | NO | | | |
| razon_social | varchar(200) | NO | | | |
| giro | varchar(200) | YES | | | |
| direccion | varchar(200) | YES | | | |
| email | varchar(100) | YES | | | |
| telefono | char(15) | YES | | | |
| info_anexa | varchar(500) | YES | | | |
| id_comuna | int | YES | | comuna.id | |

---

## Tabla: comuna

| Campo | Tipo | Null | PK | FK |
|------|------|------|----|----|
| id | int | NO | PK | |
| nombre | varchar(100) | NO | | |
| id_provincia | int | NO | | provincia.id |

---

## Tabla: provincia

| Campo | Tipo | Null | PK | FK |
|------|------|------|----|----|
| id | int | NO | PK | |
| nombre | varchar(100) | NO | | |
| id_region | int | NO | | region.id |

---

## Tabla: region

| Campo | Tipo | Null | PK |
|------|------|------|----|
| id | int | NO | PK |
| nombre | varchar(100) | NO | |