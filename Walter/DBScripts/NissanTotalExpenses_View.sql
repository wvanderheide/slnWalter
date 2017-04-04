USE [Walter]
GO

CREATE VIEW [dbo].[Nissan_TotalExpenseToDate]
AS
SELECT        SUM(DollarAmount) AS TotalExpenseToDate, MAX(Date) AS MaxDate
FROM            dbo.NissanFrontierExpenseLog



