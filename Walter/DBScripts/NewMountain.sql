USE [Walter]
GO
INSERT INTO [dbo].[Mountains]
           ([Name]  ,[Elevation]  ,[Country]  ,[State]    ,[Latitude]
           ,[Longitude]   ,[MountainNote])
     VALUES
           ('Grandfather Mountain',	5964 , 'USA','NC',36.10000 , -81.82  
		      ,'Tanawha')
  GO
  print SCOPE_IDENTITY()
  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]  ,[SummitDate] ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'July 4 2002'
           ,null)
GO
print scope_identity()

--Select * from Mountains order by id desc
--Update Mountains set [Longitude]  = -82.794  where id = 152