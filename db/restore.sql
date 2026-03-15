RESTORE DATABASE laboratorio
FROM DISK = '/db/backup.bak'
WITH MOVE 'Laboratorio'
TO '/var/opt/mssql/data/laboratorio.mdf',
MOVE 'Laboratorio_log'
TO '/var/opt/mssql/data/laboratorio_log.ldf',
REPLACE
GO