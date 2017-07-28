

CREATE VIEW p_0016_vw_504_computer_name__Software AS
--==============================================
SELECT TOP (1000) 
      c.computer_name	     
      ,s.[value] as [Software_Name]
      ,s.[version]
      ,s.[license]
	  ,s.[computer_id]   
	  
  FROM 
		[d2_SysAid].[dbo].[computer_lists] s
		LEFT OUTER JOIN 
		[d2_SysAid].[dbo].[computer] c
		ON s.computer_id = c.computer_id

	   
  WHERE 
		s.[list_type] = 'Software'
		--AND
		--c.computer_name = 'Win10VM'
		
--===============================================

	  
