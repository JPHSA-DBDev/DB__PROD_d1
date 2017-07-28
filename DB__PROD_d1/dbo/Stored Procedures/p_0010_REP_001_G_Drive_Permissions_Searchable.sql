--------------------------------DEBUG PARMS START	
--DECLARE @SearchString nvarchar(100)	
--DECLARE @use_DataSource as BIT
--DECLARE @use_User as BIT
--DECLARE @use_Folder as BIT

--SET @SearchString = '26'	
--SET @use_DataSource = 1	
--SET @use_User = 0	
--SET @use_Folder = 0		

--------------------------------DEBUG PARMS END    
CREATE Procedure p_0010_REP_001_G_Drive_Permissions_Searchable(
		 @SearchString as NVARCHAR(255)	
		,@use_DataSource as bit  
		,@use_User as bit  
		,@use_Folder as bit  	                   	
	)

	as

--=============================================================================================================================

	SELECT TOP(3000) 
		[DataSource]
		,[User]
		,[Access]
		,[Folder]
  FROM [d1_IT].[dbo].[T009_G_Drive_Permissions_ARCHIVE]

		  

			WHERE
					(
							(
								(upper(rtrim(ltrim([DataSource]))) like '%' +  UPPER(RTRIM(LTRIM(@SearchString))) + '%')
								AND
								(@use_DataSource = 1)
							)		
							OR 
							(
								(
									(upper(rtrim(ltrim([User]))) like '%' +  (upper(rtrim(ltrim(@SearchString)))) + '%')				
								)
								AND
								(@use_User= 1)
							)				  
							OR 
							(
								(upper(rtrim(ltrim([Folder]))) like '%' +  (upper(rtrim(ltrim(@SearchString)))) + '%') 
								AND
								(@use_Folder = 1)								
							)
						)
		 

  Order by [User], [Folder], [DataSource],[Access]											
