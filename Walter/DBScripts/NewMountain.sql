USE [Walter]
GO
INSERT INTO [dbo].[Mountains]
           ([Name]  ,[Elevation]  ,[Country]  ,[State]    ,[Latitude]
           ,[Longitude]   ,[MountainNote])
     VALUES
           ('Mount Belknap',	12137  , 'USA','UT',38.41940 , -112.4119 
		      ,'')   
  GO
  print SCOPE_IDENTITY()
  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]  ,[SummitDate] ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'July 1, 2017'
           ,null)
GO
print scope_identity()

--Select * from Mountains order by id desc
--Update Mountains set [Longitude]  = -82.794  where id = 152