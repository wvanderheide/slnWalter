USE [Walter]
GO
INSERT INTO [dbo].[Mountains]
           ([Name]  ,[Elevation]  ,[Country]  ,[State]    ,[Latitude]
           ,[Longitude]   ,[MountainNote])
     VALUES
           ('Little Tuk',	12048 , 'USA','UT',38.4394 , -109.2594 
		      ,'')
  GO
  print SCOPE_IDENTITY()
  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]  ,[SummitDate] ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'April 14 2017'
           ,null)
GO
print scope_identity()

--Select * from Mountains order by id desc
--Update Mountains set [Longitude]  = -82.794  where id = 152