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
           ('Elephant Butte'
           ,5653                               
           ,'USA'
           ,'UT'
           ,39.81080  
           ,-111.7644 
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
           ,'May 8 2010'
           ,null)
GO

