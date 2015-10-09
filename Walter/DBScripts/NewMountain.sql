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
           ('Gilbert Peak'
           ,      13442                          
           ,'USA'
           ,'UT'
           , 40.8235 
           ,-110.3396
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
           ,'July 25 2008'
           ,null)
GO

