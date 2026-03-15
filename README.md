# Laboratorio SQL Server con Docker

Este laboratorio permite ejecutar **Microsoft SQL Server** en tu computador utilizando **Docker** y cargar automáticamente una base de datos de práctica llamada **laboratorio**.

El objetivo es que los estudiantes puedan:

- Tener un entorno SQL Server listo en pocos minutos
- Practicar consultas SQL
- Trabajar con una base de datos real durante el curso

No es necesario instalar SQL Server manualmente.

---

# Requisitos

Antes de comenzar debes instalar **Docker Desktop**.

Descargar desde:

https://www.docker.com/products/docker-desktop/

Después de instalar Docker, abre una terminal y verifica que funcione:

```bash
docker --version
```

También verifica Docker Compose:

```bash
docker compose version
```

Si ambos comandos muestran una versión instalada, puedes continuar.

---

# Paso 1 — Descargar el laboratorio

Clona el repositorio en tu computador ejecutando:

```bash
git clone git@github-personal:xc4l1bur/sqlserver-docker-lab.git
```

Esto descargará todos los archivos necesarios para el laboratorio.

---

# Paso 2 — Entrar al directorio del proyecto

Después de clonar el repositorio debes entrar al directorio del laboratorio:

```bash
cd sqlserver-docker-lab
```

---

# Paso 3 — Descomprimir la base de datos

La base de datos está comprimida para que el repositorio sea más liviano.

Debes descomprimir el archivo ejecutando:

```bash
unzip db/laboratorio.zip -d db
```

Esto generará el archivo:

```
db/laboratorio.bak
```

Si aparece una carpeta llamada `__MACOSX`, elimínala con:

```bash
rm -rf db/__MACOSX
```

---

# Paso 4 — Iniciar el laboratorio

Ahora inicia SQL Server utilizando Docker:

```bash
docker compose up -d --build
```

Este comando realizará automáticamente:

1. Descargar la imagen de SQL Server
2. Crear el contenedor Docker
3. Iniciar el servidor de base de datos
4. Restaurar la base **laboratorio**

La primera ejecución puede tardar algunos minutos.

---

# Paso 5 — Verificar que SQL Server esté funcionando

Puedes revisar los logs del contenedor ejecutando:

```bash
docker compose logs -f
```

Cuando todo funcione correctamente deberías ver mensajes similares a:

```
SQL Server listo
Backup encontrado
Restaurando base de datos laboratorio
Base de datos restaurada correctamente
Laboratorio listo para usar
```

---

# Paso 6 — Conectarse a la base de datos

Puedes conectarte utilizando cualquier cliente SQL.

Ejemplos de clientes:

- Azure Data Studio
- DBeaver
- DataGrip
- SQL Server Management Studio

Configuración de conexión:

```
Servidor: localhost
Puerto: 1433
Usuario: sa
Password: Password123!
Base de datos: laboratorio
```

---

# Paso 7 — Probar una consulta

Una vez conectado puedes probar una consulta simple:

```sql
SELECT name FROM sys.tables;
```

Si obtienes resultados significa que el laboratorio está funcionando correctamente.

---

# Reiniciar el laboratorio

Si necesitas reiniciar completamente el laboratorio ejecuta:

```bash
docker compose down -v
docker compose up -d --build
```

---

# Detener el laboratorio

Para detener el contenedor ejecuta:

```bash
docker compose down
```

---

# Credenciales del laboratorio

```
Servidor: localhost
Puerto: 1433
Usuario: sa
Password: Password123!
Base de datos: laboratorio
```

---

# Objetivo del laboratorio

Este entorno se utilizará durante el curso para:

- practicar consultas SQL
- aprender bases de datos relacionales
- realizar ejercicios prácticos