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
           (''
           ,                               
           ,'USA'
           ,'UT'
           , 
           ,-
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
           ,''
           ,null)
GO

