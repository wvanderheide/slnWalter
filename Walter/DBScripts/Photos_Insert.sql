USE [Walter]
GO


INSERT INTO [dbo].[Photos]
           ([Title]
           ,[URL]
           ,[Date])
     VALUES
           ('Big Schloss'
           ,''
           ,'11/6/2004')
GO

print @@identity

--SElect * from photos where title = 'DC'
-- Delete from Photos where id = 190
--Update Photos set title = 'Bears Den' where id =311