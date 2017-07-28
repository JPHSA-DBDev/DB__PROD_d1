ALTER ROLE [db_backupoperator] ADD MEMBER [JPHSA01\SQL_ALL_Backup];


GO
ALTER ROLE [db_datareader] ADD MEMBER [JPHSA01\SQL_PROD_Read_All];


GO
ALTER ROLE [db_datareader] ADD MEMBER [JPHSA01\IT];

