----------------------------------DEBUG PARMS START
--DECLARE @SearchString nvarchar(100)
--SET @SearchString = ''
----------------------------------DEBUG PARMS END


CREATE Procedure p_0003_SP_003_Search_All_Monitors(
		 @SearchString as NVARCHAR(100)                       	
	)

	as


	SELECT 
	   I.[T006_Monitor_Inventory_PK]
      ,I.[JPHSA_Tag]
	  ,comp.JPHSA_Tag as [AttachedToComputer]
      ,I.[Monitor_Size]
      ,I.[Vendor_Service_Tag]
      ,I.[Model_Brand]
      ,I.[Comment]
      --,I.[Building_T005_e2]
      ,I.[Project]
      --,I.[DeviceStatus_T005_e3]
      ,e2.T005_Building_enum_02_Description as [Building]
	  ,e3.T005_DeviceStatus_enum_03_Description as DeviceStatus
      ,I.[CreateRecord_dateTime]
      ,I.[CreateRecord_name]
      ,I.[UpdateRecord_dateTime]
      ,I.[UpdateRecord_name]
	  --coalesce([WO_Problem_Code],'null')


  FROM 
		[d1_IT].[dbo].[T006_Monitor_Inventory] I
		LEFT OUTER JOIN
		T005_Building_enum_02 e2
		on I.Building_T005_e2  = e2.T005_Building_enum_02_Value

		LEFT OUTER JOIN
		T005_DeviceStatus_enum_03 e3
		on I.DeviceStatus_T005_e3  = e3.T005_DeviceStatus_enum_03_Value

		LEFT OUTER JOIN
		T004_IP_Inventory comp
		ON
			(
				(i.T006_Monitor_Inventory_PK = comp.Monitor_1_FK)
				OR
				(i.T006_Monitor_Inventory_PK = comp.Monitor_2_FK)
				OR
				(i.T006_Monitor_Inventory_PK = comp.Monitor_2_FK)
			)

	WHERE
			(
				(
					(LEN(@SearchString) = 0) 
					OR 
					(@SearchString IS NULL)							
				)
				OR
				(
						(RTRIM(LTRIM(UPPER(i.JPHSA_Tag))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%')		
						OR (RTRIM(LTRIM(UPPER(i.[Model_Brand]))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%')
						OR (RTRIM(LTRIM(UPPER(i.[Comment]))) like '%' +  RTRIM(LTRIM(UPPER(@SearchString))) + '%')			
				)
			)