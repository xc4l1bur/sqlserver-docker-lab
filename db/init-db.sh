#!/bin/bash

SQLCMD="/opt/mssql-tools18/bin/sqlcmd"
SERVER="localhost"
USER="sa"
PASSWORD="Password123!"

BACKUP="/db/laboratorio.bak"

echo "--------------------------------------"
echo "Inicializando laboratorio SQL Server"
echo "--------------------------------------"

echo "Esperando SQL Server..."

until $SQLCMD -S $SERVER -U $USER -P $PASSWORD -Q "SELECT 1" &> /dev/null
do
  echo "SQL Server aún no está listo..."
  sleep 5
done

echo "SQL Server listo."

echo "--------------------------------------"
echo "Verificando backup..."
echo "--------------------------------------"

if [ ! -f "$BACKUP" ]; then
  echo "ERROR: No se encontró laboratorio.bak"
  echo "Debe existir en la carpeta db/"
  exit 1
fi

echo "Restaurando base de datos..."

$SQLCMD \
-S $SERVER \
-U $USER \
-P $PASSWORD \
-i /db/restore.sql

echo "--------------------------------------"
echo "Base de datos restaurada correctamente"
echo "Laboratorio listo"
echo "--------------------------------------"