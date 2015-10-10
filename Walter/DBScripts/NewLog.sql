USE [Walter]
GO

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]
           ,[SummitDate]
           ,[SummitNote])
     VALUES
           (150
           ,'November 11 2002'
           ,  null)
GO

print scope_identity()
--Select * from [MountainSummitLog] order by id desc

Update MountainSummitLog set SummitNote ='Date is uncertain' where id =271
/*	
	

(?)
*/