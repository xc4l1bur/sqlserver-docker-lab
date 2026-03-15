USE master;
GO

IF DB_ID('laboratorio') IS NOT NULL
BEGIN
    ALTER DATABASE laboratorio SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE laboratorio;
END
GO

RESTORE DATABASE laboratorio
FROM DISK = '/db/laboratorio.bak'
WITH 
    MOVE 'piscis2021_prod' 
        TO '/var/opt/mssql/data/laboratorio.mdf',

    MOVE 'piscis2021_prod_log' 
        TO '/var/opt/mssql/data/laboratorio_log.ldf',

    REPLACE,
    RECOVERY;
GO