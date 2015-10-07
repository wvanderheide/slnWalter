USE [Walter]
GO


INSERT INTO [dbo].[Photos]
           ([Title]
           ,[URL]
           ,[Date])
     VALUES
           (''
           ,''
           ,'3/4/2006')
GO

print @@identity

--Update Photos set date = '8/12/2007' where id =282