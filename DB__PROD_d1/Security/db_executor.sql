CREATE ROLE [db_executor]
    AUTHORIZATION [dbo];


GO
ALTER ROLE [db_executor] ADD MEMBER [JPHSA01\SQL_PROD_Read_All];

