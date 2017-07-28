
--================================================	
--DECLARE @SearchString nvarchar(100)		-- for first name, Department, or EmployeeID
--SET @SearchString = 'ADMIN - IT'			--

--================================================
    
CREATE Procedure prj_0004_SP_0002_AD_Computer_Searchable(
		 @SearchString as NVARCHAR(100)	                       	
	)
	as
--=============================================================================================================================

				SELECT TOP (1000) [cn]
					  ,[createTimeStamp]
					  ,[displayName]
					  ,[distinguishedName]
					  ,[LastLogon]
					  ,[logonCount]
					  ,[modifyTimeStamp]
					  ,[name]
					  ,[pwdLastSet]
					  ,[sAMAccountName]
					  ,[whenCreated]
					  ,[whenChanged]
				FROM [d1_IT].[dbo].[p_0004_vw_002_AD_Computer_INFO]
				WHERE

					(
						(
							(LEN(@SearchString) = 0) 
							OR 
							(@SearchString IS NULL)							
						)
						OR
						(
								(RTRIM(LTRIM(UPPER([cn]))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%')		
								OR (RTRIM(LTRIM(UPPER([distinguishedName]))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%')			
								OR (RTRIM(LTRIM(UPPER([name]))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%' )	
						)
					)			 
						
