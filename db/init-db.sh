#!/bin/bash

echo "Esperando SQL Server..."

sleep 20

BACKUP="/db/laboratorio.bak"
ZIP="/db/laboratorio.zip"

if [ ! -f "$BACKUP" ]; then

  echo "Descomprimiendo backup..."

  unzip $ZIP -d /db

fi

echo "Restaurando base de datos..."

/opt/mssql-tools/bin/sqlcmd \
-S localhost \
-U sa \
-P Password123! \
-i /db/restore.sql

echo "Base de datos lista."