
-- April 30, 2017 Deprecatied this script in favor of Excel, see C:\websites\slnWalter\Walter\DBScripts\NissanFrontier.xlsx




USE [Walter]
GO
drop table [dbo].[NissanFrontierExpenseLog]
go
/****** Object:  Table [dbo].[NissanFrontierExpenseLog]    Script Date: 3/31/2017 6:39:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NissanFrontierExpenseLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mileage] [int] NULL,
	[Date] [datetime] NOT NULL,
	[DollarAmount] [decimal](18, 2) NOT NULL,
	[Note] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[NissanFrontierExpenseLog] ON 

GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (1, 54, CAST(N'2017-03-15T00:00:00.000' AS DateTime), CAST(0.00 AS Decimal(18, 2)), N'Picked up vehicle')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (2, NULL, CAST(N'2017-03-17T00:00:00.000' AS DateTime), CAST(21.36 AS Decimal(18, 2)), N'Mothers Carnuba Wax')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (3, NULL, CAST(N'2017-03-18T00:00:00.000' AS DateTime), CAST(19.74 AS Decimal(18, 2)), N'Clay bar')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (4, NULL, CAST(N'2017-03-23T00:00:00.000' AS DateTime), CAST(282.00 AS Decimal(18, 2)), N'Insurance')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (5, NULL, CAST(N'2017-03-24T00:00:00.000' AS DateTime), CAST(19.24 AS Decimal(18, 2)), N'Touch-up Paint')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (6, NULL, CAST(N'2017-03-27T00:00:00.000' AS DateTime), CAST(156.01 AS Decimal(18, 2)), N'Hood Protector and body moldings')
GO
INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (7, NULL, CAST(N'2017-03-28T00:00:00.000' AS DateTime), CAST(3.71 AS Decimal(18, 2)), N'Front window sun shader')
GO


INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (8, NULL, CAST(N'2017-04-03' AS DateTime), CAST(29000 AS Decimal(18, 2)), N'1st Loan Payment')
GO

INSERT [dbo].[NissanFrontierExpenseLog] ([id], [Mileage], [Date], [DollarAmount], [Note]) VALUES (9, NULL, CAST(N'2017-04-04' AS DateTime), CAST(41.35 AS Decimal(18, 2)), N'Gas')
GO

SET IDENTITY_INSERT [dbo].[NissanFrontierExpenseLog] OFF
GO
