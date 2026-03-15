#!/bin/bash

echo "-------------------------------------"
echo "Inicializando laboratorio SQL Server"
echo "-------------------------------------"

BACKUP="/db/laboratorio.bak"
ZIP="/db/laboratorio.zip"

echo "Esperando que SQL Server acepte conexiones..."

until /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P Password123! -C -Q "SELECT 1" &> /dev/null
do
    echo "SQL Server aún no está listo..."
    sleep 5
done

echo "SQL Server listo."

echo "-------------------------------------"
echo "Verificando backup"
echo "-------------------------------------"

if [ ! -f "$BACKUP" ]; then
    echo "Backup no encontrado. Descomprimiendo laboratorio.zip..."
    unzip $ZIP -d /db
else
    echo "Backup encontrado."
fi

echo "-------------------------------------"
echo "Restaurando base de datos laboratorio"
echo "-------------------------------------"

/opt/mssql-tools18/bin/sqlcmd \
-S localhost \
-U sa \
-P Password123! \
-C \
-i /db/restore.sql

echo "-------------------------------------"
echo "Base de datos restaurada correctamente"
echo "Laboratorio listo para usar"
echo "-------------------------------------"