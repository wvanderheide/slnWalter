USE [Walter]
GO

INSERT INTO [dbo].[Mountains]
           ([Name]
           ,[Elevation]
           ,[Country]
           ,[State]
           ,[Latitude]
           ,[Longitude]
           ,[MountainNote])
     VALUES
           ('Bald Mountain'
           ,11947                     
           ,'USA'
           ,'UT'
           ,40.69900 
           ,-110.902 
           ,null)


  GO
  print SCOPE_IDENTITY()

  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]
           ,[SummitDate]
           ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'7/15/2011'
           ,null)
GO

