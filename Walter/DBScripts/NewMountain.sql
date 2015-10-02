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
           ('Mt. Dromedary'
           ,11107                         
           ,'USA'
           ,'UT'
           ,40.59310 
           ,-111.7061 
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
           ,'May 27 2011'
           ,null)
GO

