USE [Walter]
GO
INSERT INTO [dbo].[Mountains]
           ([Name]  ,[Elevation]  ,[Country]  ,[State]    ,[Latitude]
           ,[Longitude]   ,[MountainNote])
     VALUES
           ('Maryland Height',	1299 , 'USA','MD',38.7262 , -90.44 
		      ,'Height, Lat/Long are uncertain')
  GO
  print SCOPE_IDENTITY()
  go

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]  ,[SummitDate] ,[SummitNote])
     VALUES
           ( SCOPE_IDENTITY()
           ,'June 15 2003'
           ,'Date is uncertain')
GO
print scope_identity()

--Select * from Mountains where state = 'MY'
--Update Mountains set state = 'MD' where id = 138