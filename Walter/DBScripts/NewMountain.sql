USE [Walter]
GO
INSERT INTO [dbo].[Mountains]
           ([Name]  ,[Elevation]  ,[Country]  ,[State]    ,[Latitude]
           ,[Longitude]   ,[MountainNote])
     VALUES
           ('Ensign Peak',	5414 , 'USA','UT',40.79640 , -111.88846 
		      ,'')
  GO
  print SCOPE_IDENTITY()
  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]  ,[SummitDate] ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'October 16 2016'
           ,null)
GO
print scope_identity()

--Select * from Mountains order by id desc
--Update Mountains set [Longitude]  = -82.794  where id = 152