USE [Walter]


DROP TABLE [dbo].[MountainSummitLog]
GO
DROP TABLE [dbo].[Mountains]
GO

DROP TABLE [dbo].[Photos]
GO

DROP TABLE [dbo].[Contacts]

GO
DROP TABLE [dbo].[Quotes]

GO

DROP TABLE [dbo].[Bands]
GO

DROP TABLE [dbo].[ACDC]
GO


--Procs
DROP PROCEDURE [dbo].[AllClimbs]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON

go
CREATE TABLE [dbo].[ACDC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Song] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ACDC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
CREATE PROCEDURE [dbo].[AllClimbs] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT       
			 dbo.Mountains.Id
			, dbo.Mountains.Name
			, dbo.Mountains.Elevation
			, dbo.Mountains.Country
			, dbo.Mountains.State
			, dbo.Mountains.Latitude
			, dbo.Mountains.Longitude
			, dbo.Mountains.MountainNote
			, dbo.MountainSummitLog.MountainID
			, dbo.MountainSummitLog.SummitDate
			, dbo.MountainSummitLog.SummitNote
FROM            dbo.Mountains LEFT OUTER JOIN
                         dbo.MountainSummitLog ON dbo.Mountains.Id = dbo.MountainSummitLog.MountainID

						 order by  dbo.MountainSummitLog.SummitDate desc
END

GO





CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Middle Name] [varchar](50) NULL,
	[Spouse] [varchar](50) NULL,
	[Mobile Phone] [varchar](50) NULL,
	[Home Phone] [varchar](50) NULL,
	[Home Street] [varchar](200) NULL,
	[Home City] [varchar](50) NULL,
	[Home Postal Code] [varchar](50) NULL,
	[Home State] [varchar](50) NULL,
	[Home Country] [varchar](50) NULL,
	[Nickname] [varchar](50) NULL,
	[Notes] [varchar](1000) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mountains]    Script Date: 10/28/2015 2:20:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mountains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Elevation] [int] NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[State] [varchar](50) NULL,
	[Latitude] [decimal](30, 10) NULL,
	[Longitude] [decimal](30, 10) NULL,
	[MountainNote] [varchar](255) NULL,
 CONSTRAINT [PK_Mountains] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MountainSummitLog]    Script Date: 10/28/2015 2:20:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MountainSummitLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MountainID] [int] NOT NULL,
	[SummitDate] [date] NULL,
	[SummitNote] [varchar](255) NULL,
 CONSTRAINT [PK_MountainSummitLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 10/28/2015 2:20:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[URL] [varchar](200) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotes]    Script Date: 10/28/2015 2:20:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quote] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Quotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (1, N'Abe', N'Boekweg', NULL, NULL, N'801.995.8411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (2, N'Adam', N'Goodman', NULL, NULL, N'801.735.9908', NULL, N'1735 S. 100 E.', N'Orem', N'84058', N'UT', N'USA', N'Bishop', NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (3, N'Alan', N'Moore', NULL, NULL, N'801.372.4688', NULL, N'1611 Grandview Lane #5', N'Provo', N'84604', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (4, N'Alec', N'LaLonde', NULL, NULL, N'585.409.8158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (5, N'Alex', N'Wilson', NULL, N'Lani', N'801.400.2035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (6, N'Alex', N'Rudd', NULL, NULL, N'801.971.9245', NULL, N'2743 Centerbrooke Dr.', N'West Valley', NULL, N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (7, N'Alex', N'Serrano', NULL, NULL, N'801.663.4113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (8, N'Ali', N'Khan', NULL, NULL, N'435.610.1818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (9, N'Alison', N'Gerstner', NULL, NULL, N'801.643.4256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (10, N'Alma', N'Muklewicz', NULL, NULL, N'623.760.5106', NULL, N'4828 N. Shady Bend Lane', N'Lehi', N'84043', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (11, N'Amie', N'Leavitt', NULL, NULL, N'801.358.3773', NULL, N'895 S 930 W', N'Payson', N'84651', N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (12, N'Ammon', N'Hatch', NULL, NULL, N'801.598.5321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (13, N'Ana', N'Serrano', NULL, NULL, N'801.636.1741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (14, N'Andy', N'Koeppen', NULL, N'Misty', NULL, NULL, N'876 N. Craneshill Ave', N'Kuna', N'83634', N'ID', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (15, N'Angela', N'Ahn', NULL, NULL, N'801.636.7669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (16, N'Art', N'Delgado', NULL, NULL, N'832.563.8237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (17, N'Aymara', N'Jimenez', NULL, NULL, N'435.764.4496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (18, N'Ben', N'Brutsch', NULL, NULL, N'801.360.9792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (19, N'Ben', N'Holmes', NULL, NULL, N'435.374.8301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (20, N'Beth', N'Marshall', N' Ester', NULL, N'801.850.3113', NULL, N'821 N 50 E', N'Provo', N'84604', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (21, N'Brian', N'Sutton', NULL, NULL, N'801.859.8311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (22, N'Bryan', N'Bean', NULL, NULL, N'801.660.7559', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (23, N'Calvin', N'Harmann', NULL, NULL, N'720.891.2780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (24, N'Carolyn', N'Stein', NULL, NULL, N'703.368.8770', NULL, N'9523 Sudley Manor Drive', N'Manassas', N'20109', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (25, N'Christine', N'Pilgram', NULL, NULL, N'801.634.5481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (26, N'Cody', N'Bly', NULL, NULL, N'972.317.2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (27, N'Corbin', N'Jensen', NULL, NULL, N'306.301.0022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (28, N'Dan', N'Christopherson', NULL, NULL, N'801.360.5183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (29, N'Dan', N'Thrasher', NULL, NULL, N'509.560.9491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (30, N'Daniel', N'Lay', NULL, NULL, N'435.773.7040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (31, N'Dave', N'Armitage', NULL, NULL, N'801.243.5438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (32, N'David', N'Jones', NULL, NULL, N'801.921.3036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (33, N'David', N'Laughman', NULL, NULL, N'801.368.2148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (34, N'David', N'Winterbottom', NULL, NULL, N'801.884.3389', NULL, N'1372 W. QuailRidge Circle', N'Riverton', NULL, N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (35, N'Dean', N'Ingram', NULL, N'Amie', N'801.318.9569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (36, N'Derek', N'Roberts', NULL, NULL, N'307.371.1034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (37, N'Diane', N'Wilson', NULL, NULL, N'801.295.5037', NULL, N'1380 N. 450 E.', N'Bountiful', N'84010', N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (38, N'Don', N'Naylor', NULL, NULL, N'801.360.5179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (39, N'Donald', N'Tapia', NULL, NULL, N'720.384.3368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (40, N'Douglas', N'Wing', NULL, NULL, N'801.319.0936', N'801.373.4695', N'1504 E 1500 N', N'Provo', NULL, N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (41, N'Dustin', N'Erickson', NULL, NULL, N'801.231.7358', NULL, N'9741 Granite Hills Dr', N'Sandy', N'84092', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (42, N'Edward', N'Kocherhans', NULL, NULL, N'801.420.2788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (43, N'Elsa', N'Renova', NULL, NULL, N'801.885.5499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (44, N'Eric', N'Parker', NULL, NULL, N'425.750.3722', N'703.620.5249', N'3026 Foxmill Rd', N'Oakton', N'22124', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (45, N'Fran', N'Fernandez', NULL, N' Debbie', N'703.470.9648', N'703.281.3507', N'9554 Lagersfield Circle', N'Vienna', NULL, N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (46, N'Gabe', N'Diarte', NULL, NULL, N'801.668.5653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (47, N'Gigi', N'Buettner', NULL, N' Lance Locke', N'801.245.0030', N'801.571.2435', N'2487 W. Midas Side Way', N'Riverton', N'84065', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (48, N'Glen', N'Merrill', NULL, NULL, N'801.400.4061', NULL, N'Old Mill #107', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (49, N'Gui', N'Mariz', NULL, NULL, N'61.2.971.60665', NULL, N'7 Hedger Ave', NULL, N'2131', N'Ashfield NSW ', N'Australia', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (50, N'Haley', N'Dahle', NULL, NULL, N'435.230.2080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (51, N'Helen', N'Koeppen', NULL, NULL, N'360.798.8086', NULL, N'13117 NW 48th Ave ', N'Vancouver', N'98685', N'WA', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (52, N'Hoc', N'Vu', NULL, NULL, N'801.830.2680', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (53, N'Jack', N'Hockingson', NULL, NULL, N'801.592.3317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (54, N'Jackson', N'Marvel', NULL, NULL, N'801.669.0250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (55, N'Jacob', N'Barzee', NULL, NULL, N'208.201.7075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (56, N'Jaime', N'Gonzales', NULL, NULL, N'801.995.1037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (57, N'Jake', N'Moon', NULL, NULL, N'801.678.9481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (58, N'Jared', N'Ogden', NULL, NULL, N'540.809.5927', N'540.809.0773', N'10714 Wellington', N'Fredericksburg', N'22403', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (59, N'Jason', N'Skinner', NULL, NULL, N'801.971.8884', N'801.278.5254', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (60, N'Jeff', N'Moye', NULL, N'Kimiko', NULL, NULL, N'33 Beechwood Ave', N'Bogota', N'7603', N'NJ ', NULL, NULL, N'Tommy& Kenneth')
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (61, N'Jeremy', N'Freeman', NULL, NULL, N'801.580.5720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (62, N'Joe', N'Bullough', NULL, NULL, N'801.864.3716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (63, N'John', N'Cheney', NULL, NULL, N'435.616.1776', NULL, N'516 S. Lucerne Dr', N'Salem', N'84653', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (64, N'John', N'Judd', NULL, NULL, N'801.361.6653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (65, N'John', N'Low', NULL, NULL, N'801.995.9115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (66, N'John', N'Rogers', NULL, NULL, N'801.300.3488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (67, N'Josh', N'Jones', NULL, NULL, N'801.234.0409', NULL, N'342 E. 1150 S.', N'Springville', NULL, N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (68, N'Justin', N'Hill', NULL, NULL, N'801.473.6097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (69, N'Jutta', N'Wood', NULL, NULL, N' 403.894.8830', N'403.653.3106', N'Box 84', N'Cardston', N'T0K 0K0', N'Alberta', N'Canada', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (70, N'Kai', N'Choi', N'James', NULL, N'213.807.3812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (71, N'Katelyn', N'VanderHeide', NULL, NULL, N'385.242.0242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (72, N'Kathryn', N'Vander Heide', NULL, NULL, N'214.870.8134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (73, N'Katy', N'Knight', NULL, NULL, N'801.921.3690', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (74, N'Ken', N'Wood', NULL, NULL, N'403.330.5658', NULL, N'504 Silkstone Crescent W.', N'Lethbridge', N'T1J 4C1', N'Alberta', N'Canada', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (75, N'Kenneth', N'Fairchild', NULL, NULL, N'801.709.9594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (76, N'Kevin', N'Sheffield', NULL, NULL, N'801.787.6979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (77, N'Kyle', N'Heniger', NULL, N'Kari', N'403.210.1156', N'403.653.2857', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (78, N'Lance', N'Manning', NULL, NULL, N'972.363.9400', NULL, N'5311 Fleetwood #263', N'Dallas', N'75235', N'TX', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (79, N'Lane', N'Pollock', NULL, NULL, N'801.318.0721', NULL, N'890 N. Main St', N'Orem', NULL, N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (80, N'Larry', N'Nabzeska', NULL, NULL, NULL, NULL, N'14675 County Ln.', N'Morgan Hill', N'95037', N'CA', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (81, N'Leonor', N'Serrano', NULL, NULL, N'801.678.4592', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (82, N'Linda', N'Housekeeper', NULL, NULL, N'801.800.3031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (83, N'Lisa', N'Jensen', NULL, NULL, N'403.330.5599', N'403.328.4123', N'188 Mt. Rundle Rd W.  ', N'Lethbridge', N'T1K 7E9', N'Alberta', N'Canada', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (84, N'Lubos', N'Pavel', NULL, NULL, N'435.659.1655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (85, N'Lucilla', N'Tan', NULL, NULL, NULL, N'703.892.0796', N'575 12TH Road South #1218', N'Arlington', N'22202', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (86, N'Lucy', N'Ordaz', NULL, NULL, N'801.787.4384', NULL, N'1213 S 1460 E', N'Provo', NULL, N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (87, N'Mac', N'Gilbert', NULL, NULL, N'435.764.2622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (88, N'Margitta', N'Koeppen', NULL, NULL, N'208.362.1123', NULL, N'1611 N. Calaveras Pl.', N'Kuna', N'83634', N'ID', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (89, N'Mark', N'Anthony', NULL, NULL, N'657.549.7778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (90, N'Mark', N'Borges', NULL, NULL, N'801.205.5758', N'801.363.4504', N'BCC', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (91, N'Mark', N'Epling', NULL, NULL, N'801.473.4548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (92, N'Matt', N'Jesperson', NULL, NULL, N'801.400.9089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (93, N'Matt', N'Long', NULL, NULL, N'801.687.0323', NULL, N'340 N. 600 E.', N'Spanish Fork', NULL, N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (94, N'Matt', N'Stack', NULL, NULL, N'571.283.2584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (95, N'Matthew', N'Hayosh', NULL, N'Jackie', N'586.907.7113', NULL, N'54 S. 200 W.', N'Mt. Pleasant', N'84647', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (96, N'Matthew', N'Van Horn', NULL, NULL, N'801.631.7152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (97, N'Max', N'Gerstner', NULL, N'Judy', N'801.295.5181', N'801.292.0897', N'490 N.  900 E.', N'Bountiful', N'84010', N'UT', N'USA', NULL, N'Alison& Cecilia')
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (98, N'Mica', N'Muklewicz', NULL, NULL, N'623.734.3272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (99, N'Michael', N'Ramsey', NULL, N'Helene', N'801.200.2513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (100, N'Mick', N'Bunnell', NULL, NULL, N'801.360.4635', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (101, N'Mike', N'Hylland', NULL, NULL, N'801.244.3364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (102, N'Mike', N'Sullivan', NULL, NULL, N'719.580.9002', NULL, N'Box 444', N'Crestone', N'81131', N'CO', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (103, N'Neil', N'Steinert', NULL, NULL, N'908.868.9153', NULL, N'7136 S. 2870 E.', N'Salt Lake City', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (104, N'Nick', N'Knouse', NULL, N'Candice', N'801.372.0699', N'801.372.0806', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (105, N'Patrick', N'McGuinness', NULL, NULL, N'603.545.2774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (106, N'Paul', N'Amundsen', NULL, NULL, N'801.712.7436', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (107, N'Peter', N'VanderHeide', NULL, NULL, N'385.242.3248', N'801.307-1368', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (108, N'Peter', N'VanderHeide', NULL, N'Kathryn', N'214.870.8134', N'801.601.1644', N'11638 S. Hidden Valley Blvd', N'Sandy', N'84092', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (109, N'Pierre', N'Dartiguenave', NULL, NULL, N'801.722.4838', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (110, N'Ralph', N'VanderHeide', NULL, N'Judy', N'801.479.8977', NULL, N'2873 E. 6200 S.  ', N'Ogden', N'84403', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (111, N'Randall', N'Brittner', NULL, NULL, N'403.381.6206', NULL, N'790 Columbia Blvd.', N'Lethbridge', N'T1K 5A5', N'Alberta', N'Canada', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (112, N'Randy', N'Olsen', NULL, NULL, N'435.773.1085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (113, N'Rick', N'Barrett', NULL, NULL, N'801.330.5678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (114, N'Ritchie', N'Wood', NULL, NULL, N'403.448.0408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (115, N'Robbie', N'Williams', NULL, NULL, N'801.473.7259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (116, N'Roger', N'Brown', NULL, NULL, N'801.356.1032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (117, N'Ron', N'Turner', NULL, NULL, N'801.319.5464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (118, N'Rueben', N'Rebollo', NULL, NULL, N'801.318.7545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (119, N'Rustin', N'Diehl', NULL, NULL, N'801.651.4849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (120, N'Ryan', N'Running', NULL, NULL, N'801.722.8424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (121, N'Sam', N'Cannon', NULL, NULL, N'909.557.0553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (122, N'Scott', N'Cooney', NULL, NULL, N'970.903.1552', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (123, N'Scott', N'Gonzalez', NULL, NULL, N'949.735.6553', N'801.427.9272', N'1200 N. Terrace #325', N'Provo', NULL, N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (124, N'Sean', N'Peckham', NULL, NULL, N'801.674.7037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (125, N'Sean', N'Skelton', NULL, NULL, N'760.529.2222', NULL, N'6982 Zebrina Pl', N'Carlsbad', N'92011', N'CA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (126, N'Sean', N'Stanton', NULL, NULL, N'808.589.7405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (127, N'Shanan', N'Kim', NULL, NULL, N'82.591.741.0332', NULL, N'184-1 Ok Bong Nam Dong', N'Chinju', N' 660-220', NULL, N' S. Korea', N'Chong Yun??', NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (128, N'Shaun', N'Knapp', NULL, NULL, N'310.990.3986', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (129, N'Steve', N'Tueller', NULL, NULL, N'801.372.1975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (130, N'Thomas', N'Gappmeyer', NULL, NULL, N'208.721.7733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (131, N'Tom', N'Oaks', NULL, N'Cindy', N'801.466.1015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (132, N'Trace', N'Salmon', NULL, N'Lin', N'435.830.1261', NULL, N'149 Cove Rd', N'Saratoga Springs', N'84043', N'UT', NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (133, N'Tracy', N'Padgett', NULL, NULL, N'801.687.2127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (134, N'Trent', N'Rogers', NULL, NULL, N'801.787.5729', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (135, N'Trever', N'Figgins', NULL, NULL, N'801.310.5979', N'801.465.3392', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (136, N'Tristan', N'Higbee', NULL, NULL, N'801.734.0644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (137, N'Vern', N'Peterson', NULL, NULL, N'801.541.3490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (138, N'Walter', N'VanderHeide', NULL, NULL, N'385.224.9540', N'801.226.0952', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (139, N'Wayne', N'Pullman', NULL, NULL, N'801.735.8263', NULL, N'411 W. 1600 N.', N'Mapleton', N'84664', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (140, N'William', N'DaBell', NULL, NULL, N'385.439.6704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (141, N'Yolanda', N'Atzin', NULL, NULL, N'703.405.1932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (142, N'Brad', N'Meyers', NULL, NULL, N'801.712.0916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (143, N'Ray', N'Loveless', NULL, NULL, N'801.636.9287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (144, N'Rodney', N'Hickman', NULL, NULL, N'801.599.4857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (145, N'Abe', N'Kim', NULL, NULL, N'801.707.7473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO



SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO

GO
SET IDENTITY_INSERT [dbo].[Mountains] ON 

GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (1, N'Mount Timpanogos', 11749, N'USA', N'UT', CAST(40.3907400000 AS Decimal(30, 10)), CAST(-111.6457500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (2, N'Mount Lineham', 8950, N'Canada', N'Alberta', CAST(49.0696500000 AS Decimal(30, 10)), CAST(-114.0491200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (3, N'White Butte', 3507, N'USA', N'ND', CAST(46.3868000000 AS Decimal(30, 10)), CAST(-103.3021000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (4, N'Harney Peak', 7242, N'USA', N'SD', CAST(43.8661000000 AS Decimal(30, 10)), CAST(-103.5311000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (5, N'Mount Hawkins', 8839, N'Canada', N'Alberta', CAST(49.0877000000 AS Decimal(30, 10)), CAST(-114.0770500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (6, N'Mount Blakiston', 9547, N'Canada', N'Alberta', CAST(49.0939300000 AS Decimal(30, 10)), CAST(-114.0355100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (7, N'Bertha Peak', 8005, N'Canada', N'Alberta', CAST(49.0389000000 AS Decimal(30, 10)), CAST(-113.9444000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (8, N'Grandeur Peak', 8299, N'USA', N'UT', CAST(40.7070000000 AS Decimal(30, 10)), CAST(-111.7592000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (9, N'Squaw Peak', 7876, N'USA', N'UT', CAST(40.2720000000 AS Decimal(30, 10)), CAST(-111.6160000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (10, N'Panorama Point', 5429, N'USA', N'NE', CAST(41.0072000000 AS Decimal(30, 10)), CAST(-104.0305000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (11, N'Mount Tuscarora', 10660, N'USA', N'UT', CAST(40.5843800000 AS Decimal(30, 10)), CAST(-111.5987800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (12, N'Mount Wolverine', 10795, N'USA', N'UT', CAST(40.5854200000 AS Decimal(30, 10)), CAST(-111.6034100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (13, N'Patsy Marley', 10525, N'USA', N'UT', CAST(40.5881500000 AS Decimal(30, 10)), CAST(-111.6086300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (14, N'Cathedral Peak', 10911, N'USA', N'CA', CAST(37.8478000000 AS Decimal(30, 10)), CAST(-119.4047000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (15, N'Montgomery Peak', 13441, N'USA', N'CA', CAST(37.8380000000 AS Decimal(30, 10)), CAST(-118.3560000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (16, N'Boundary Peak', 13140, N'USA', N'NV', CAST(37.8461000000 AS Decimal(30, 10)), CAST(-118.3500000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (17, N'Mt. Olympus', 9026, N'USA', N'UT', CAST(40.6570000000 AS Decimal(30, 10)), CAST(-111.7700000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (18, N'Denali', 20320, N'USA', N'AK', CAST(63.0692700000 AS Decimal(30, 10)), CAST(-151.0077700000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (19, N'Monte Cristo', 11132, N'USA', N'UT', CAST(40.5912500000 AS Decimal(30, 10)), CAST(-111.6711400000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (20, N'Mt. Superior', 11040, N'USA', N'UT', CAST(40.5921500000 AS Decimal(30, 10)), CAST(-111.6669800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (21, N'Y-Mountain', 8568, N'USA', N'UT', CAST(40.2543400000 AS Decimal(30, 10)), CAST(-111.6104900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (22, N'Mount Raymond', 10241, N'USA', N'UT', CAST(40.6580000000 AS Decimal(30, 10)), CAST(-111.7010000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (23, N'Iztaccihuatl', 17159, N'Mexico', N'Puebla', CAST(19.1833000000 AS Decimal(30, 10)), CAST(-98.6333000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (24, N'Pico de Orizaba', 18490, N'Mexico', N'Puebla', CAST(19.0219000000 AS Decimal(30, 10)), CAST(-97.2675000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (25, N'Maple Mountain', 9089, N'USA', N'UT', CAST(40.2372000000 AS Decimal(30, 10)), CAST(-111.5972000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (26, N'Lady Mountain', 6945, N'USA', N'UT', CAST(37.2543000000 AS Decimal(30, 10)), CAST(-112.9665000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (27, N'Aries Butte', 6492, N'USA', N'UT', CAST(37.2325000000 AS Decimal(30, 10)), CAST(-112.9077000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (28, N'Pingora Peak', 11884, N'USA', N'WY', CAST(42.7792000000 AS Decimal(30, 10)), CAST(-109.2247000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (29, N'Sundial Peak', 10320, N'USA', N'UT', CAST(40.5971200000 AS Decimal(30, 10)), CAST(-111.6846700000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (30, N'Kings Peak', 13528, N'USA', N'UT', CAST(40.7765000000 AS Decimal(30, 10)), CAST(-110.3723000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (31, N'Jeff Davis Peak', 12771, N'USA', N'NV', CAST(38.9886000000 AS Decimal(30, 10)), CAST(-114.2960000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (32, N'Jefferson Needle', 12630, N'USA', N'NV', CAST(38.9852000000 AS Decimal(30, 10)), CAST(-114.3056600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (33, N'Wheeler Peak', 13063, N'USA', N'NV', CAST(38.9861000000 AS Decimal(30, 10)), CAST(-114.3125000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (34, N'Teewinot Mtn', 12325, N'USA', N'WY', CAST(43.7472000000 AS Decimal(30, 10)), CAST(-110.7792000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (35, N'El Capitan Peak', 8085, N'USA', N'TX', CAST(31.8770000000 AS Decimal(30, 10)), CAST(-104.8580000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (36, N'Guadalupe Peak', 8749, N'USA', N'TX', CAST(31.8914000000 AS Decimal(30, 10)), CAST(-104.8600000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (37, N'Deseret Peak', 11031, N'USA', N'UT', CAST(40.4597000000 AS Decimal(30, 10)), CAST(-112.6263000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (38, N'Wheeler Peak', 13161, N'USA', N'NM', CAST(36.5625000000 AS Decimal(30, 10)), CAST(-105.4140000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (39, N'Mount Walter', 13141, N'USA', N'NM', CAST(36.5567000000 AS Decimal(30, 10)), CAST(-105.4164000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (40, N'Little Water Peak', 9605, N'USA', N'UT', CAST(40.6719000000 AS Decimal(30, 10)), CAST(-111.6277000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (41, N'Lake Mountain', 7690, N'USA', N'UT', CAST(40.2750000000 AS Decimal(30, 10)), CAST(-111.9398000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (42, N'North Timpanogos', 11441, N'USA', N'UT', CAST(40.4162000000 AS Decimal(30, 10)), CAST(-111.6669000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (43, N'Bomber Peak', 11347, N'USA', N'UT', CAST(40.4041700000 AS Decimal(30, 10)), CAST(-111.6577800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (44, N'South Timpanogos', 11722, N'USA', N'UT', CAST(40.3844200000 AS Decimal(30, 10)), CAST(-111.6364500000 AS Decimal(30, 10)), N'Second Summit')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (45, N'Buffalo Peak', 8029, N'USA', N'UT', CAST(40.2828000000 AS Decimal(30, 10)), CAST(-111.6167200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (46, N'Provo Peak', 11068, N'USA', N'UT', CAST(40.2440000000 AS Decimal(30, 10)), CAST(-111.5560000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (47, N'Ben Lomond', 9712, N'USA', N'UT', CAST(41.3631500000 AS Decimal(30, 10)), CAST(-111.9606800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (48, N'Willard Peak', 9764, N'USA', N'UT', CAST(41.3829900000 AS Decimal(30, 10)), CAST(-111.9742900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (49, N'Crystal  Peak', 7106, N'USA', N'UT', CAST(38.7908000000 AS Decimal(30, 10)), CAST(-113.6003000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (50, N'Notch  Peak', 9654, N'USA', N'UT', CAST(39.1430000000 AS Decimal(30, 10)), CAST(-113.4090000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (51, N'Granite Peak', 12799, N'USA', N'MT', CAST(45.1633000000 AS Decimal(30, 10)), CAST(-109.8072000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (52, N'Devil''s Castle', 10920, N'USA', N'UT', CAST(40.5660300000 AS Decimal(30, 10)), CAST(-111.6110100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (53, N'Mount Ogden', 9572, N'USA', N'UT', CAST(41.2000000000 AS Decimal(30, 10)), CAST(-111.8820000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (54, N'Grand Teton', 13770, N'USA', N'WY', CAST(43.7411000000 AS Decimal(30, 10)), CAST(-110.8020000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (55, N'London Spire', 8400, N'USA', N'UT', CAST(41.3988300000 AS Decimal(30, 10)), CAST(-111.9986200000 AS Decimal(30, 10)), N'Elevation, Lat/Long are estimates')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (56, N'Lone Peak', 11253, N'USA', N'UT', CAST(40.5268000000 AS Decimal(30, 10)), CAST(-111.7562800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (57, N'Ibapah Peak', 12087, N'USA', N'UT', CAST(39.8282000000 AS Decimal(30, 10)), CAST(-113.9190000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (58, N'South Thunder', 11154, N'USA', N'UT', CAST(40.5333000000 AS Decimal(30, 10)), CAST(-111.7340000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (59, N'Chipman Peak', 10954, N'USA', N'UT', CAST(40.5226000000 AS Decimal(30, 10)), CAST(-111.7230000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (60, N'Upwop', 11137, N'USA', N'UT', CAST(40.5326200000 AS Decimal(30, 10)), CAST(-111.7130200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (61, N'Pfeifferhorn', 11326, N'USA', N'UT', CAST(40.5337000000 AS Decimal(30, 10)), CAST(-111.7052000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (62, N'Box Elder Peak', 11101, N'USA', N'UT', CAST(40.4900000000 AS Decimal(30, 10)), CAST(-111.6960000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (63, N'Loafer Peak', 10687, N'USA', N'UT', CAST(39.9762000000 AS Decimal(30, 10)), CAST(-111.6153000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (64, N'Santaquin Peak', 10685, N'USA', N'UT', CAST(39.9830000000 AS Decimal(30, 10)), CAST(-111.6230000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (65, N'Reynolds Peak', 9422, N'USA', N'UT', CAST(40.6622000000 AS Decimal(30, 10)), CAST(-111.6458000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (66, N'Mt. Whitney', 14497, N'USA', N'CA', CAST(36.5786000000 AS Decimal(30, 10)), CAST(-118.2930000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (67, N'First Gemini', 13387, N'USA', N'UT', CAST(40.7531900000 AS Decimal(30, 10)), CAST(-110.3592100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (68, N'Second  Gemini', 13306, N'USA', N'UT', CAST(40.7551200000 AS Decimal(30, 10)), CAST(-110.3691200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (69, N'South Kings Peak', 13512, N'USA', N'UT', CAST(40.7658000000 AS Decimal(30, 10)), CAST(-110.3778000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (70, N'Bald Mountain', 11947, N'USA', N'UT', CAST(40.6990000000 AS Decimal(30, 10)), CAST(-110.9020000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (71, N'Cascade', 10908, N'USA', N'UT', CAST(40.3070000000 AS Decimal(30, 10)), CAST(-111.5880000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (72, N'Broads Fork Twin Peaks', 11330, N'USA', N'UT', CAST(40.5939000000 AS Decimal(30, 10)), CAST(-111.7203000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (73, N'Sunrise Peak', 11275, N'USA', N'UT', CAST(40.5911000000 AS Decimal(30, 10)), CAST(-111.7105000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (74, N'Mt. Dromedary', 11107, N'USA', N'UT', CAST(40.5931000000 AS Decimal(30, 10)), CAST(-111.7061000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (75, N'Corral Mountain', 10435, N'USA', N'UT', CAST(40.2285000000 AS Decimal(30, 10)), CAST(-111.5540200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (76, N'Flagstaff Mountain', 10651, N'USA', N'UT', CAST(40.6049300000 AS Decimal(30, 10)), CAST(-111.6444800000 AS Decimal(30, 10)), N'471 m (NXNE (14 degrees) from USGS labled summit')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (77, N'Flat Top Mountain', 10620, N'USA', N'UT', CAST(40.3726000000 AS Decimal(30, 10)), CAST(-112.1881000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (78, N'Lewiston Peak', 10411, N'USA', N'UT', CAST(40.3602100000 AS Decimal(30, 10)), CAST(-112.1939300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (79, N'Humphreys  Peak', 12633, N'USA', N'AZ', CAST(35.3464000000 AS Decimal(30, 10)), CAST(-111.6778000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (80, N'West Mountain', 9070, N'USA', N'UT', CAST(40.5000000000 AS Decimal(30, 10)), CAST(-112.1760700000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (81, N'Lightening Peak', 10055, N'USA', N'UT', CAST(40.2821800000 AS Decimal(30, 10)), CAST(-111.5218600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (82, N'Mt Rainier', 14411, N'USA', N'WA', CAST(46.8528000000 AS Decimal(30, 10)), CAST(-121.7590000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (83, N'Mt Hood', 11239, N'USA', N'OR', CAST(45.3736000000 AS Decimal(30, 10)), CAST(-121.6925000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (84, N'Obelisk', 10516, N'USA', N'UT', CAST(40.5451100000 AS Decimal(30, 10)), CAST(-111.7079500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (85, N'Mount Nebo', 11928, N'USA', N'UT', CAST(39.82189 AS Decimal(30, 10)), CAST(-111.76014 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (86, N'Elephant Butte', 5653, N'USA', N'UT', CAST(38.6958000000 AS Decimal(30, 10)), CAST(-109.5401000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (87, N'Kessler Peak', 10403, N'USA', N'UT', CAST(40.6252000000 AS Decimal(30, 10)), CAST(-111.6680000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (88, N'Spanish Fork Peak', 10192, N'USA', N'UT', CAST(40.0880000000 AS Decimal(30, 10)), CAST(-111.5270000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (89, N'Peak 10009', 10009, N'USA', N'UT', CAST(40.6383200000 AS Decimal(30, 10)), CAST(-111.5774500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (90, N'Gobblers Knob', 10246, N'USA', N'UT', CAST(40.6708000000 AS Decimal(30, 10)), CAST(-111.6830000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (91, N'Mt. Massive', 14421, N'USA', N'CO', CAST(39.1872000000 AS Decimal(30, 10)), CAST(-106.4747000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (92, N'Mt. Elbert', 14433, N'USA', N'CO', CAST(39.1178000000 AS Decimal(30, 10)), CAST(-106.4447000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (93, N'Borah Peak', 12662, N'USA', N'ID', CAST(44.1372000000 AS Decimal(30, 10)), CAST(-113.7794000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (94, N'Gannett Peak', 13804, N'USA', N'WY', CAST(43.1844000000 AS Decimal(30, 10)), CAST(-109.6530000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (95, N'Angels Landing', 5785, N'USA', N'UT', CAST(37.2694000000 AS Decimal(30, 10)), CAST(-112.9486000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (96, N'North Peak', 11174, N'USA', N'UT', CAST(39.8385000000 AS Decimal(30, 10)), CAST(-111.7496000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (97, N'East Peak', 11044, N'USA', N'UT', CAST(40.2481900000 AS Decimal(30, 10)), CAST(-111.5465900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (98, N'Red Baldy', 11171, N'USA', N'UT', CAST(40.5395000000 AS Decimal(30, 10)), CAST(-111.6681000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (99, N'White Baldy', 11321, N'USA', N'UT', CAST(40.5330000000 AS Decimal(30, 10)), CAST(-111.6805000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (100, N'Grand Canyon', 8421, N'USA', N'AZ', CAST(36.1974600000 AS Decimal(30, 10)), CAST(-112.0519600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (101, N'Mt. Shasta', 14162, N'USA', N'CA', CAST(41.4094000000 AS Decimal(30, 10)), CAST(-122.1939000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (102, N'North Thunder', 11150, N'USA', N'UT', CAST(40.5435000000 AS Decimal(30, 10)), CAST(-111.7314000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (103, N'Silver Peak', 10006, N'USA', N'UT', CAST(40.6519900000 AS Decimal(30, 10)), CAST(-111.5936300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (104, N'Peak 9990', 9990, N'USA', N'UT', CAST(40.6589600000 AS Decimal(30, 10)), CAST(-111.5964600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (105, N'Bald Mountain East', 10006, N'USA', N'UT', CAST(40.3989500000 AS Decimal(30, 10)), CAST(-112.2643100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (106, N'Jupiter Hill', 9998, N'USA', N'UT', CAST(40.6134000000 AS Decimal(30, 10)), CAST(-111.5400300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (107, N'Lowe Peak', 10589, N'USA', N'UT', CAST(40.4256000000 AS Decimal(30, 10)), CAST(-112.1989000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (108, N'Peak 8753', 8753, N'USA', N'UT', CAST(40.2522800000 AS Decimal(30, 10)), CAST(-111.5854300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (109, N'Roberts Horn', 10993, N'USA', N'UT', CAST(40.3997100000 AS Decimal(30, 10)), CAST(-111.6374400000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (110, N'Big Baldy', 8756, N'USA', N'UT', CAST(40.3663000000 AS Decimal(30, 10)), CAST(-111.6551000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (111, N'Sunset Peak', 10648, N'USA', N'UT', CAST(40.5771000000 AS Decimal(30, 10)), CAST(-111.5938000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (112, N'Henrys Fork Peak', 13260, N'USA', N'UT', CAST(40.7878000000 AS Decimal(30, 10)), CAST(-110.3898000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (113, N'West Gunsight Peak', 13103, N'USA', N'UT', CAST(40.7929000000 AS Decimal(30, 10)), CAST(-110.3666000000 AS Decimal(30, 10)), N'Dome Peak')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (114, N'Gunsight Peak', 13263, N'USA', N'UT', CAST(40.8032000000 AS Decimal(30, 10)), CAST(-110.3517000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (115, N'Gilbert Peak', 13442, N'USA', N'UT', CAST(40.8235000000 AS Decimal(30, 10)), CAST(-110.3396000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (116, N'American Fork Twin Peaks', 11489, N'USA', N'UT', CAST(40.5517000000 AS Decimal(30, 10)), CAST(-111.6561000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (117, N'Red Top Mountain', 11360, N'USA', N'UT', CAST(40.5491100000 AS Decimal(30, 10)), CAST(-111.6617800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (118, N'Crowsnest Mountain', 9137, N'Canada', N'Alberta', CAST(49.6333000000 AS Decimal(30, 10)), CAST(-114.5330000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (119, N'Mount Crandell', 7812, N'Canada', N'Alberta', CAST(49.0763900000 AS Decimal(30, 10)), CAST(-113.9277800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (120, N'Turtle Mountain', 7250, N'Canada', N'Alberta', CAST(49.5750000000 AS Decimal(30, 10)), CAST(-114.4139000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (121, N'Vimy Peak', 7805, N'Canada', N'Alberta', CAST(49.0375000000 AS Decimal(30, 10)), CAST(-113.8569400000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (122, N'Bighorn', 10877, N'USA', N'UT', CAST(40.5227000000 AS Decimal(30, 10)), CAST(-111.7434000000 AS Decimal(30, 10)), N'Upper Bells')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (123, N'West Mountain 2', 6904, N'USA', N'UT', CAST(40.0552800000 AS Decimal(30, 10)), CAST(-111.8278200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (124, N'Mahogany Mountain', 9001, N'USA', N'UT', CAST(40.4098400000 AS Decimal(30, 10)), CAST(-111.7134500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (125, N'Peak 420', 10420, N'USA', N'UT', CAST(40.6000100000 AS Decimal(30, 10)), CAST(-111.5583900000 AS Decimal(30, 10)), N'Peak 10420')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (126, N'Mount Majestic', 10721, N'USA', N'UT', CAST(40.5907000000 AS Decimal(30, 10)), CAST(-111.5602000000 AS Decimal(30, 10)), N'Clayton Peak')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (127, N'Preston Peak', 10315, N'USA', N'UT', CAST(40.5820800000 AS Decimal(30, 10)), CAST(-111.5720800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (128, N'Pioneer Peak', 10447, N'USA', N'UT', CAST(40.5809000000 AS Decimal(30, 10)), CAST(-111.5894000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (129, N'Sugarloaf Peak', 11051, N'USA', N'UT', CAST(40.5660000000 AS Decimal(30, 10)), CAST(-111.6240000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (130, N'Mount Baldy', 11068, N'USA', N'UT', CAST(40.5679000000 AS Decimal(30, 10)), CAST(-111.6375000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (131, N'Shingle Mill Peak', 9089, N'USA', N'UT', CAST(40.2693400000 AS Decimal(30, 10)), CAST(-111.5402400000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (132, N'Freedom Peak', 9506, N'USA', N'UT', CAST(40.2610000000 AS Decimal(30, 10)), CAST(-111.5448000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (133, N'Buckley Mountain', 9502, N'USA', N'UT', CAST(40.2138200000 AS Decimal(30, 10)), CAST(-111.5883100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (134, N'Bear''s Hump', 5050, N'Canada', N'Alberta', CAST(49.0763890000 AS Decimal(30, 10)), CAST(-113.9277780000 AS Decimal(30, 10)), N'Prominent outcropping on Mount Crandell')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (135, N'Chief Mountain', 9080, N'USA', N'MT', CAST(48.9326000000 AS Decimal(30, 10)), CAST(-113.6100000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (136, N'Mt. Marcy', 5344, N'USA', N'NY', CAST(44.1125000000 AS Decimal(30, 10)), CAST(-73.9239000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (137, N'Crane Mountain', 3254, N'USA', N'NY', CAST(43.5502900000 AS Decimal(30, 10)), CAST(-73.9464000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (138, N'Backbone Mountain', 3360, N'USA', N'MD', CAST(39.2450200000 AS Decimal(30, 10)), CAST(-79.4855700000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (139, N'Spruce Knob', 4863, N'USA', N'WV', CAST(38.6997000000 AS Decimal(30, 10)), CAST(-79.5331000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (140, N'Seneca Rocks', 2400, N'USA', N'WV', CAST(38.8350000000 AS Decimal(30, 10)), CAST(-79.3660000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (141, N'Catherdral Rock', 8000, N'USA', N'NV', CAST(36.2577000000 AS Decimal(30, 10)), CAST(-115.6485000000 AS Decimal(30, 10)), N'Height, Lat/Long are uncertain')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (142, N'Big Schloss', 2964, N'USA', N'VA', CAST(38.9407000000 AS Decimal(30, 10)), CAST(-78.6658000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (143, N'Kennedy Peak', 2560, N'USA', N'VA', CAST(38.7420000000 AS Decimal(30, 10)), CAST(-78.4880000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (144, N'Old Rag', 3268, N'USA', N'VA', CAST(38.5517000000 AS Decimal(30, 10)), CAST(-78.3160000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (145, N'Rockytop', 3620, N'USA', N'VA', CAST(38.2897000000 AS Decimal(30, 10)), CAST(-78.7139000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (146, N'Victoria Peak', 1811, N'Hong Kong', N'HK', CAST(22.2733330000 AS Decimal(30, 10)), CAST(114.1438890000 AS Decimal(30, 10)), N'Scenic overlook at 1300 ft')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (147, N'Bearfence Mountain', 3620, N'USA', N'VA', CAST(38.4470000000 AS Decimal(30, 10)), CAST(-78.4650000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (148, N'Hawksbill', 4051, N'USA', N'VA', CAST(38.5550000000 AS Decimal(30, 10)), CAST(-78.3950000000 AS Decimal(30, 10)), N'SNP Highest')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (149, N'Sugarloaf Mountain', 1282, N'USA', N'MD', CAST(39.2626000000 AS Decimal(30, 10)), CAST(-77.3936000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (150, N'Maryland Heights', 1299, N'USA', N'MD', CAST(39.3200000000 AS Decimal(30, 10)), CAST(-77.7300000000 AS Decimal(30, 10)), N'Height, Lat/Long are uncertain')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (151, N'Robertson Mountain', 3296, N'USA', N'VA', CAST(38.5699000000 AS Decimal(30, 10)), CAST(-78.3429000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (152, N'Looking Glass Rock', 3969, N'USA', N'NC', CAST(35.3040000000 AS Decimal(30, 10)), CAST(-82.7940000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (153, N'Grandfather Mountain', 5964, N'USA', N'NC', CAST(36.1009900000 AS Decimal(30, 10)), CAST(-81.8242400000 AS Decimal(30, 10)), N'Tanawha')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (154, N'Chimney Rock', 2280, N'USA', N'NC', CAST(35.4407060000 AS Decimal(30, 10)), CAST(-82.2526420000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (155, N'Mt. Mitchell', 6684, N'USA', N'NC', CAST(35.7647000000 AS Decimal(30, 10)), CAST(-82.2653000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (156, N'Mary''s Rock', 3514, N'USA', N'VA', CAST(38.6497000000 AS Decimal(30, 10)), CAST(-78.3175000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (157, N'Signal Knob', 2500, N'USA', N'VA', CAST(38.9611700000 AS Decimal(30, 10)), CAST(-78.3315000000 AS Decimal(30, 10)), N'Scenic overlook, Elev. Estimated')
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (158, N'Maisan', 2208, N'S. Korea', N'Chollabuk-do', CAST(35.7617900000 AS Decimal(30, 10)), CAST(127.3876900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (159, N'Chirisan', 6282, N'S. Korea', N'S. Kyongsang', CAST(35.3313700000 AS Decimal(30, 10)), CAST(127.6199300000 AS Decimal(30, 10)), NULL)
GO


INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (160, N'Trail Rider Peak', 13247, N'USA', N'Utah', CAST(40.74220 AS Decimal(30, 10)), CAST(-110.35276 AS Decimal(30, 10)), NULL)
GO

INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (161, N'Roberts Peak', 13287, N'USA', N'Utah', CAST(40.7356 AS Decimal(30, 10)), CAST(-110.3392 AS Decimal(30, 10)), NULL)
GO





INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (162, N'Pinnacle Peak', 13068  , N'USA', N'Utah', CAST(40.72260 AS Decimal(30, 10)), CAST(-110.3181 AS Decimal(30, 10)), NULL)
GO



INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (163, N'S. Emmons Peak', 13170 , N'USA', N'Utah', CAST(40.704 AS Decimal(30, 10)), CAST(-110.311 AS Decimal(30, 10)), NULL)
GO


INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (164, N'Emmons Peak', 13440, N'USA', N'Utah', CAST(40.7117 AS Decimal(30, 10)), CAST(-110.3037 AS Decimal(30, 10)), NULL)
GO








SET IDENTITY_INSERT [dbo].[Mountains] OFF
GO
SET IDENTITY_INSERT [dbo].[MountainSummitLog] ON 

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (1, 1, CAST(N'1995-09-16' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (2, 1, CAST(N'2005-09-03' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (3, 1, CAST(N'2007-08-04' AS Date), N'Timponooke Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (4, 1, CAST(N'2008-08-09' AS Date), N'Snowfield')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (5, 1, CAST(N'2009-10-24' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (6, 1, CAST(N'2010-04-17' AS Date), N'Everest Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (7, 1, CAST(N'2011-06-25' AS Date), N'Primrose Cirque')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (8, 1, CAST(N'2012-10-26' AS Date), N'As part of full traverse')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (9, 1, CAST(N'2015-07-07' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (10, 2, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (11, 3, CAST(N'2015-05-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (12, 4, CAST(N'2015-05-30' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (13, 5, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (14, 6, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (15, 7, CAST(N'2015-08-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (16, 8, CAST(N'2015-08-04' AS Date), N'West Slopes')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (17, 9, CAST(N'2006-06-17' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (18, 9, CAST(N'2006-11-25' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (19, 9, CAST(N'2007-12-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (20, 9, CAST(N'2008-09-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (21, 9, CAST(N'2008-12-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (22, 9, CAST(N'2009-05-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (23, 9, CAST(N'2009-10-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (24, 9, CAST(N'2010-01-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (25, 9, CAST(N'2010-02-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (26, 9, CAST(N'2010-11-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (27, 9, CAST(N'2011-06-05' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (28, 9, CAST(N'2011-08-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (29, 9, CAST(N'2012-02-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (30, 9, CAST(N'2012-11-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (31, 9, CAST(N'2013-02-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (32, 9, CAST(N'2013-10-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (33, 9, CAST(N'2014-03-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (34, 9, CAST(N'2014-12-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (35, 9, CAST(N'2015-04-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (36, 9, CAST(N'2015-07-05' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (37, 10, CAST(N'2015-05-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (38, 11, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (39, 11, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (40, 12, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (41, 12, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (42, 12, CAST(N'2009-04-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (43, 13, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (44, 13, CAST(N'2009-04-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (45, 13, CAST(N'2012-12-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (46, 13, CAST(N'2013-03-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (47, 13, CAST(N'2013-03-23' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (48, 13, CAST(N'2013-04-20' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (49, 13, CAST(N'2015-03-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (50, 13, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (51, 14, CAST(N'2014-10-07' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (52, 15, CAST(N'2014-10-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (53, 16, CAST(N'2014-10-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (54, 17, CAST(N'2008-05-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (55, 17, CAST(N'2011-12-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (56, 17, CAST(N'2014-09-15' AS Date), N'Joe B''s 500th')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (57, 17, CAST(N'2012-06-16' AS Date), N'West Slabs ')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (58, 17, CAST(N'2013-05-27' AS Date), N'Geurts Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (59, 18, CAST(N'2014-06-07' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (60, 19, CAST(N'2008-05-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (61, 19, CAST(N'2012-08-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (62, 19, CAST(N'2014-05-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (63, 20, CAST(N'2014-04-05' AS Date), N'Within 150 feet of top, electric storm')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (64, 20, CAST(N'2014-05-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (65, 20, CAST(N'2012-08-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (66, 20, CAST(N'2009-02-21' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (67, 20, CAST(N'2008-05-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (68, 21, CAST(N'2007-10-06' AS Date), N'West Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (69, 21, CAST(N'2008-05-24' AS Date), N'West and East Peaks')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (70, 21, CAST(N'2013-11-11' AS Date), N'East Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (71, 21, CAST(N'2014-04-19' AS Date), N'East Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (72, 22, CAST(N'2014-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (73, 23, CAST(N'2013-11-30' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (74, 24, CAST(N'2013-11-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (75, 25, CAST(N'2013-11-11' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (76, 25, CAST(N'2011-01-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (77, 25, CAST(N'2007-10-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (78, 26, CAST(N'2013-11-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (79, 27, CAST(N'2013-11-01' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (80, 28, CAST(N'2013-09-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (81, 29, CAST(N'2013-09-06' AS Date), N'11th Hour Route')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (82, 29, CAST(N'2012-06-08' AS Date), N'North Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (83, 29, CAST(N'2010-05-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (84, 30, CAST(N'2006-09-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (85, 30, CAST(N'2013-08-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (86, 30, CAST(N'2011-09-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (87, 30, CAST(N'2008-07-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (88, 31, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (89, 32, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (90, 33, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (91, 34, CAST(N'2013-06-21' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (92, 35, CAST(N'2013-06-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (93, 36, CAST(N'2013-06-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (94, 37, CAST(N'2013-06-01' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (95, 37, CAST(N'2006-07-22' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (96, 38, CAST(N'2013-04-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (97, 39, CAST(N'2013-04-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (98, 40, CAST(N'2013-03-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (99, 1, CAST(N'2015-09-25' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (100, 41, CAST(N'2013-02-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (101, 42, CAST(N'2008-05-31' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (102, 42, CAST(N'2009-05-09' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (103, 42, CAST(N'2012-04-21' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (104, 42, CAST(N'2012-10-26' AS Date), N'As part of full traverse')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (105, 42, CAST(N'2011-05-16' AS Date), N'Grunge Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (106, 42, CAST(N'2010-06-15' AS Date), N'Grunge Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (107, 43, CAST(N'2012-10-26' AS Date), N'As part of full traverse')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (108, 43, CAST(N'2008-10-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (109, 44, CAST(N'2008-08-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (110, 44, CAST(N'2010-07-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (111, 44, CAST(N'2012-10-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (112, 45, CAST(N'2012-04-15' AS Date), N'From Rock Canyon')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (113, 45, CAST(N'2012-10-21' AS Date), N'From Squaw Peak Road')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (114, 46, CAST(N'2012-09-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (115, 46, CAST(N'2009-06-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (116, 46, CAST(N'2008-08-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (117, 46, CAST(N'2006-09-30' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (118, 47, CAST(N'2012-09-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (119, 48, CAST(N'2012-09-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (120, 49, CAST(N'2012-09-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (121, 50, CAST(N'2012-09-01' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (122, 51, CAST(N'2012-08-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (123, 52, CAST(N'2008-03-22' AS Date), N'East Castle')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (124, 52, CAST(N'2008-04-05' AS Date), N'East Castle')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (125, 52, CAST(N'2012-08-11' AS Date), N'Portable Darkness route')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (126, 53, CAST(N'2012-07-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (127, 54, CAST(N'2012-07-21' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (128, 55, CAST(N'2012-07-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (129, 56, CAST(N'2007-08-23' AS Date), N'Schoolhouse Springs')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (130, 56, CAST(N'2010-03-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (131, 56, CAST(N'2011-05-05' AS Date), N'NE Coulior')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (132, 56, CAST(N'2012-06-29' AS Date), N'Open Book route')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (133, 57, CAST(N'2012-06-23' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (134, 58, CAST(N'2008-06-14' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (135, 58, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (136, 59, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (137, 59, CAST(N'2009-07-31' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (138, 60, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (139, 61, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (140, 61, CAST(N'2010-06-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (141, 61, CAST(N'2009-07-31' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (142, 61, CAST(N'2007-09-15' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (143, 62, CAST(N'2012-05-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (144, 62, CAST(N'2010-03-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (145, 62, CAST(N'2008-06-21' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (146, 63, CAST(N'2012-04-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (147, 64, CAST(N'2012-04-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (148, 64, CAST(N'2006-07-29' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (149, 65, CAST(N'2012-03-17' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (150, 65, CAST(N'2012-03-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (151, 66, CAST(N'2011-09-23' AS Date), N'East Buttress')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (152, 67, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (153, 68, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (154, 69, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (155, 70, CAST(N'2011-07-15' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (156, 71, CAST(N'2011-07-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (157, 71, CAST(N'2011-01-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (158, 71, CAST(N'2008-06-11' AS Date), N'Upper Pole Coulior')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (159, 71, CAST(N'2007-07-14' AS Date), N'South Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (160, 72, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (161, 72, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (162, 72, CAST(N'2008-09-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (163, 73, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (164, 73, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (165, 74, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (166, 74, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (167, 74, CAST(N'2008-05-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (168, 75, CAST(N'2011-03-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (169, 76, CAST(N'2009-01-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (170, 76, CAST(N'2011-02-12' AS Date), N'Sub peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (171, 77, CAST(N'2011-02-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (172, 78, CAST(N'2011-02-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (173, 79, CAST(N'2010-11-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (174, 80, CAST(N'2007-07-07' AS Date), N'Drove up')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (175, 80, CAST(N'2010-08-17' AS Date), N'Drove up')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (176, 81, CAST(N'2010-08-13' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (177, 82, CAST(N'2010-07-17' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (178, 83, CAST(N'2010-07-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (179, 84, CAST(N'2010-06-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (180, 85, CAST(N'2010-05-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (181, 85, CAST(N'2008-11-01' AS Date), N'Traversed all 3 peaks')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (182, 85, CAST(N'2007-09-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (183, 85, CAST(N'2005-10-15' AS Date), N'South Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (184, 86, CAST(N'2010-04-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (185, 87, CAST(N'2010-03-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (186, 88, CAST(N'2010-03-06' AS Date), N'Crowd Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (187, 88, CAST(N'2009-11-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (188, 88, CAST(N'2006-08-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (189, 89, CAST(N'2010-01-23' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (190, 90, CAST(N'2010-01-16' AS Date), N'Peak 10224')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (191, 90, CAST(N'2009-11-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (192, 91, CAST(N'2009-09-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (193, 92, CAST(N'2009-09-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (194, 93, CAST(N'2009-09-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (195, 94, CAST(N'2009-08-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (196, 95, CAST(N'2009-07-24' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (197, 96, CAST(N'2009-06-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (198, 97, CAST(N'2009-06-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (199, 98, CAST(N'2008-12-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (200, 98, CAST(N'2009-06-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (201, 99, CAST(N'2009-06-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (202, 100, CAST(N'2009-06-01' AS Date), N'R2R2R')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (203, 101, CAST(N'2009-05-23' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (204, 102, CAST(N'2009-05-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (205, 103, CAST(N'2009-04-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (206, 103, CAST(N'2008-02-02' AS Date), N'?')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (207, 104, CAST(N'2009-04-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (208, 104, CAST(N'2008-02-02' AS Date), N'?')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (209, 105, CAST(N'2009-03-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (210, 106, CAST(N'2009-02-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (211, 107, CAST(N'2009-02-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (212, 108, CAST(N'2009-01-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (213, 109, CAST(N'2008-08-09' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (214, 110, CAST(N'2008-05-26' AS Date), N'South Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (215, 110, CAST(N'2008-08-05' AS Date), N'traversed "both" peaks')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (216, 111, CAST(N'2008-08-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (217, 111, CAST(N'2008-04-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (218, 112, CAST(N'2008-07-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (219, 113, CAST(N'2008-07-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (220, 114, CAST(N'2008-07-25' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (221, 115, CAST(N'2008-07-25' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (222, 116, CAST(N'2008-07-18' AS Date), N'Both the west and the east')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (223, 117, CAST(N'2008-07-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (224, 118, CAST(N'2008-07-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (225, 119, CAST(N'2008-07-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (226, 120, CAST(N'2008-07-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (227, 121, CAST(N'2008-07-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (228, 122, CAST(N'2008-06-14' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (229, 123, CAST(N'2008-06-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (230, 124, CAST(N'2008-05-17' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (231, 125, CAST(N'2008-05-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (232, 126, CAST(N'2008-05-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (233, 127, CAST(N'2008-05-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (234, 128, CAST(N'2008-05-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (235, 129, CAST(N'2008-04-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (236, 130, CAST(N'2007-04-07' AS Date), N'skied "main" chute')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (237, 130, CAST(N'2008-04-12' AS Date), N'skied "shoulder"')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (238, 130, CAST(N'2008-04-18' AS Date), N'skied "little" chute')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (239, 131, CAST(N'2007-11-09' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (240, 132, CAST(N'2007-11-09' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (241, 133, CAST(N'2007-10-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (242, 134, CAST(N'2000-01-01' AS Date), N'Climbed numerous times.')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (243, 135, CAST(N'2005-08-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (244, 135, CAST(N'1978-06-15' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (245, 135, CAST(N'1979-06-15' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (246, 136, CAST(N'2005-07-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (247, 137, CAST(N'2005-07-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (248, 138, CAST(N'2005-05-29' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (249, 139, CAST(N'2001-09-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (250, 139, CAST(N'2005-05-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (251, 140, CAST(N'2005-05-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (252, 140, CAST(N'2001-09-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (253, 141, CAST(N'2005-05-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (254, 142, CAST(N'2004-11-06' AS Date), N'from the South side')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (255, 142, CAST(N'1998-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (256, 142, CAST(N'1999-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (257, 142, CAST(N'2000-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (258, 142, CAST(N'2001-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (259, 142, CAST(N'2002-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (260, 143, CAST(N'2001-10-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (261, 143, CAST(N'2002-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (262, 143, CAST(N'2003-06-20' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (263, 143, CAST(N'2004-10-09' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (264, 144, CAST(N'1998-05-15' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (265, 144, CAST(N'2004-09-25' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (266, 144, CAST(N'2003-09-25' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (267, 144, CAST(N'2002-09-25' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (268, 144, CAST(N'2001-09-25' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (269, 144, CAST(N'2000-09-25' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (270, 145, CAST(N'2004-05-29' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (271, 146, CAST(N'2004-02-18' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (272, 147, CAST(N'2003-11-01' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (273, 148, CAST(N'2003-10-01' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (274, 149, CAST(N'2003-10-01' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (275, 150, CAST(N'2003-06-15' AS Date), N'Date is uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (276, 150, CAST(N'2002-11-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (277, 151, CAST(N'2002-11-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (278, 152, CAST(N'2002-07-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (279, 151, CAST(N'2001-07-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (280, 151, CAST(N'2001-11-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (281, 153, CAST(N'2002-07-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (282, 153, CAST(N'2001-05-18' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (283, 154, CAST(N'2002-07-03' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (284, 155, CAST(N'2001-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (285, 156, CAST(N'2000-04-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (286, 156, CAST(N'1999-04-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (287, 156, CAST(N'1998-04-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (288, 157, CAST(N'1999-08-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (289, 158, CAST(N'1996-07-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (290, 159, CAST(N'1996-03-01' AS Date), N'Date uncertain')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (291, 9, CAST(N'2015-10-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (292, 21, CAST(N'2015-11-01' AS Date), N'West and East Peaks')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (293, 25, CAST(N'2015-11-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (294, 9, CAST(N'2015-12-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (295, 13, CAST(N'2015-12-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (296, 9, CAST(N'2016-01-30' AS Date), N'')
GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (297, 25, CAST(N'2016-02-27' AS Date), N'')
GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (298, 90, CAST(N'2016-03-05' AS Date), N'Peak 10224')
GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (299, 21, CAST(N'2016-04-03' AS Date), N'West Peak')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (300, 45, CAST(N'2016-05-22' AS Date), N'From Rock Canyon')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (301, 45, CAST(N'2016-06-04' AS Date), N'From Squaw Peak Road')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (302, 37, CAST(N'2016-06-11' AS Date), N'West Couloir - not summit')
GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (303, 56, CAST(N'2016-07-02' AS Date), N'Schoolhouse Springs')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (304, 116, CAST(N'2016-07-09' AS Date), N'Both the west and the east')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (305, 160, CAST(N'2016-08-15' AS Date), N'')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (306, 161, CAST(N'2016-08-15' AS Date), N'')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (307, 162, CAST(N'2016-08-15' AS Date), N'')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (308, 163, CAST(N'2016-08-15' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (309, 164, CAST(N'2016-08-15' AS Date), N'')

GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (310, 52, CAST(N'2016-08-27' AS Date), N'Portable Darkness route')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (311, 85, CAST(N'2016-09-09' AS Date), N'')


SET IDENTITY_INSERT [dbo].[MountainSummitLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (1, N'Green River', N'https://picasaweb.google.com/107082436175597733376/GreenRiver?authkey=Gv1sRgCPiPidiusezFNA&feat=directlink', CAST(N'2015-08-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (2, N'Hawkins Horseshoe', N'https://picasaweb.google.com/107082436175597733376/HawkinsHorseshoe?authuser=0&authkey=Gv1sRgCKWak93H3Yqp9gE&feat=directlink', CAST(N'2015-08-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (3, N'Bertha Peak', N'https://picasaweb.google.com/107082436175597733376/BerthaPeak?authuser=0&authkey=Gv1sRgCI-Bj9775JDSDw&feat=directlink', CAST(N'2015-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (4, N'Alberta', N'https://picasaweb.google.com/107082436175597733376/AlbertaSummer2015?authuser=0&authkey=Gv1sRgCNfBhPGm4NyqtAE&feat=directlink', CAST(N'2015-08-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (5, N'NE, SD, ND', N'https://picasaweb.google.com/107082436175597733376/NESDNDRoadTripMay2015?authuser=0&authkey=Gv1sRgCNnVwre_-ves2AE&feat=directlink', CAST(N'2015-05-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (6, N'Englestead', N'https://picasaweb.google.com/107082436175597733376/EnglesteadCanyon?authuser=0&authkey=Gv1sRgCMeyodCygbbRCA&feat=directlink', CAST(N'2014-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (7, N'Denali', N'https://picasaweb.google.com/107082436175597733376/DenaliShortVersion?authuser=0&authkey=Gv1sRgCIHKvfjbh7-zowE&feat=directlink', CAST(N'2014-06-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (8, N'Coyote Gulch', N'https://picasaweb.google.com/107082436175597733376/CoyoteGulch?authuser=0&authkey=Gv1sRgCJ-a7LTvlPytiQE&feat=directlink', CAST(N'2014-05-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (9, N'Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RockCanyonInFebruary?authuser=0&authkey=Gv1sRgCKaHrq_fuJChhQE&feat=directlink', CAST(N'2014-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (10, N'Ouray', N'https://picasaweb.google.com/107082436175597733376/OurayCO?authuser=0&authkey=Gv1sRgCJqEmquxlKakcw&feat=directlink', CAST(N'2014-01-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (11, N'AF Canyon', N'https://picasaweb.google.com/107082436175597733376/AFCanyon?authuser=0&authkey=Gv1sRgCM2Y7ZjJjZXW6QE&feat=directlink', CAST(N'2014-01-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (12, N'Millers Thriller', N'https://picasaweb.google.com/107082436175597733376/MillersThriller?authuser=0&authkey=Gv1sRgCNnetqeYl67MFA&feat=directlink', CAST(N'2014-01-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (13, N'Mexico City', N'https://picasaweb.google.com/107082436175597733376/MexicoCity?authuser=0&authkey=Gv1sRgCPvnsvKJs6fTHQ&feat=directlink', CAST(N'2013-12-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (14, N'Denali NP', N'https://picasaweb.google.com/107082436175597733376/DenaliNP?authuser=0&authkey=Gv1sRgCMfYm8akyJK7_AE&feat=directlink', CAST(N'2014-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (15, N'Reception', N'https://picasaweb.google.com/107082436175597733376/Reception?authuser=0&authkey=Gv1sRgCP_yq62IlPCZhgE&feat=directlink', CAST(N'2014-01-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (16, N'Wedding', N'https://picasaweb.google.com/107082436175597733376/Wedding?authuser=0&authkey=Gv1sRgCNub-Mbr1MG82QE&feat=directlink', CAST(N'2013-12-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (17, N'Teotihuacan', N'https://picasaweb.google.com/107082436175597733376/Teotihuacan?authuser=0&authkey=Gv1sRgCK7vmaXC_snuXg&feat=directlink', CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (18, N'Iztaccihuatl', N'https://picasaweb.google.com/107082436175597733376/Iztaccihuatl?authuser=0&authkey=Gv1sRgCIWa6Lut3pSlfg&feat=directlink', CAST(N'2013-11-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (19, N'Orizaba', N'https://picasaweb.google.com/107082436175597733376/Orizaba?authuser=0&authkey=Gv1sRgCOCIwJuUjtWUkAE&feat=directlink', CAST(N'2013-11-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (20, N'Levons Wedding', N'https://picasaweb.google.com/107082436175597733376/LevonsWedding?authuser=0&authkey=Gv1sRgCPyHlY_k3OOJ5AE&feat=directlink', CAST(N'2015-08-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (21, N'The Finger', N'https://picasaweb.google.com/107082436175597733376/FingerRockCanyon?authuser=0&authkey=Gv1sRgCJaxyoTGkc3JAQ&feat=directlink', CAST(N'2015-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (22, N'Fifth Water Hot Springs', N'https://picasaweb.google.com/107082436175597733376/FifthWaterHotSprings?authuser=0&authkey=Gv1sRgCKj036SP5LeTaw&feat=directlink', CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (23, N'Squash Head', N'https://picasaweb.google.com/107082436175597733376/SquashHeadSantaquinnCanyon?authuser=0&authkey=Gv1sRgCMKZmtzRre705QE&feat=directlink', CAST(N'2014-01-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (24, N'Katelyn and Jon', N'https://picasaweb.google.com/107082436175597733376/KatelynAndJonSWedding?authuser=0&authkey=Gv1sRgCKGG2fjz_eaQ2wE&feat=directlink', CAST(N'2014-03-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (25, N'The G', N'https://picasaweb.google.com/107082436175597733376/GHike?authuser=0&authkey=Gv1sRgCKCk3_DQlvG_Wg&feat=directlink', CAST(N'2014-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (26, N'Hockey', N'https://picasaweb.google.com/107082436175597733376/ProvoDivCHockeyNinjaTurtles?authuser=0&authkey=Gv1sRgCOaXm_X1osHNiAE&feat=directlink', CAST(N'2014-03-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (27, N'Cassidy Arch', N'https://picasaweb.google.com/107082436175597733376/CassidyArch?authuser=0&authkey=Gv1sRgCLWdpfjers6DvgE&feat=directlink', CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (28, N'Maple Canyon', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon03?authuser=0&authkey=Gv1sRgCLWctqX0g5X75gE&feat=directlink', CAST(N'2014-09-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (29, N'Fire', N'https://picasaweb.google.com/107082436175597733376/Fire?authuser=0&authkey=Gv1sRgCN-i8cet9fm9cQ&feat=directlink', CAST(N'2014-04-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (30, N'Boundardy/Montgomery', N'https://picasaweb.google.com/107082436175597733376/BoundardyPeakAndMontgomeryPeak?authuser=0&authkey=Gv1sRgCISby87j56XqcA&feat=directlink', CAST(N'2014-10-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (31, N'Tuolumne', N'https://picasaweb.google.com/107082436175597733376/Tuolumne?authuser=0&authkey=Gv1sRgCIKNxPnc5c33nwE&feat=directlink', CAST(N'2014-10-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (32, N'Yosemite', N'https://picasaweb.google.com/107082436175597733376/Yosemite?authuser=0&authkey=Gv1sRgCN26pqDe1pPNYA&feat=directlink', CAST(N'2014-10-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (33, N'Timp', N'https://picasaweb.google.com/107082436175597733376/TimpWithKLAS?authuser=0&authkey=Gv1sRgCIGamdOdlOyBYw&feat=directlink', CAST(N'2015-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (34, N'Duplex Rebuild', N'https://picasaweb.google.com/107082436175597733376/DuplexRebuild?authuser=0&authkey=Gv1sRgCJrYlPXutujz4AE&feat=directlink', CAST(N'2014-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (35, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleNov192013?authuser=0&authkey=Gv1sRgCI7V75Xy2u-ArQE&feat=directlink', CAST(N'2013-11-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (36, N'Zion Canyon', N'https://picasaweb.google.com/107082436175597733376/ZionCanyon?authuser=0&authkey=Gv1sRgCKHl29P5npnnpAE&feat=directlink', CAST(N'2013-11-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (37, N'Red Rock and Prophecy', N'https://picasaweb.google.com/107082436175597733376/RedRockAndProphecy?authuser=0&authkey=Gv1sRgCLPY7tWtzenw4QE&feat=directlink', CAST(N'2013-10-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (38, N'Kamps Ridge', N'https://picasaweb.google.com/107082436175597733376/KampsRidge?authuser=0&authkey=Gv1sRgCLSy7pvzjf3FTQ&feat=directlink', CAST(N'2013-10-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (39, N'Indian Creek', N'https://picasaweb.google.com/107082436175597733376/IndianCreek?authuser=0&authkey=Gv1sRgCJv4m9mYuYCCSA&feat=directlink', CAST(N'2013-10-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (40, N'Red Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RedRockCanyon?authuser=0&authkey=Gv1sRgCMn_p__p3K7gwQE&feat=directlink', CAST(N'2013-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (41, N'City of Rocks', N'https://picasaweb.google.com/107082436175597733376/CityOfRocks?authuser=0&authkey=Gv1sRgCOadrbnshcODVw&feat=directlink', CAST(N'2013-09-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (42, N'Cirque of the Towers', N'https://picasaweb.google.com/107082436175597733376/CirqueOfTheTowers?authuser=0&authkey=Gv1sRgCK7XnZ7m8-aqtQE&feat=directlink', CAST(N'2013-09-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (43, N'Kings Peak', N'https://picasaweb.google.com/107082436175597733376/KingsPeak?authuser=0&authkey=Gv1sRgCPiBmLqH2JnsiwE&feat=directlink', CAST(N'2013-08-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (44, N'Subway', N'https://picasaweb.google.com/107082436175597733376/TheSubway?authuser=0&authkey=Gv1sRgCLXEqbDlms7NVA&feat=directlink', CAST(N'2013-07-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (45, N'Maple', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon02?authuser=0&authkey=Gv1sRgCJCYoq3pk8nr3wE&feat=directlink', CAST(N'2013-07-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (46, N'Great Basin', N'https://picasaweb.google.com/107082436175597733376/GreatBasinNationalPark?authuser=0&authkey=Gv1sRgCLO4irWX2uP8SQ&feat=directlink', CAST(N'2013-06-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (47, N'Teewinot', N'https://picasaweb.google.com/107082436175597733376/Teewinot?authuser=0&authkey=Gv1sRgCOzDvauAyMyQSQ&feat=directlink', CAST(N'2013-06-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (48, N'Guadalupe Peak', N'https://picasaweb.google.com/107082436175597733376/GuadalupePeak?authuser=0&authkey=Gv1sRgCOiUkryTksPXRQ&feat=directlink', CAST(N'2013-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (49, N'Deseret Peak', N'https://picasaweb.google.com/107082436175597733376/DeseretPeakSpringSkiing?authuser=0&authkey=Gv1sRgCMmjwqq35_H90AE&feat=directlink', CAST(N'2013-06-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (50, N'Geurts Ridge', N'https://picasaweb.google.com/107082436175597733376/GeurtsRidge?authuser=0&authkey=Gv1sRgCLqJ4PWXor-mJg&feat=directlink', CAST(N'2013-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (51, N'Shed', N'https://picasaweb.google.com/107082436175597733376/ShedProjectSpring2013?authuser=0&authkey=Gv1sRgCJ_tmcLO75OXaA&feat=directlink', CAST(N'2013-05-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (52, N'Moab', N'https://picasaweb.google.com/107082436175597733376/MoabMtnBiking?authuser=0&authkey=Gv1sRgCL2O69vW6fW3hAE&feat=directlink', CAST(N'2013-05-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (53, N'Wheeler, NM', N'https://picasaweb.google.com/107082436175597733376/WheelerPeakNM?authuser=0&authkey=Gv1sRgCM781Y6ow7n0tQE&feat=directlink', CAST(N'2013-04-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (54, N'Ice', N'https://picasaweb.google.com/107082436175597733376/IceClimbing?authuser=0&authkey=Gv1sRgCIDb8tC3xOCEvAE&feat=directlink', CAST(N'2013-02-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (55, N'GWI', N'https://picasaweb.google.com/107082436175597733376/GWI?authuser=0&authkey=Gv1sRgCLzbuerw-Z7fgQE&feat=directlink', CAST(N'2013-02-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (56, N'Henry''s Fork', N'https://picasaweb.google.com/107082436175597733376/HenrySForkSkiTourCamping?authuser=0&authkey=Gv1sRgCLn81YL8qpOrowE&feat=directlink', CAST(N'2013-02-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (57, N'Lake Mountain', N'https://picasaweb.google.com/107082436175597733376/LakeMountain?authkey=Gv1sRgCPjmhfDatOON4QE', CAST(N'2013-02-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (58, N'Ouray', N'https://picasaweb.google.com/107082436175597733376/OurayIceParkUncompahgreGorge?authuser=0&authkey=Gv1sRgCL6f7MOBw4yRYQ&feat=directlink', CAST(N'2013-01-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (59, N'Maple Ice', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon?authuser=0&authkey=Gv1sRgCInU5NrRhbfEogE&feat=directlink', CAST(N'2013-01-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (60, N'Henrys Fork', N'https://picasaweb.google.com/116738453430397687681/HenrysFork?authuser=0&authkey=Gv1sRgCIOR2P7KpvaAJg&feat=directlink', CAST(N'2012-01-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (61, N'Alpine Loop', N'https://picasaweb.google.com/116738453430397687681/AlpineLoop?authuser=0&authkey=Gv1sRgCJHEhvK9kNOcLA&feat=directlink', CAST(N'2012-02-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (62, N'Powder Parks', N'https://picasaweb.google.com/116738453430397687681/PowderParks?authuser=0&authkey=Gv1sRgCPmN8fne9N750gE&feat=directlink', CAST(N'2012-03-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (63, N'Reynolds Peak', N'https://picasaweb.google.com/116738453430397687681/ReynoldsPeakOnSkis?authuser=0&authkey=Gv1sRgCNbhutbX7IeIoAE&feat=directlink', CAST(N'2012-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (64, N'Reynolds Peak', N'https://picasaweb.google.com/116738453430397687681/ReynoldsPeakOnSnowshoes?authuser=0&authkey=Gv1sRgCOOX4obur9fIOA&feat=directlink', CAST(N'2012-03-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (65, N'Dollar Lake', N'https://picasaweb.google.com/116738453430397687681/DollarLake?authuser=0&authkey=Gv1sRgCNLy16SvrNnz_gE&feat=directlink', CAST(N'2012-03-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (66, N'Santaquin/Loafer', N'https://picasaweb.google.com/116738453430397687681/SantaquinLoafer?authuser=0&authkey=Gv1sRgCK38wtHR4r7G6wE&feat=directlink', CAST(N'2012-04-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (67, N'Family', N'https://picasaweb.google.com/116738453430397687681/Family?authuser=0&authkey=Gv1sRgCMnt_6ndiNGtCw&feat=directlink', CAST(N'2012-04-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (68, N'Cold Fusion', N'https://picasaweb.google.com/116738453430397687681/ColdFusionCouliorNTimp?authuser=0&authkey=Gv1sRgCKq5tqzJ4c78QA&feat=directlink', CAST(N'2012-04-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (69, N'Sleigh Runner', N'https://picasaweb.google.com/116738453430397687681/BoxElderViaTheSleighRunnerMay52012?authuser=0&authkey=Gv1sRgCKuoirm45byDkQE&feat=directlink', CAST(N'2012-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (70, N'Beat Out', N'https://picasaweb.google.com/116738453430397687681/BeatOut?authuser=0&authkey=Gv1sRgCMyz2dPzxo-uiwE&feat=directlink', CAST(N'2012-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (71, N'11th Hour', N'https://picasaweb.google.com/116738453430397687681/Sundial11thHourJune82012?authuser=0&authkey=Gv1sRgCKf4kYGz_9yEIA&feat=directlink', CAST(N'2012-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (72, N'West Slabs', N'https://picasaweb.google.com/116738453430397687681/WestSlabsMountOlympus?authuser=0&authkey=Gv1sRgCMaq0-_W8rXqxAE&feat=directlink', CAST(N'2012-06-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (73, N'Ibapah', N'https://picasaweb.google.com/116738453430397687681/IbapahJune232012?authuser=0&authkey=Gv1sRgCNbNooH_5dqLSQ&feat=directlink', CAST(N'2012-06-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (74, N'Lone Peak Cirque', N'https://picasaweb.google.com/116738453430397687681/LonePeakCirque?authuser=0&authkey=Gv1sRgCP3Qo978r6K_Kw&feat=directlink', CAST(N'2012-06-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (75, N'London Spire', N'https://picasaweb.google.com/116738453430397687681/LondonSpire?authuser=0&authkey=Gv1sRgCOiYku3f0MrNBg&feat=directlink', CAST(N'2012-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (76, N'Trilogy Buttress', N'https://picasaweb.google.com/107082436175597733376/TrilogyButtressRockCanyon?authuser=0&authkey=Gv1sRgCIOM6JzalovFkAE&feat=directlink', CAST(N'2012-07-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (77, N'The Grand', N'https://picasaweb.google.com/107082436175597733376/TheGrandTeton?authuser=0&authkey=Gv1sRgCMfT2onZmejVxgE&feat=directlink', CAST(N'2012-07-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (78, N'Mt Ogden', N'https://picasaweb.google.com/107082436175597733376/MtOgdenEastFace?authuser=0&authkey=Gv1sRgCPizlbvMp531-QE&feat=directlink', CAST(N'2012-07-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (79, N'SE Ridge', N'https://picasaweb.google.com/107082436175597733376/MtSuperiorSERidge?authuser=0&authkey=Gv1sRgCO_x6-Lj7Y-K_AE&feat=directlink', CAST(N'2012-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (80, N'Portable Darkness', N'https://picasaweb.google.com/107082436175597733376/DevilsCastle?authuser=0&authkey=Gv1sRgCOPhv9OFidarxAE&feat=directlink', CAST(N'2012-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (81, N'Granite Peak', N'https://picasaweb.google.com/107082436175597733376/GranitePeak?authuser=0&authkey=Gv1sRgCL-Vg4Wh89OpAQ&feat=directlink', CAST(N'2012-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (82, N'Notch Peak', N'https://picasaweb.google.com/107082436175597733376/NotchPeak?authuser=0&authkey=Gv1sRgCKyFwYmXhoaddQ&feat=directlink', CAST(N'2012-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (83, N'Crystal Peak', N'https://picasaweb.google.com/107082436175597733376/CrystalPeak?authuser=0&authkey=Gv1sRgCJaopLmL7_mSag&feat=directlink', CAST(N'2012-09-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (84, N'Ben Lomond', N'https://picasaweb.google.com/107082436175597733376/WillardPeakAndBenLomond?authuser=0&authkey=Gv1sRgCJ3m5vS3hKSa1AE&feat=directlink', CAST(N'2012-09-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (85, N'Ball Joints', N'https://picasaweb.google.com/107082436175597733376/BallJoints?authuser=0&authkey=Gv1sRgCJ3JgOWIk435IA&feat=directlink', CAST(N'2012-09-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (86, N'Provo Peak', N'https://picasaweb.google.com/107082436175597733376/ProvoPeak?authuser=0&authkey=Gv1sRgCLu3y9KmwO-q4gE&feat=directlink', CAST(N'2012-09-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (87, N'Scheels', N'https://picasaweb.google.com/107082436175597733376/Scheels?authuser=0&authkey=Gv1sRgCL2p1Iy5sOKcpgE&feat=directlink', CAST(N'2012-10-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (88, N'Timp Traverse', N'https://picasaweb.google.com/107082436175597733376/TimpTraverse?authuser=0&authkey=Gv1sRgCPy-jISfmta4qQE&feat=directlink', CAST(N'2012-10-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (89, N'Grand Staircase-Escalante', N'https://picasaweb.google.com/107082436175597733376/GrandStaircaseEscalanteNationalMonument?authuser=0&authkey=Gv1sRgCNbMmfGe-fDbXA&feat=directlink', CAST(N'2012-11-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (90, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec92012?authuser=0&authkey=Gv1sRgCLHxvYaBo8DFRw&feat=directlink', CAST(N'2012-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (91, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec152012?authuser=0&authkey=Gv1sRgCJKbruXstvaRAw&feat=directlink', CAST(N'2012-12-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (92, N'Joe''s', N'https://picasaweb.google.com/107082436175597733376/JoeSValley?authuser=0&authkey=Gv1sRgCO-o35nL3_XAhQE&feat=directlink', CAST(N'2012-12-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (93, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec202012?authuser=0&authkey=Gv1sRgCM6sl8-nifjT9AE&feat=directlink', CAST(N'2012-12-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (94, N'Alberta', N'https://picasaweb.google.com/107082436175597733376/ChristmasVacation2012?authuser=0&authkey=Gv1sRgCLXNmp7fmdnuDg&feat=directlink', CAST(N'2012-12-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (95, N'Waterton', N'https://picasaweb.google.com/116738453430397687681/Christmas2011?authuser=0&authkey=Gv1sRgCIzwhOjnl7L_RA&feat=directlink', CAST(N'2011-12-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (96, N'Millers Thriller', N'https://picasaweb.google.com/116738453430397687681/MillerSThrillerIceClimbingDec102011?authuser=0&authkey=Gv1sRgCIWwp_WltM3KEA&feat=directlink', CAST(N'2011-12-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (97, N'Mt. Olympus', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5685293069915951377&authkey=Gv1sRgCNzQ-ZammZvBkgE&feat=email', CAST(N'2011-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (98, N'Mt. Whitney', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5656407684202190945&authkey=Gv1sRgCMSAjev_kreTmQE&feat=email', CAST(N'2011-09-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (99, N'Dirty Dash', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5657162868728651969&authkey=Gv1sRgCMajvLm-4PmC5wE&feat=email', CAST(N'2011-09-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (100, N'S. Kings', N'https://picasaweb.google.com/116738453430397687681/SouthKingsPeakEtc?authkey=Gv1sRgCJjc36X-ya65zgE&feat=email#', CAST(N'2011-09-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (101, N'Timpanogos', N'https://picasaweb.google.com/116738453430397687681/Timpanogos?authkey=Gv1sRgCP7n-uuJuOC5Lw&feat=email#', CAST(N'2011-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (102, N'Triple Traverse', N'https://picasaweb.google.com/116738453430397687681/TripleTraverse?authkey=Gv1sRgCMyClcKVpOb0MQ&feat=email#', CAST(N'2011-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (103, N'Grunge', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5607474293751586817&authkey=Gv1sRgCKf0zJ7Qt46pbg&feat=email', CAST(N'2011-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (104, N'Lone Peak', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5605892506182421729&authkey=Gv1sRgCKHaj9mDwcq9UQ&feat=email', CAST(N'2011-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (105, N'Flagstaff Mountain', N'https://picasaweb.google.com/116738453430397687681/FlagstaffMtn?authkey=Gv1sRgCJCz2sGi8Oj0Dg&feat=directlink', CAST(N'2011-02-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (106, N'Qquirrh Mtns', N'https://picasaweb.google.com/116738453430397687681/LewistonAndFlatopSkiTour?authkey=Gv1sRgCPuY29D2vYu9dQ&feat=directlink', CAST(N'2011-02-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (107, N'Cascade Mountain', N'https://picasaweb.google.com/116738453430397687681/CascadeJan122011?authuser=0&authkey=Gv1sRgCNrdksva2YrBtgE&feat=directlink', CAST(N'2011-01-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (108, N'Maple Mountain', N'http://picasaweb.google.com/116738453430397687681/MapleMtn?authkey=Gv1sRgCMnQxKCamffQkAE&feat=directlink', CAST(N'2011-01-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (109, N'Blue John', N'http://picasaweb.google.com/vanman798/BlueJohnCanyonAndHorseshoeCanyon?authkey=Gv1sRgCMOuicbw8dmrlgE&feat=email#', CAST(N'2010-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (110, N'The Cult', N'http://picasaweb.google.com/vanman798/TheCultAtSaltair?authkey=Gv1sRgCMf85M-4goj6ag&feat=directlink', CAST(N'2010-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (111, N'City of Rocks', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5514938302835612961&authkey=Gv1sRgCLKW08_qi479xAE&feat=email', CAST(N'2010-09-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (112, N'Birch Hallow', N'http://picasaweb.google.com/vanman798/BirchHallowCanyon?authkey=Gv1sRgCOubhOjU1vCWXg&feat=directlink', CAST(N'2010-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (113, N'Kennecott Mine', N'http://picasaweb.google.com/vanman798/BinghamCanyonMine?authkey=Gv1sRgCIbAj6DqxIbVSQ#', CAST(N'2010-08-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (114, N'Mt. Rainier', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5496018945788815905&authkey=Gv1sRgCLfppqTJuNCBtQE&feat=email', CAST(N'2010-07-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (115, N'Mt. Hood', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5496012297701290529&authkey=Gv1sRgCNnjueu7yeyKPA&feat=email', CAST(N'2010-07-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (116, N'South Timp', N'http://picasaweb.google.com/vanman798/SouthTimp?authkey=Gv1sRgCM-D48yqkLKOtwE&feat=directlink', CAST(N'2010-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (117, N'Grunge Couloir', N' http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5483402799537772529&authkey=Gv1sRgCPTmgfTyhcjF2gE&feat=email', CAST(N'2010-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (118, N'Obelisk/Pfeiff', N'http://picasaweb.google.com/vanman798/TheObeliskAndThePfeifferhorn?authkey=Gv1sRgCPK4t8nbm7viggE#', CAST(N'2010-06-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (119, N'Upper Pole Couloir', N'https://picasaweb.google.com/116738453430397687681/UpperPoleCouloir?authuser=0&authkey=Gv1sRgCPvK54ex9t3AEw&feat=directlink', CAST(N'2010-05-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (120, N'Mt. Nebo', N'http://picasaweb.google.com/vanman798/MountNebo#', CAST(N'2010-05-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (121, N'Everest Ridge', N'http://picasaweb.google.com/vanman798/EverestRidge?feat=email#', CAST(N'2010-04-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (122, N'Flood', N'http://vanman798.shutterfly.com/pictures/2282', CAST(N'2010-03-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (123, N'Box Elder', N'http://vanman798.shutterfly.com/pictures/2261', CAST(N'2010-03-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (124, N'Crowd Ridge', N'https://picasaweb.google.com/116738453430397687681/SpanishForkPeakViaCrowdRidge?authuser=0&authkey=Gv1sRgCM3v1MG-7bu0Pw&feat=directlink', CAST(N'2010-03-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (125, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/2171', CAST(N'2010-03-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (126, N'Cardston', N'http://vanman798.shutterfly.com/pictures/2075', CAST(N'2009-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (127, N'Gobblers Knob', N'http://vanman798.shutterfly.com/pictures/2059', CAST(N'2009-11-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (128, N'Spanish Fork Peak', N'http://vanman798.shutterfly.com/pictures/2045', CAST(N'2009-11-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (129, N'Halloween', N'http://vanman798.shutterfly.com/pictures/2021', CAST(N'2009-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (130, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/2001', CAST(N'2009-10-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (131, N'Borah Peak', N'http://vanman798.shutterfly.com/pictures/1973', CAST(N'2009-09-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (132, N'Gannett Peak', N'http://vanman798.shutterfly.com/pictures/1886', CAST(N'2009-08-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (133, N'Decadence', N'http://vanman798.shutterfly.com/pictures/1875', CAST(N'2009-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (134, N'The 4th', N'http://vanman798.shutterfly.com/pictures/1851', CAST(N'2009-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (135, N'Potluck', N'http://vanman798.shutterfly.com/pictures/1833', CAST(N'2009-06-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (136, N'R/W/R/W', N'http://vanman798.shutterfly.com/pictures/1806', CAST(N'2009-06-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (137, N'Grand Canyon', N'http://vanman798.shutterfly.com/pictures/1735', CAST(N'2009-05-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (138, N'Mt. Shasta', N'http://vanman798.shutterfly.com/pictures/1695', CAST(N'2009-05-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (139, N'Triple Traverse', N'http://vanman798.shutterfly.com/pictures/1662', CAST(N'2009-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (140, N'Cold Fusion', N'http://vanman798.shutterfly.com/pictures/1641', CAST(N'2009-05-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (141, N'North Thunder', N'http://vanman798.shutterfly.com/pictures/1604', CAST(N'2009-05-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (142, N'Bald Mountain', N'http://vanman798.shutterfly.com/pictures/1558', CAST(N'2009-03-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (143, N'Cardiac Ridge', N'http://vanman798.shutterfly.com/pictures/1485', CAST(N'2009-02-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (144, N'Lowe Peak', N'http://vanman798.shutterfly.com/pictures/1440', CAST(N'2009-02-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (145, N'Flagstaff Mtn/Days Fork', N'http://vanman798.shutterfly.com/pictures/1386', CAST(N'2009-01-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (146, N'Peak 8753', N'http://vanman798.shutterfly.com/pictures/1355', CAST(N'2009-01-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (147, N'Red Baldy', N'http://vanman798.shutterfly.com/pictures/1338', CAST(N'2008-12-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (148, N'Halloween', N'http://vanman798.shutterfly.com/pictures/1267', CAST(N'2008-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (149, N'Bomber Peak', N'http://vanman798.shutterfly.com/pictures/1248', CAST(N'2008-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (150, N'AAM Reunion', N'http://vanman798.shutterfly.com/pictures/1198', CAST(N'2008-10-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (151, N'BF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1177', CAST(N'2008-09-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (152, N'High Uintas', N'http://vanman798.shutterfly.com/pictures/1127', CAST(N'2008-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (153, N'AF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1112', CAST(N'2008-07-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (154, N'Crowsnest Mountain', N'http://vanman798.shutterfly.com/pictures/1088', CAST(N'2008-07-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (155, N'Mount Crandell', N'http://vanman798.shutterfly.com/pictures/1076', CAST(N'2008-07-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (156, N'Turtle Mtn & Waterton', N'http://vanman798.shutterfly.com/pictures/1060', CAST(N'2008-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (157, N'Vimy Peak', N'http://vanman798.shutterfly.com/pictures/1026', CAST(N'2008-07-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (158, N'Box Elder', N'http://vanman798.shutterfly.com/pictures/1010', CAST(N'2008-06-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (159, N'S. Thunder & Big Horn', N'http://vanman798.shutterfly.com/pictures/982', CAST(N'2008-06-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (160, N'North Timp', N'http://vanman798.shutterfly.com/pictures/959', CAST(N'2008-05-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (161, N'Mt. Superior', N'http://vanman798.shutterfly.com/pictures/941', CAST(N'2008-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (162, N'Mt. Dromedary', N'http://vanman798.shutterfly.com/pictures/917', CAST(N'2008-05-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (163, N'Wolverine Cirque', N'http://vanman798.shutterfly.com/pictures/888', CAST(N'2008-03-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (164, N'The Canyons', N'http://vanman798.shutterfly.com/pictures/865', CAST(N'2008-02-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (165, N'Mt. Nebo', N'http://vanman798.shutterfly.com/pictures/843', CAST(N'2008-01-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (166, N'Alberta', N'http://vanman798.shutterfly.com/pictures/820', CAST(N'2007-11-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (167, N'Pfeifferhorn', N'http://vanman798.shutterfly.com/pictures/808', CAST(N'2007-09-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (168, N'Mt. Nebo', N'http://vanman798.shutterfly.com/pictures/802', CAST(N'2007-09-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (169, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/776', CAST(N'2007-08-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (170, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/748', CAST(N'2007-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (171, N'Cascade', N'http://vanman798.shutterfly.com/pictures/722', CAST(N'2007-07-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (172, N'Shed', N'http://vanman798.shutterfly.com/pictures/709', CAST(N'2007-06-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (173, N'Moab Area', N'http://vanman798.shutterfly.com/pictures/601', CAST(N'2007-05-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (174, N'Horsts Funeral', N'http://vanman798.shutterfly.com/pictures/593', CAST(N'2007-04-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (175, N'Random 2006', N'http://vanman798.shutterfly.com/pictures/560', CAST(N'2006-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (176, N'B-day 2006', N'http://vanman798.shutterfly.com/pictures/541', CAST(N'2006-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (177, N'Summer 2006', N'http://vanman798.shutterfly.com/pictures/525', CAST(N'2006-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (178, N'Zion Narrows', N'http://vanman798.shutterfly.com/pictures/507', CAST(N'2006-06-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (179, N'Adirondacks', N'http://vanman798.shutterfly.com/pictures/488', CAST(N'2005-07-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (180, N'West Virginia', N'http://vanman798.shutterfly.com/pictures/472', CAST(N'2005-05-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (181, N'Desert SW', N'http://vanman798.shutterfly.com/pictures/440', CAST(N'2005-05-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (182, N'Snowshoe, WV', N'http://vanman798.shutterfly.com/pictures/426', CAST(N'2005-02-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (183, N'Random 2004 Pics', N'http://vanman798.shutterfly.com/pictures/412', CAST(N'2004-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (184, N'Langley Dinner', N'http://vanman798.shutterfly.com/pictures/388', CAST(N'2004-09-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (185, N'Skydiving', N'http://vanman798.shutterfly.com/pictures/352', CAST(N'2004-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (186, N'Hong Kong', N'https://picasaweb.google.com/116738453430397687681/HongKongMacauFeb2004?authuser=0&authkey=Gv1sRgCPbajaLosobFcQ&feat=directlink', CAST(N'2004-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (187, N'Yough River, PA', N'http://vanman798.shutterfly.com/pictures/300', CAST(N'2003-09-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (188, N'Alberta', N'http://vanman798.shutterfly.com/pictures/248', CAST(N'2003-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (189, N'Savannah', N'http://vanman798.shutterfly.com/pictures/211', CAST(N'2003-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (190, N'Gauley River, WV', N'http://vanman798.shutterfly.com/pictures/207', CAST(N'2002-10-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (191, N'Grandfather, NC', N'http://vanman798.shutterfly.com/pictures/171', CAST(N'2001-05-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (192, N'AAM', N'http://vanman798.shutterfly.com/pictures/123', CAST(N'1986-09-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (193, N'Kid Photos', N'http://vanman798.shutterfly.com/pictures/97', CAST(N'1970-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (194, N'Santaquin Canyon', N'https://picasaweb.google.com/116738453430397687681/SantaquinCanyonFireCooking?authuser=0&authkey=Gv1sRgCLSXncix0_rGLA&feat=directlink', CAST(N'2011-11-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (195, N'Red Pine Lake', N'https://picasaweb.google.com/116738453430397687681/RedPineLake?authuser=0&authkey=Gv1sRgCIHCk4vygKv4HA&feat=directlink', CAST(N'2011-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (196, N'Sliding Rock', N'https://picasaweb.google.com/116738453430397687681/SlidingRock?authuser=0&authkey=Gv1sRgCLDX_aHM4aun8AE&feat=directlink', CAST(N'2011-08-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (197, N'This is the Place', N'https://picasaweb.google.com/116738453430397687681/ThisIsThePlace?authuser=0&authkey=Gv1sRgCPPWqanG5oeU2gE&feat=directlink', CAST(N'2011-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (198, N'South End Timp', N'https://picasaweb.google.com/116738453430397687681/TimpSouthEnd?authuser=0&authkey=Gv1sRgCMbM3dLoxP3fJw&feat=directlink', CAST(N'2011-04-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (199, N'Corral Mtn', N'https://picasaweb.google.com/116738453430397687681/CorralMountain?authuser=0&authkey=Gv1sRgCIe9gbDqiMbAdA&feat=directlink', CAST(N'2011-03-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (200, N'Tabernacle Fire', N'https://picasaweb.google.com/116738453430397687681/ProvoTabernacle?authuser=0&authkey=Gv1sRgCOOYpo3TtafcmAE&feat=directlink', CAST(N'2010-12-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (201, N'Christmas', N'https://picasaweb.google.com/116738453430397687681/Christmas2010?authuser=0&authkey=Gv1sRgCL7N8pjKuafZ_gE&feat=directlink', CAST(N'2010-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (202, N'Point Supreme', N'https://picasaweb.google.com/116738453430397687681/PointSupreme?authuser=0&authkey=Gv1sRgCN7g96GumIOuGA&feat=directlink', CAST(N'2010-11-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (203, N'Bald Mtn', N'https://picasaweb.google.com/116738453430397687681/BaldMtn?authuser=0&authkey=Gv1sRgCLjqq_mdjKyTSA&feat=directlink', CAST(N'2011-07-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (204, N'Ana 5K', N'https://picasaweb.google.com/116738453430397687681/Ana5K?authuser=0&authkey=Gv1sRgCMTj_8H6xKLRpgE&feat=directlink', CAST(N'2010-11-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (205, N'Red Rock', N'https://picasaweb.google.com/116738453430397687681/RedRockCanyon?authuser=0&authkey=Gv1sRgCLnW3Lmmrtf1tgE&feat=directlink', CAST(N'2010-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (206, N'Elephant Butte', N'https://picasaweb.google.com/116738453430397687681/ElephantButte?authuser=0&authkey=Gv1sRgCOektaHxgKiFXw&feat=directlink', CAST(N'2010-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (207, N'Yellowstone', N'https://picasaweb.google.com/116738453430397687681/Yellowstone?authuser=0&authkey=Gv1sRgCL-irL3Gvov6JQ&feat=directlink', CAST(N'2010-10-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (208, N'Crazy Man', N'https://picasaweb.google.com/116738453430397687681/CrazyManCoulior02?authuser=0&authkey=Gv1sRgCN-Xn5Lw_pNR&feat=directlink', CAST(N'2010-05-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (209, N'Garden', N'https://picasaweb.google.com/116738453430397687681/Garden2010?authuser=0&authkey=Gv1sRgCIifyp-gl5LEOA&feat=directlink', CAST(N'2010-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (210, N'Kessler', N'https://picasaweb.google.com/116738453430397687681/KesslerPeak?authuser=0&authkey=Gv1sRgCN2-rfXjhLmVuAE&feat=directlink', CAST(N'2010-03-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (211, N'UFO Bowl', N'https://vanman798.shutterfly.com/pictures/2158', CAST(N'2010-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (212, N'Snowbird', N'https://picasaweb.google.com/116738453430397687681/Snowbird2182010?authuser=0&authkey=Gv1sRgCKilqf-X55mBVg&feat=directlink', CAST(N'2010-02-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (213, N'Urban', N'https://picasaweb.google.com/116738453430397687681/Urban?authuser=0&authkey=Gv1sRgCN7M59HrpMecMA&feat=directlink', CAST(N'2010-05-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (214, N'Maple Ice', N'https://vanman798.shutterfly.com/pictures/2141', CAST(N'2010-01-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (215, N'BCC Tour', N'https://picasaweb.google.com/116738453430397687681/BCCTour1232010?authuser=0&authkey=Gv1sRgCOGGgYi659SUiwE&feat=directlink', CAST(N'2010-01-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (216, N'Big Springs', N'https://picasaweb.google.com/116738453430397687681/BigSprings?authuser=0&authkey=Gv1sRgCLGdh5nN3fzn4QE&feat=directlink', CAST(N'2010-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (217, N'Gobblers Knob', N'https://picasaweb.google.com/116738453430397687681/GobblersKnob?authuser=0&authkey=Gv1sRgCOfXy9rmwe6ZrQE&feat=directlink', CAST(N'2010-01-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (218, N'GW Trail', N'https://picasaweb.google.com/116738453430397687681/GreatWestern?authuser=0&authkey=Gv1sRgCN7j2rLpjYrkaQ&feat=directlink', CAST(N'2009-12-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (219, N'Dinner', N'https://picasaweb.google.com/116738453430397687681/Dinner?authuser=0&authkey=Gv1sRgCO6L7Nfv3bCGvgE&feat=directlink', CAST(N'2009-11-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (220, N'Dallas', N'https://picasaweb.google.com/116738453430397687681/Dallas?authuser=0&authkey=Gv1sRgCKKBrvGc2_zhFA&feat=directlink', CAST(N'2009-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (221, N'Mt. Elbert', N'https://picasaweb.google.com/116738453430397687681/MtElbert?authuser=0&authkey=Gv1sRgCJqM6pq16PKshgE&feat=directlink', CAST(N'2009-09-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (222, N'Mt. Massive', N'https://picasaweb.google.com/116738453430397687681/Massive9192009?authuser=0&authkey=Gv1sRgCMfns66jvIz_Rg&feat=directlink', CAST(N'2009-09-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (223, N'Ana B-day', N'https://picasaweb.google.com/116738453430397687681/AnaBDay?authuser=0&authkey=Gv1sRgCPuZzYHU_On3Og&feat=directlink', CAST(N'2009-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (224, N'Def Leppard', N'https://picasaweb.google.com/116738453430397687681/DefLeppardEtc8252009?authuser=0&authkey=Gv1sRgCNfSmZ2EzLbmlAE&feat=directlink', CAST(N'2009-08-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (225, N'B-day', N'https://picasaweb.google.com/116738453430397687681/WalterBDay2009?authuser=0&authkey=Gv1sRgCOajuNCY9NqHJA&feat=directlink', CAST(N'2009-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (226, N'Chip/Pfeif', N'https://picasaweb.google.com/116738453430397687681/ChipmanPfeif?authuser=0&authkey=Gv1sRgCOzA0tOOt6vD3QE&feat=directlink', CAST(N'2009-07-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (227, N'Zion', N'https://picasaweb.google.com/116738453430397687681/Zion7242009?authuser=0&authkey=Gv1sRgCIacrr3G96267QE&feat=directlink', CAST(N'2009-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (228, N'East Provo Peak', N'https://picasaweb.google.com/116738453430397687681/EastProvoPeak?authuser=0&authkey=Gv1sRgCJWmgIGT17bGfQ&feat=directlink', CAST(N'2009-06-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (229, N'North Peak', N'https://picasaweb.google.com/116738453430397687681/NorthPeak6272009?authuser=0&authkey=Gv1sRgCPOgoOn1rOaWIQ&feat=directlink', CAST(N'2009-06-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (230, N'Wolverine', N'https://picasaweb.google.com/116738453430397687681/Wolverine4182009?authuser=0&authkey=Gv1sRgCPCSvYLQg8Pu7gE&feat=directlink', CAST(N'2009-04-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (231, N'Bear Trap', N'https://picasaweb.google.com/116738453430397687681/BearTrap4112009?authuser=0&authkey=Gv1sRgCM3HovOVnqXhcA&feat=directlink', CAST(N'2009-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (232, N'Meadow Chute', N'https://picasaweb.google.com/116738453430397687681/MeadowChute?authuser=0&authkey=Gv1sRgCMua66aaw6v2ew&feat=directlink', CAST(N'2009-04-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (233, N'Brighton', N'https://picasaweb.google.com/116738453430397687681/Brighton3122009?authuser=0&authkey=Gv1sRgCLbP_JiC-9ei4gE&feat=directlink', CAST(N'2009-03-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (234, N'Argenta', N'https://picasaweb.google.com/116738453430397687681/Argenta3312009?authuser=0&authkey=Gv1sRgCOal_pDu1t_UaA&feat=directlink', CAST(N'2009-03-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (235, N'Jones Reception', N'https://picasaweb.google.com/116738453430397687681/DaveJonesWeddingReception?authuser=0&authkey=Gv1sRgCODixqrD3rju6QE&feat=directlink', CAST(N'2009-01-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (236, N'Shoveling', N'https://picasaweb.google.com/116738453430397687681/OremShovelling172009?authuser=0&authkey=Gv1sRgCKKDk8KRp7nkHg&feat=directlink', CAST(N'2009-01-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (237, N'Mineral Fork', N'https://picasaweb.google.com/116738453430397687681/MineralFork2009_01_17?authuser=0&authkey=Gv1sRgCN-3mdL958OWAg&feat=directlink', CAST(N'2009-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (238, N'Frostbite', N'https://picasaweb.google.com/116738453430397687681/Frostbite12212008?authuser=0&authkey=Gv1sRgCJ-vq6jTzvnnGg&feat=directlink', CAST(N'2008-12-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (239, N'White Pine', N'https://picasaweb.google.com/116738453430397687681/WhitePineLake11292008?authuser=0&authkey=Gv1sRgCOWR6O63-sfYbw&feat=directlink', CAST(N'2008-11-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (240, N'Nebo', N'https://picasaweb.google.com/116738453430397687681/NeboTriplePeaks1112008?authuser=0&authkey=Gv1sRgCK3r78OXq9m_GA&feat=directlink', CAST(N'2008-11-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (241, N'Opera', N'https://picasaweb.google.com/116738453430397687681/Opera10222008?authuser=0&authkey=Gv1sRgCOGknvT9i_2vwgE&feat=directlink', CAST(N'2008-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (242, N'House Party', N'https://picasaweb.google.com/116738453430397687681/HouseParty?authuser=0&authkey=Gv1sRgCMnKjpTTx7DYogE&feat=directlink', CAST(N'2008-10-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (243, N'Whistler', N'https://picasaweb.google.com/116738453430397687681/Whistler1022008?authuser=0&authkey=Gv1sRgCLypmdXD88KDcg&feat=directlink', CAST(N'2008-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (244, N'Yolanda', N'https://picasaweb.google.com/116738453430397687681/Yolanda9282008?authuser=0&authkey=Gv1sRgCMf4hcmrxt27sgE&feat=directlink', CAST(N'2008-09-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (245, N'Psuedo Smoking', N'https://picasaweb.google.com/116738453430397687681/PsuedoSmoking9242008?authuser=0&authkey=Gv1sRgCNm1icylwuqQ0AE&feat=directlink', CAST(N'2008-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (246, N'Concert', N'https://picasaweb.google.com/116738453430397687681/Concert9182008?authuser=0&authkey=Gv1sRgCKCRgpq0tf2InQE&feat=directlink', CAST(N'2008-09-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (247, N'Ana''s B-day', N'https://picasaweb.google.com/116738453430397687681/AnaBDaySept162008?authuser=0&authkey=Gv1sRgCLntu6ml09T5Mw&feat=directlink', CAST(N'2008-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (248, N'Shirtless', N'https://picasaweb.google.com/116738453430397687681/Shirtless?authuser=0&authkey=Gv1sRgCNSR2dG8o6K0aA&feat=directlink', CAST(N'2008-09-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (249, N'Y', N'https://picasaweb.google.com/116738453430397687681/Y?authuser=0&authkey=Gv1sRgCKXHmJqE7qCbtQE&feat=directlink', CAST(N'2008-08-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (250, N'B-day', N'https://picasaweb.google.com/116738453430397687681/Bday2008?authuser=0&authkey=Gv1sRgCO3Y_ZDosoTM2QE&feat=directlink', CAST(N'2008-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (251, N'Provo Peak', N'https://picasaweb.google.com/116738453430397687681/ProvoPeak?authuser=0&authkey=Gv1sRgCIK9kMyy24eVmQE&feat=directlink', CAST(N'2008-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (252, N'Timp', N'https://picasaweb.google.com/116738453430397687681/RobertsHornTimp?authuser=0&authkey=Gv1sRgCMa7qP3aoLq2igE&feat=directlink', CAST(N'2008-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (253, N'SLC', N'https://picasaweb.google.com/116738453430397687681/PeterAndFamilyInSLC6252008?authuser=0&authkey=Gv1sRgCIfo_vSaou_unQE&feat=directlink', CAST(N'2008-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (254, N'Upper Pole', N'https://picasaweb.google.com/116738453430397687681/UpperPole?authuser=0&authkey=Gv1sRgCPvT8bfyiYjNtQE&feat=directlink', CAST(N'2008-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (255, N'West Mtn', N'https://picasaweb.google.com/116738453430397687681/WestMtn?authuser=0&authkey=Gv1sRgCNDmm5ndtMjJAw&feat=directlink', CAST(N'2008-06-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (256, N'Friends', N'https://picasaweb.google.com/116738453430397687681/FriendsEtc?authuser=0&authkey=Gv1sRgCIjVk6rHiN7z3wE&feat=directlink', CAST(N'2008-05-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (257, N'Y Mtn', N'https://picasaweb.google.com/116738453430397687681/YMtn?authuser=0&authkey=Gv1sRgCN3tqdShjKXFNw&feat=directlink', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (258, N'Self', N'https://picasaweb.google.com/116738453430397687681/SelfPortraits?authuser=0&authkey=Gv1sRgCKCe9peO07_37QE&feat=directlink', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (259, N'Mahogany', N'https://picasaweb.google.com/116738453430397687681/Mahogany?authuser=0&authkey=Gv1sRgCIP36tGp7uGHRg&feat=directlink', CAST(N'2008-05-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (260, N'Ana/Walter', N'https://picasaweb.google.com/116738453430397687681/RominaVillamonte_Bday2008_04_01?authuser=0&authkey=Gv1sRgCMvtxY_03bqHaw&feat=directlink', CAST(N'2008-04-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (261, N'Broads Fork', N'https://picasaweb.google.com/116738453430397687681/BroadsFork1132007?authuser=0&authkey=Gv1sRgCKzh_oOj-ZmSEw&feat=directlink', CAST(N'2007-11-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (262, N'Maple Mtn', N'https://picasaweb.google.com/116738453430397687681/MapleMtn02?authuser=0&authkey=Gv1sRgCOXspuztg46mVA&feat=directlink', CAST(N'2007-10-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (263, N'Cardiff Pass', N'https://picasaweb.google.com/116738453430397687681/CardiffPass?authuser=0&authkey=Gv1sRgCLvc8Ku80uzEKg&feat=directlink', CAST(N'2007-10-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (264, N'Buckley', N'https://picasaweb.google.com/116738453430397687681/Buckley10122007?authuser=0&authkey=Gv1sRgCIq0lvm-m6qOygE&feat=directlink', CAST(N'2007-10-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (265, N'Y Mtn', N'https://picasaweb.google.com/116738453430397687681/YMtn02?authuser=0&authkey=Gv1sRgCPeL3IPz7b3W6gE&feat=directlink', CAST(N'2007-10-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (266, N'84 Yard', N'https://picasaweb.google.com/116738453430397687681/Yard84E?authuser=0&authkey=Gv1sRgCJTS4tS0v5rE4wE&feat=directlink', CAST(N'2007-09-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (267, N'Fredo Baptism', N'https://picasaweb.google.com/116738453430397687681/FredoBaptism8252007?authuser=0&authkey=Gv1sRgCNyNo-eY_byEZA&feat=directlink', CAST(N'2007-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (268, N'Garden', N'https://picasaweb.google.com/116738453430397687681/Garden8182007?authuser=0&authkey=Gv1sRgCMrZ2KDX4MrD2wE&feat=directlink', CAST(N'2007-08-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (269, N'B-day', N'https://picasaweb.google.com/116738453430397687681/Bday2007?authuser=0&authkey=Gv1sRgCOjl8Iit4o3o9gE&feat=directlink', CAST(N'2007-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (270, N'Payson Lakes', N'https://picasaweb.google.com/116738453430397687681/OH8CampoutPaysonLake8112007?authuser=0&authkey=Gv1sRgCLmArc-hvsOOoQE&feat=directlink', CAST(N'2007-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (271, N'Silver Lake', N'https://picasaweb.google.com/116738453430397687681/SilverLake7242007?authuser=0&authkey=Gv1sRgCK-T5ZOLvJGYkAE&feat=directlink', CAST(N'2007-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (272, N'Copper Mine', N'https://picasaweb.google.com/116738453430397687681/BinghamMine772007?authuser=0&authkey=Gv1sRgCL2ylIDSt-r4Zw&feat=directlink', CAST(N'2007-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (273, N'Rocking Out', N'https://picasaweb.google.com/116738453430397687681/RockingOut6232007?authuser=0&authkey=Gv1sRgCO_Wjcmb9YbCxQE&feat=directlink', CAST(N'2007-06-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (274, N'Cinco De Mayo', N'https://picasaweb.google.com/116738453430397687681/CincoDeMayo552007?authuser=0&authkey=Gv1sRgCPrT-Z3h8ZTergE&feat=directlink', CAST(N'2007-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (275, N'Red Beard', N'https://picasaweb.google.com/116738453430397687681/RedBeard322007?authuser=0&authkey=Gv1sRgCIXl9e3V6e2ovwE&feat=directlink', CAST(N'2007-03-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (276, N'Provo Peak', N'https://picasaweb.google.com/116738453430397687681/ProvoPeak9302006?authuser=0&authkey=Gv1sRgCPLW8du04LSiUQ&feat=directlink', CAST(N'2006-09-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (277, N'OH8 Campout', N'https://picasaweb.google.com/116738453430397687681/OH8Campout9222006?authuser=0&authkey=Gv1sRgCIDqk_GXjO3HKg&feat=directlink', CAST(N'2006-09-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (278, N'Kings Peak', N'https://picasaweb.google.com/116738453430397687681/KingsPeak912006?authuser=0&authkey=Gv1sRgCNbXzPyznvvN4QE&feat=directlink', CAST(N'2006-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (279, N'Micro Burst', N'https://picasaweb.google.com/116738453430397687681/ProvoStormMicroburst?authuser=0&authkey=Gv1sRgCJGnjMiOmYnXugE&feat=directlink', CAST(N'2006-08-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (280, N'Deseret Peak', N'https://picasaweb.google.com/116738453430397687681/DeseretPeak7222006?authuser=0&authkey=Gv1sRgCPSk2_7EjJnCXQ&feat=directlink', CAST(N'2006-07-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (281, N'Funnies', N'https://picasaweb.google.com/116738453430397687681/Funnies7112006?authuser=0&authkey=Gv1sRgCJ-u-8XQ9N7jiAE&feat=directlink', CAST(N'2006-07-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (282, N'Hair Cut', N'https://picasaweb.google.com/116738453430397687681/HairCut5132006?authuser=0&authkey=Gv1sRgCKSnroqG6JHYtAE&feat=directlink', CAST(N'2006-05-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (283, N'Peter''s Kids', N'https://picasaweb.google.com/116738453430397687681/PeterSKids462006?authuser=0&authkey=Gv1sRgCOXInOKyiZSneg&feat=directlink', CAST(N'2006-04-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (284, N'Alta', N'https://picasaweb.google.com/116738453430397687681/Alta342006?authuser=0&authkey=Gv1sRgCLGo7feF6salQQ&feat=directlink', CAST(N'2006-03-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (285, N'Crane Mtn', N'https://vanman798.shutterfly.com/pictures/2417', CAST(N'2005-07-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (286, N'White Oaks', N'https://picasaweb.google.com/116738453430397687681/WhiteOaks?authuser=0&authkey=Gv1sRgCMnloIG3quPjqQE&feat=directlink', CAST(N'2005-05-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (287, N'Mustache', N'https://picasaweb.google.com/116738453430397687681/Mustache?authuser=0&authkey=Gv1sRgCO2VrPrk1Kq3oAE&feat=directlink', CAST(N'2005-04-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (288, N'ALPA', N'https://picasaweb.google.com/116738453430397687681/ALPA?authuser=0&authkey=Gv1sRgCIf71Z7c74752QE&feat=directlink', CAST(N'2005-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (289, N'CHS 20 Year', N'https://picasaweb.google.com/116738453430397687681/CHS20YearReunion?authuser=0&authkey=Gv1sRgCMu-5Y7Vu6nw4wE&feat=directlink', CAST(N'2005-08-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (290, N'Chief Mtn', N'https://picasaweb.google.com/116738453430397687681/Chief?authuser=0&authkey=Gv1sRgCPid7Yv54IGa8wE&feat=directlink', CAST(N'2005-08-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (291, N'Halloween', N'https://picasaweb.google.com/116738453430397687681/Halloween2004?authuser=0&authkey=Gv1sRgCPOrsNW62K2iQQ&feat=directlink', CAST(N'2004-10-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (292, N'Kennedy Peak', N'https://picasaweb.google.com/116738453430397687681/KennedyPeak1092004?authuser=0&authkey=Gv1sRgCKm8u5qXpa7FMA&feat=directlink', CAST(N'2004-10-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (293, N'DC & VA', N'https://picasaweb.google.com/116738453430397687681/DCArea1032004?authuser=0&authkey=Gv1sRgCPi_ztKzzKjGmwE&feat=directlink', CAST(N'2004-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (294, N'Former DC Stake Center', N'https://picasaweb.google.com/116738453430397687681/UnificationChurch?authuser=0&authkey=Gv1sRgCLPpiITc68-sLw&feat=directlink', CAST(N'2004-07-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (295, N'Karokee', N'https://picasaweb.google.com/116738453430397687681/Karokee722004?authuser=0&authkey=Gv1sRgCN7uqc_iiKHMIg&feat=directlink', CAST(N'2004-07-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (296, N'Yawk', N'https://picasaweb.google.com/116738453430397687681/Yawk6122004?authuser=0&authkey=Gv1sRgCL-0gsbH06-NcQ&feat=directlink', CAST(N'2004-06-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (297, N'Palmyra', N'https://picasaweb.google.com/116738453430397687681/Palmyra742004?authuser=0&authkey=Gv1sRgCM_L4q793aS8Bg&feat=directlink', CAST(N'2004-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (298, N'Bears Den', N'https://picasaweb.google.com/116738453430397687681/BearDen10302004?authuser=0&authkey=Gv1sRgCIKF9aiI5siuTQ&feat=directlink', CAST(N'2004-10-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (299, N'Big Schloss', N'https://picasaweb.google.com/116738453430397687681/BigSchloss?authuser=0&authkey=Gv1sRgCK_B7KayxevNwwE&feat=directlink', CAST(N'2004-11-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (300, N'Friends', N'https://picasaweb.google.com/116738453430397687681/Friends2003?authuser=0&authkey=Gv1sRgCL6tveaXrabJDQ&feat=directlink', CAST(N'2003-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (301, N'Halloween', N'https://picasaweb.google.com/116738453430397687681/Halloween?authuser=0&authkey=Gv1sRgCLGd76mF1NaSdw&feat=directlink', CAST(N'2003-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (302, N'II Employees', N'https://vanman798.shutterfly.com/pictures/2453', CAST(N'2001-10-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (303, N'Random', N'https://vanman798.shutterfly.com/pictures/2427', CAST(N'2001-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (304, N'Halloween', N'https://picasaweb.google.com/116738453430397687681/Halloween02?authuser=0&authkey=Gv1sRgCJa8ueHasqaVPQ&feat=directlink', CAST(N'2001-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (305, N'2000', N'https://picasaweb.google.com/116738453430397687681/2000?authuser=0&authkey=Gv1sRgCPmy74fKyvK5ew&feat=directlink', CAST(N'2000-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (306, N'1999', N'https://picasaweb.google.com/116738453430397687681/1999?authuser=0&authkey=Gv1sRgCKPa5MWOs8qOlAE&feat=directlink', CAST(N'1999-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (307, N'1998', N'https://picasaweb.google.com/116738453430397687681/1998?authuser=0&authkey=Gv1sRgCNrnzeLB89nmDw&feat=directlink', CAST(N'1998-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (308, N'1997', N'https://picasaweb.google.com/116738453430397687681/1997?authuser=0&authkey=Gv1sRgCL7s34HR5ou0kQE&feat=directlink', CAST(N'1997-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (309, N'1996', N'https://picasaweb.google.com/116738453430397687681/1996?authuser=0&authkey=Gv1sRgCKne_-qB_7WZpAE&feat=directlink', CAST(N'1996-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (310, N'1995', N'https://picasaweb.google.com/116738453430397687681/1995?authuser=0&authkey=Gv1sRgCNvL2abs7penHQ&feat=directlink', CAST(N'1995-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (311, N'1990-1994', N'https://vanman798.shutterfly.com/pictures/159', CAST(N'1994-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (312, N'1989', N'https://picasaweb.google.com/116738453430397687681/1989?authuser=0&authkey=Gv1sRgCJSMws7V34GA7QE&feat=directlink', CAST(N'1989-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (313, N'1988', N'https://picasaweb.google.com/116738453430397687681/1988?authuser=0&authkey=Gv1sRgCJCrotqdx7bTtwE&feat=directlink', CAST(N'1988-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (314, N'Random', N'https://vanman798.shutterfly.com/pictures/2560', CAST(N'2007-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (315, N'Random', N'https://picasaweb.google.com/116738453430397687681/2005Random?authuser=0&authkey=Gv1sRgCLDllMmQjPXJ0QE&feat=directlink', CAST(N'2005-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (316, N'Random', N'https://picasaweb.google.com/116738453430397687681/2009Random?authuser=0&authkey=Gv1sRgCOT77cKFuZqGxwE&feat=directlink', CAST(N'2009-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (317, N'2008 Self-Portraits', N'https://picasaweb.google.com/116738453430397687681/2008SelfPortraits?authuser=0&authkey=Gv1sRgCNCKjZiZ-oP3ygE&feat=directlink', CAST(N'2008-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (318, N'Over the Years', N'https://picasaweb.google.com/116738453430397687681/2008OverTheYears?authuser=0&authkey=Gv1sRgCOTiucf1o5zH4wE&feat=directlink', CAST(N'2008-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (319, N'Random', N'https://picasaweb.google.com/116738453430397687681/Random2008?authuser=0&authkey=Gv1sRgCLLN28-egreykQE&feat=directlink', CAST(N'2008-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (320, N'Random', N'https://picasaweb.google.com/107082436175597733376/2014Random?authuser=0&authkey=Gv1sRgCPTizcuN1ZDekwE&feat=directlink', CAST(N'2014-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (321, N'Mustache', N'https://picasaweb.google.com/107082436175597733376/2014Mustache?authuser=0&authkey=Gv1sRgCLOE5qCVwsTUag&feat=directlink', CAST(N'2014-12-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (322, N'Ana and Walter', N'https://picasaweb.google.com/107082436175597733376/AnaAndWalterOverTheYears?authuser=0&authkey=Gv1sRgCPeZ6MSZk4bwFg&feat=directlink', CAST(N'2013-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (323, N'Hair', N'https://picasaweb.google.com/107082436175597733376/Hair?authuser=0&authkey=Gv1sRgCLbym7OnyMruuwE&feat=directlink', CAST(N'2013-12-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (324, N'Mustache', N'https://picasaweb.google.com/116738453430397687681/2010Mustache?authuser=0&authkey=Gv1sRgCIGJyPes78y7ZA&feat=directlink', CAST(N'2010-03-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (325, N'Mustache', N'https://picasaweb.google.com/107082436175597733376/Stache?authuser=0&authkey=Gv1sRgCKWT0I_bg8Sd6gE&feat=directlink', CAST(N'2013-04-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (326, N'Over the Years', N'https://vanman798.shutterfly.com/pictures/2218', CAST(N'1972-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (327, N'Humphreys Peak', N'https://picasaweb.google.com/116738453430397687681/HumphreysPeak?authuser=0&authkey=Gv1sRgCLvtr4qlks6mGg&feat=directlink', CAST(N'2010-11-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (328, N'Joe''s Valley', N'https://picasaweb.google.com/116738453430397687681/JoeSValleyIceClimbing?authuser=0&authkey=Gv1sRgCPnDu6Dg4pKWPg&feat=directlink', CAST(N'2010-11-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (329, N'86 Duplex', N'https://picasaweb.google.com/116738453430397687681/DuplexProject?authuser=0&authkey=Gv1sRgCK_p7L6N4f6vMQ&feat=directlink', CAST(N'2010-12-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (330, N'Squaw Peak Lookout', N'https://picasaweb.google.com/116738453430397687681/SquawPeakLookOut?authuser=0&authkey=Gv1sRgCPqEqeCj5drzyAE&feat=directlink', CAST(N'2010-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (331, N'Lemmy Look', N'https://picasaweb.google.com/116738453430397687681/LemmyLook?authuser=0&authkey=Gv1sRgCLSA4ovSz7_LyQE&feat=directlink', CAST(N'2014-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (332, N'300,000 km & misc', N'https://picasaweb.google.com/116738453430397687681/300000?authuser=0&authkey=Gv1sRgCOOVvNCIv-fB5QE&feat=directlink', CAST(N'2011-09-05' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (333, N'Santa Ski', N'https://picasaweb.google.com/107082436175597733376/BrightonDec242015?authkey=Gv1sRgCJWoyZP9s6SycQ&feat=directlink', CAST(N'2015-12-24' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (334, N'Penguin Plunge', N'https://picasaweb.google.com/107082436175597733376/PenguinPlunge?authuser=0&authkey=Gv1sRgCN-L-8m2qu7xPA&feat=directlink', CAST(N'2016-01-30' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (335, N'Maple Mtn', N'https://picasaweb.google.com/107082436175597733376/MapleMtnTour?authuser=0&authkey=Gv1sRgCPzz2s69oeX7Jg&feat=directlink', CAST(N'2016-02-27' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (336, N'Stratosphere', N'https://picasaweb.google.com/107082436175597733376/Stratosphere?authuser=0&authkey=Gv1sRgCJbQ45mUj42KHw&feat=directlink', CAST(N'2016-03-01' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (337, N'Water Leak', N'https://picasaweb.google.com/107082436175597733376/WaterLeak?authuser=0&authkey=Gv1sRgCOv5nazs-ZnErAE&feat=directlink', CAST(N'2016-03-06' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (338, N'Easter Bunny', N'https://picasaweb.google.com/107082436175597733376/Easter2016Ski?authkey=Gv1sRgCOPSn7PzwM7NWQ&feat=directlink', CAST(N'2016-03-27' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (339, N'Deseret Peak - West Couloir', N'https://picasaweb.google.com/107082436175597733376/6295174432902096913?authkey=Gv1sRgCLnQnMaTpZWZOg&feat=directlink', CAST(N'2016-06-11' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (340, N'Lone Peak', N'https://picasaweb.google.com/107082436175597733376/6303512539063346737?authkey=Gv1sRgCPz6i8zJ8cPCKA&feat=directlink', CAST(N'2016-07-02' AS Date))
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (341, N'Uintas: Blacks Fork River', N'https://goo.gl/photos/as4DDPMm2W9B1hb57', CAST(N'2016-09-03' AS Date))
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (342, N'Nebo: KLAS', N'https://goo.gl/photos/woGiRTZaZ799g2RS9', CAST(N'2016-09-09' AS Date))
GO



SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[Quotes] ON 

GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (1, N'Who needs wilderness? Civilization needs wilderness.', N'Edward Abbey')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (2, N'At either end of the social spectrum lies a leisure class.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (3, N'It requires some effort to achieve a happy outlook on life, and most people don''t make it.', N'Gregg Easterbrook')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (4, N'Rather than love, than money, than faith, than fame, than fairness - give me truth.', N'H D Thoreau')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (5, N'It''s not the years in your life but the life in your years that counts!', N'Adlai Stevenson')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (6, N'Everything can be taken from a person, but one thing: the last of the human freedoms, to choose one''s attitude in any given set of circumstances to choose ones own way.', N'Viktor Frankl')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (7, N'Don''t worry about what people think; they don''t do it very often.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (8, N'The thing always happens that you really believe in; and the belief in a thing makes it happen.', N'Frank Loyd Wright')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (9, N'There is more to life than increasing its speed.', N'Mahatma Ghandi')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (10, N'Happiness is not achieved by the conscious pursuit of happiness; it is generally the by-product of other activities.', N'Aldous Huxley')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (11, N'One man alone can be pretty dumb sometimes, but for real bona fide stupidity, there ain''t nothin'' can beat teamwork.', N'Edward Abbey')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (12, N'You cannot plough a field by turning it over in your mind.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (13, N'To innovate does not necessarily mean to expand; very often it means to simplify.', N'Russell Ballard')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (14, N'Happiness in older years of life, like happiness in every year of life, is a matter of choice - your choice for yourself.', N'Harold Azine')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (15, N'To do all the talking and not be willing to listen is a form of greed.', N'Democritus of Abdera')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (16, N'Youth is wasted on the young.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (17, N'If You Are Prepared You Shall Not Fear.', N'From On High')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (18, N'Too many people adjust their lifestyle to their income. That''s a very dangerous thing to do.', N'Herb Hopwood')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (19, N'Life is either a daring adventure, or nothing at all.', N'Helen Keller')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (20, N'A man must fill his life with meaning, meaning is not automatically given to life.', N'Chian Potol')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (21, N'The most common form of terrorism in the U.S.A. is that carried on by bulldozers and chain saws.', N'Edward Abbey')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (22, N'My definition of love, the transitive verb, is to strive for the happiness of another, and to accept no substitute for that happiness.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (23, N'Sharing your heart is a win-win situation. Either you learn, or you get to love.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (24, N'In a world that what we want is only what we want until it''s ours.', N'Train')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (25, N'All other things being equal, the simplest solution is the best.', N'Occam''s razor')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (26, N'The biggest risk in life is that you will waste your opportunity to really live it.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (27, N'I admit I''ve always had trouble accepting responsibility for my actions. But I blame my parents for that.', N'Mike Peters - "Mother Goose Grimm"')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (28, N'Though we certainly need each other, no one but God is indispensable.', N'Henry Cloud or John Townsend')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (29, N'When you are unsure, say ''no''.', N'Inspired by Henry Cloud or John Townsend')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (30, N'The mountains may well be a way of escape - from the cities and men, from the turmoil and doubt, from the complexities and uncertainties and sorrows that thread our life. But in the truest and most profound sense, it is an escape not from but to reality.', N'James Ramsey Ullman')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (31, N'Mountaineering is more than climbing (exercise), panoramic views, and wilderness experience. It is also challenge, risk, and hardship (self reliance). And it is not for everyone. Those drawn to the mountains can find them exhilarating and irresistible, as well as frustrating and sometimes even deadly. There are qualities to mountaineering that bring inspiration and joy in a pursuit that is more than a pastime, more than a sport a passion, certainly, and sometimes a compulsion.', N'Mountaineering: The Freedom of the Hills')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (32, N'Remember that great love and great achievements involve great risk.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (33, N'It is not easy to find happiness in ourselves, and it is not possible to find it elsewhere.', N'Agnes Repplier')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (34, N'It is odd to watch with what feverish ardor Americans pursue prosperity. Ever tormented by the shadowy suspicion that they may not have chosen the shortest route to get it. They cleave to the things of this world as if assured that they will never die, and yet rush to snatch any that comes within their reach as if they expected to stop living before they had relished them. Death steps in, in the end, and stops them before they have grown tired of this futile pursuit of that complete felicity which always escapes them.', N'Alexis de Tocqueville in "Democracy in America" (1835)')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (35, N'Don''t worry about the world coming to an end today. It''s already tomorrow in Australia!', N'Charles Schultz')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (36, N'To be happy we need someone to love, something to do, and something to look forward to.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (37, N'The Problem with retirement is that you can''t take a day off.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (38, N'We do not stop playing because we grow old; we grow old because we stop playing.', N'George Bernard Shaw')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (39, N'I realize that humor isn''t for everyone. It''s only for people who want to have fun, enjoy life, and feel alive.', N'Anne Wilson Schaef')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (40, N'Mountains are cathedrals; grand and pure, the houses of my religion. I go to them as humans go to worship. From their lofty summits, I view my past, dream of the future, and with unusual acuity I am allowed to experience the present moment. My strength renewed, my vision cleared, in the mountains I celebrate creation. On each journey, I am reborn.', N'Anatoli Boukreev')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (41, N'A woman gets married when she thinks she''s found the fairy tale. A man gets married when he realizes it doesn''t exist.', N'Darcy Partridge')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (42, N'When choosing between two evils, I always like to try the one I''ve never tried before.', N'Mae West')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (43, N'I believe that all girls are fundamentally crazy. The essence of romance is really finding a girl whose crazy makes your heart beat a little faster, rather than one whose crazy makes you want to run off to your man cave in the mountains of Bhutan.', N'Brian Sommers')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (44, N'Victory awaits him who has everything in order; luck, people call it. Defeat is certain for him who has neglected to take the necessary precautions in time; this is called bad luck.', N'Roald Amundsen')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (45, N'For us the mountains had been a natural field of activity where, playing on the frontiers of life and death, we had found the freedom for which we were blindly groping and which was as necessary to us as bread. The mountains had bestowed upon us their beauties, and we adored them with a child''s simplicity and revered them with a monk''s veneration of the divine.', N'Maurice Herzog')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (46, N'If all the insects were to disappear from the earth, within 50 years all life on earth would end. If all human beings disappeared from the earth, within 50 years all forms of life would flourish.', N'Jonas Salk')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (47, N'Mountaineering is as much a mental exercise as it is a physical event.', N'Mike Gauthier')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (48, N'One can never consent to creep when one feels an impulse to soar.', N'Helen Keller')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (49, N'Toil and pleasure in their names opposite, are yet linked together in a kind of necessary connection.', N'Livy')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (50, N'You never conquer a mountain, you conquer yourself.', N'Anonymous')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (51, N'Alpinism is the art of suffering.', N'Wojtek Kurtyka')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (52, N'It is better to live one day as a tiger than one thousand years as a sheep.', N'Tibetan Proverb')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (53, N'Endurance, fear, suffering cold, and the state between survival and death are such strong experiences that we want them again and again. We become addicted.', N'Reinhold Messner')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (54, N'We live in relatively safe times, cocooned from most of the perils our ancestors faced [as such] some people miss the element of risk and uncertainty [so they] seek it out, and if necessary create it.', N'Maria Coffey')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (55, N'Mountaineers aren''t disappointed people; they don''t feel they are wasting their lives; they have gone out there and done something.', N'Ruth Seifert')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (56, N'The stories of mountaineers are new versions of old myths.', N'Maria Coffey')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (57, N'I love experience much more than material possessions.', N'Walter V (adapted from a statement about Anatoli Boukreev)')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (58, N'Pain is only weakness leaving the body.', N'Tom Muccia')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (59, N'When in doubt, go balls out.', N'Andrew Todhunter')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (60, N'There are surfers, I imagine, who live witin a reasonable distance of a decent ocean surf but who have never caught a wave outside a wave pool - all too soon, there will be a climbing gym in Yosemite Valley, and they will pack it in.', N'Adapted from Andrew Todhunter')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (61, N'The best climber in the world is the climber having the most fun.', N'Alex Lowe')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (62, N'Risk is the process of engaging in an activity without the security of knowing the consequences of your decision.', N'Jim Haberl')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (63, N'It had been a challenging journey, much more difficult than I had expected, but the treasure of the experience was fair compensation.', N'Jim Haberl')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (64, N'By their very nature, patience and enthusiam are at odds.', N'Jim Haberl')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (65, N'There is nothing more rewarding than taking a risk and succeeding.', N'Jim Haberl')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (66, N'All cities have the same basic mixture of humanity -- they all have aspects of beauty and ugliness - all have at least one Church and one jail.', N'David Levien')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (67, N'The guy was harder to read than a Chinese Bible.', N'David Levien')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (68, N'Anyone who climbs [mountaineering] understands the relation of pleasure to risk and the great joy of escaping hardships you have brought upon yourself.', N'Chip Brown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (69, N'Left unshackled, individual human greed will always lead to equilibriums which benefit the few at the expense of the many and of society as a whole, for example the income inequalites of the West, and thus the need for Government regulations.', N'Walter V - influenced by Dambisa Moyo')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (70, N'If you want to go quickly, go alone. If you want to go far, go together.', N'African proverb')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (71, N'The positive use of free time is doing what you want as opposed to doing what you feel obligated to do.', N'Adapted from Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (72, N'Too much of, too many of, and/or doing what you "want" too often results in what you "want" becoming what you don''t what. Just as "more" is "less", or turning a hobbie into a job ruins the hobbie.', N'Walter V - influenced by Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (73, N'Action is a great restorer and builder of confidence. Inaction is not only the result, but the cause, of fear. Perhaps the action you take will be successful; perhaps different action or adjustments will have to follow. But any action is better than no action at all.', N'Norman Vincent Peale')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (74, N'Conditions are never perfect so if doing something is important to you prepare as best as you can and then proceed to do it realizing you might have to correct course along the way.', N'Walter V - influenced by Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (75, N'Above all, do not lose your desire to walk. Every day I walk myself into a state of well-being and walk away from every illness.', N'Soren Kierkegaard, the 19th-century Danish philosopher')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (76, N'If I could tell the story in words, I wouldn''t need to lug around a camera.', N'Lewis Hine')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (77, N'Very good is the enemy of great.', N'Bono')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (78, N'I am more afraid of not living than I am of dying.', N'Ruth Anne Kocour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (79, N'Just because you love the mountains doesn''t mean the mountains love you.', N'Lou Whittaker')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (80, N'Getting to the top is optional. Getting down is mandatory.', N'Ed Viesturs')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (81, N'Someday is a disease that will take your dreams to the grave with you.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (82, N'Money is multiplied in practical value depending on the number of W''s you control in your life: WHAT you do, WHEN you do it, WHERE you do it, and with WHOM you do it.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (83, N'After years of repetitive work, you will often need to dig hard to find your passions, redefine your dreams, and revive hobbies.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (84, N'Learning to ignore things is one of the great paths to inner peace.', N'Robert J Sawyer')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (85, N'Lack of time is actually a lack of priorities.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (86, N'Limit tasks to the few important (80/20) to shorten work time, and shorten work time (allow less time for a task) to limit tasks to the important (Parkinson''s Law).', N'Adapted from Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (87, N'Requiring a lot of time does not make a task important.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (88, N'Doing something unimportant well does not make it important.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (89, N'Most people will choose unhappiness over uncertainty.', N'Timothy Ferriss')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (90, N'Before the development of tourism, travel was conceived to be like study, and its fruits were considered to be the adornment of the mind and the formation of the judgement.', N'Paul Fussell,')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (91, N'Human beings have the capacity to learn to want almost any conceivable material object. Given, then, the emergence of a modern industrial culture capable of producing almost anything, the time is ripe for opening the storehouse of infinite "need"!... It is the modern Pandora''s box, and its plagues are loose upon the world.', N'Jules Henry')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (92, N'Whoever came up with the expression, "It''s better to give than to receive", must have been talking about bad news.', N'Author Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (93, N'Real happiness comes from spending time doing things you enjoy the most, not from earning more money.', N'Yaro Starak')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (94, N'There is no greater wonder in the Mountain Scenery than the tendency it has to shorten the distance to the eye and lengthen it to the feet!', N'Nathaniel Langford')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (95, N'Rather than reacting with anger, react with amusement. Similarly approach a problem with curiosity rather than confusion.', N'Walter VanderHeide')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (96, N'Travel is fatal to prejudice, bigotry, and narrow-mindedness, and many of our people need it sorely on these accounts. Broad, wholesome, charitable views of men and things cannot be acquired by vegetating in one little corner of the earth all one''s lifetime.', N'Mark Twain')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (97, N'One of nature''s greatest beauties is the way fresh snow covers the world in a perfect blanket of crystalline white. Snow replaces sharp angles with gentle curves, and clings to surfaces to form ghostly silhouettes.', N'Paul Fearing')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (98, N'Our growing softness, our increasing lack of physical fitness, is a menace to our security. We do not want in the United States a nation of spectators. We want a nation of participants in the vigorous life. This is not a matter which can be settled, of course, from Washington. It is really a matter which starts with each individual family.', N'John F Kennedy, Dec 1960')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (99, N'As odd as it sounds, I feel like my car in some ways inhibits my autonomy. It’s a drug that, though it might boost my performance, I have come to rely a little too heavily on. It’s an insulating, dulling layer between me and what’s going on around me.', N'Tristan Higbee')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (100, N'We knocked the bastard off.', N'Hillary, 1953 Then in 2003 Hillary said, It is not the mountain we conquer but ourselves')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (101, N'There is no unhappiness like the misery of sighting land (and work) again after a cheerful, careless voyage.', N'Mark Twain')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (102, N'There are only three sports: bullfighting, motor racing, and mountaineering; all the rest are merely games.', N'Ernest Hemingway')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (103, N'It is easy to make a climb more difficult, but aside from thorough preparation, it is perhaps impossible to make a climb easier.', N'Steve Bell')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (104, N'Often he who does too much, does too little.', N'Italian Proverb')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (105, N'Success is to be measured not so much by the position that one has reached in life as by the obstacles which one has overcome while trying to succeed.', N'Brooker T Washington')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (106, N'True heroism is remarkably sober, very undramatic.', N'Aruthur Ashe')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (107, N'We are shaped and fashioned by what we love.', N'Goethe')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (108, N'Natural systems are priceless in value and nearly impossible to replace, but they are cheap to maintain. ALL you have to do is defend them.', N'Stuart Brand')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (109, N'I use the technoloy of men of today, I drive their cars, I listen to their music, I understand their laws, but my heart is in the wilderness.', N'Inspired by Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (110, N'To truly know the mountains, one should go to meet them as one would meet a sweetheart, alone.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (111, N'Once a man has lived with mountains you can''t offer him a home with a prairie dog.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (112, N'Begin to depend on no one but yourself. The fewer people whom you trust, the fewer on whom you rely, the better for you.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (113, N'A man who travels with another is only half as watchful as when traveling alone, and often less than half, for a part of his attention is diverted by his companion.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (114, N'Man needs so little, yet he begins wanting so much.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (115, N'...igenuity, the gift that goes beyond learning.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (116, N'Sometimes we have the dream but we are not ourselves ready for the dream. We have to grow to meet it.', N'Louis L''amour')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (117, N'Kindness is the one commodity of which you should spend more than you earn.', N'TN Tiemeyer')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (118, N'Fear is the thief of dreams.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (119, N'If the grass looks greener on the other side, it’s because they take care of it.', N'Cecil Selig')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (120, N'He was too smart to fit any sterotype', N'Eric Schlosser')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (121, N'Wilderness draws its beauty from the absence of people, attracts people, and then slowly loses its appeal.', N'Adapted from Eric Schlosser')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (122, N'Complex systems that don''t work were derived from simple systems that worked just fine!', N'Murphys Law')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (123, N'The secret of change is to focus all of your energy, not on fighting the old, but on building the new.', N'Socrates')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (124, N'...and accordingly all experience hath shewn, that mankind are more disposed to suffer, while evils are sufferable, than to right themselves by abolishing the forms to which they are accustomed.', N'Declaration of Independence')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (125, N'When a man who is honestly mistaken hears the truth, he will either quit being mistaken or cease to be honest.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (126, N'What compels a man to leave hearth and home and venture into the embrace of Nature where danger and discomfort are the commenest forms of wildlife? It is nothing but a love for Creation and for all the creatures in it.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (127, N'Camping is simple life reduced to actual practice.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (128, N'The competitive principle is responsible for much that is evil. It tends to build, help, or promote the one (or the few) at the expense of the many. By being competive we strive to down others so we can be on top. Being competitive causes us to see others (the competition) as the enemy and something to defeat rather than seeing them as our brothers that we should help.', N'Modified by Walter from an Unknown source')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (129, N'It has been said that good judgement comes from experience, but experience comes from a lack of judgement.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (130, N'Unfortunately millions of people toil their life away in pursuit of power, perfectionism, control, status, and possessions. There’s a word for these people, unhappy.', N'Dan Baker')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (131, N'We do not describe the world we see, we see the world we describe.', N'Dan Baker')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (132, N'Modern medicine is focused on fighting disease instead of building health.', N'Dan Baker')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (133, N'Some people let themselves get stuck in jobs just because the jobs are easy or safe, but an easy or safe job without satisfaction is the hardest job of all.', N'Dan Baker')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (134, N'My mind is not for rent.', N'Rush')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (135, N'Writing is one way of making the world our own, and walking is another.', N'Geoff Nicholson')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (136, N'I no longer manage business or purse money beyond what I need.', N'Steve Vaught')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (137, N'If you would attain to what your are not yet, you must always be displeased by what you are. For where you are pleased with yourself, there you have remained.', N'St Augustine')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (138, N'The pace of walking is also the pace of thought.', N'Geoff Nicholson')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (139, N'Walking makes us healthier, and happier, and it keeps us fit.', N'Adapted from Geoff Nicholson')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (140, N'An expedition must plan and act in a manner which will enable it to withstand some bad luck.', N'Howard Snyder')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (141, N'Mountaineering equipement should be treated as though one''s life depended upon it - because of course it does.', N'Howard Snyder')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (142, N'To those who have struggled with them, the mountains reveal beauties that they will not disclose to those who make no effort. That is the reward the mountains give to effort. And it is because they have so much to give and give it so lavishly to those who will wrestle with them that men love the mountains and go back to them again and again. The mountains reserve their choice gifts for those who stand upon their summits.', N'Sir Francis Younghusband')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (143, N'If an object was designed well in the first place I will not tire of it.', N'Valerie Murray')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (144, N'Materialism is mistaking quantity with quality.', N'Margaret Atwood')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (145, N'Thrift is about buying less by buying well.', N'Adapted from Janice Lindsay')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (146, N'In the thirteenth century to be thrity meant you were doing well. By the nineteeth century the meaning had shifted to mean good economic management. By the twentieth century if was associated with frugality and both thirft and frugality had taken on a similiar conotation to stinginess. However to be thrity is to thrive.', N'Adapted from Marjorie Harris')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (147, N'Speaking of money, it is really about doing more with less, and that translates to you having control of your life.', N'Adapted from Margaret Atwood')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (148, N'Being good with money means you always have some, you''re always ahead of the game even if it''s just a tiny bit ahead.', N'Adapted from Margaret Atwood')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (149, N'I want the liberty of thinking and believing as I please.', N'Joseph Smith')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (150, N'Satan is the author of complexity.', N'Marion D Hanks')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (151, N'How are you to imagine anything if the images are always provided for you? Twenty-fours hours a day for the rest of our lives, the powers that be are hard at work dumbing us to death. This is a marketing holocaust. So to defend ourselves, and fight against assimilating this dullness into our thought processes, we must learn to read. To stimulate our own imagination, to cultivate our own consciousness, our own belief systems. We all need skills to defend, to preserve, our own minds.', N'From the movie Detachment')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (152, N'You are difficulty when you tell the truth, when you want what you want, when you have integrity, and when you will not sell out.', N'Chris Robinson (of the Black Crowes)')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (153, N'Politics is the lowest level of intellect.', N'Author Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (154, N'Give me six hours to chop down a tree and I will spend the first four sharpening the axe.', N'Author Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (155, N'People with good intentions make promises, and people with good character keep them.', N'Author Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (156, N'The purpose of bureaucracy is to compensate for incompetence and lack of discipline.', N'Jim Collins')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (157, N'I am in competition with no one.  I run my own race. I have no desire to play the game of being better than anyone. I just aim to improve to be better than I was before.  That is me, and I am free.', N'Unknown')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (158, N'Find work you love. If you can not do that, then find a job where you love the people.', N'Thor Harris')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (159, N'Do not seek security, seek adventure. It is better to live 30 years full of adventure than a hundred years safe in the corner.', N'Jim Rohn')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (160, N'Always keep your mind open — but not so open that your brains fall out!', N'Scottish Proverb')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (161, N'I hear and I forget. I see and I remember. I do and I understand.', N'Confucius')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (162, N'Life can only be understood backwards; but it must be lived forwards', N'Soren Kierkegaard')
GO

SET IDENTITY_INSERT [dbo].[Quotes] OFF
GO
ALTER TABLE [dbo].[MountainSummitLog]  WITH CHECK ADD  CONSTRAINT [FK_MountainSummitLog_Mountains] FOREIGN KEY([MountainID])
REFERENCES [dbo].[Mountains] ([Id])
GO
ALTER TABLE [dbo].[MountainSummitLog] CHECK CONSTRAINT [FK_MountainSummitLog_Mountains]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Bands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bands] ON 

GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (1, N'Meat Loaf')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (2, N'The Police')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (3, N'Rod Steward')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (4, N'Moody Blues')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (5, N'Simple Minds')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (6, N'Steve Miller Band')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (7, N'Sex Pistols')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (8, N'The Knack')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (9, N'Human League')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (10, N'The Grateful Dead')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (11, N'Golden Earring')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (12, N'Eagles')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (13, N'Fleetwood Mac')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (14, N'Dokken')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (15, N'INXS')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (16, N'3 Doors Down')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (17, N'Accept')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (18, N'Supertramp')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (19, N'AC/DC')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (20, N'Aerosmith')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (21, N'Airbourne')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (22, N'Alice in Chains')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (23, N'Angel')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (24, N'Anthrax')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (25, N'Apocalyptica')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (26, N'April Wine')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (27, N'30 Seconds to Mars')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (28, N'Asia')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (29, N'Asking Alexandria')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (30, N'Audioslave')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (31, N'Babys')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (32, N'Bachman-Turner Overdrive')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (33, N'Bad Company')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (34, N'Bad English')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (35, N'Band of Skulls')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (36, N'The Beatles')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (37, N'Jeff Beck')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (38, N'Pat Benatar')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (39, N'Bethlehem')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (40, N'Billy Talent')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (41, N'Biohazard')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (42, N'The Black Crowes')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (43, N'The Black Keys')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (44, N'Black Sabbath')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (45, N'Black Stone Cherry')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (46, N'Black Summer')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (47, N'Black Veil Brides')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (48, N'Blackfoot')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (49, N'Blackout')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (50, N'Blasphemy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (51, N'Blind Guardian')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (52, N'Blue Cheer')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (53, N'Blue Oyster Cult')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (54, N'Breaking Benjamin')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (55, N'Bon Jovi')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (56, N'Borknagar')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (57, N'Boston')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (58, N'Boulder')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (59, N'David Bowie')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (60, N'Budgie')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (61, N'Buffalo')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (62, N'Burning Brides')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (63, N'Bush')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (64, N'Cacophony')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (65, N'Cactus')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (66, N'Candlebox')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (67, N'Candlemass')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (68, N'Candy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (69, N'Carcass')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (70, N'Cathedral')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (71, N'Cheap Trick')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (72, N'Chilliwack')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (73, N'The Choirboys ')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (74, N'Cinderella')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (75, N'The Clash')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (76, N'Clutch')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (77, N'Collective Soul')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (78, N'Comeback Kid')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (79, N'Alice Cooper')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (80, N'Crazy Horse')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (81, N'Cream')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (82, N'Creed')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (83, N'Crowbar')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (84, N'The Cult')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (85, N'Damn Yankees')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (86, N'Daniel Band')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (87, N'Danzig')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (88, N'Deep Purple')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (89, N'Def Leppard')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (90, N'Deftones')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (91, N'Dio')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (92, N'Disciple')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (93, N'The Doors')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (94, N'Europe')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (95, N'Extreme')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (96, N'Fahrenheit')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (97, N'Faith No More')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (98, N'FireHouse')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (99, N'The Firm')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (100, N'Foghat')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (101, N'Foo Fighters')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (102, N'Lita Ford')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (103, N'Foreigner')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (104, N'Free')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (105, N'Fuel ')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (106, N'Godsmack')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (107, N'Gojira')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (108, N'Gorky Park')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (109, N'Guardian')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (110, N'The Guess Who')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (111, N'Guns N'' Roses')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (112, N'Heart')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (113, N'Heavy Metal Kids')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (114, N'Jimi Hendrix')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (115, N'Hole')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (116, N'Electric Light Orchestra')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (117, N'Incubus')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (118, N'Iron Butterfly')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (119, N'Iron Maiden')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (120, N'Jackyl')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (121, N'Jane''s Addiction')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (122, N'Jethro Tull')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (123, N'Joan Jett')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (124, N'Joan Jett and the Blackhearts')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (125, N'Job for a Cowboy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (126, N'Journey')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (127, N'Judas Priest')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (128, N'Kansas')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (129, N'Karavan')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (130, N'Kid Rock')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (131, N'The Kinks')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (132, N'KISS')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (133, N'Korn')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (134, N'Lenny Kravitz')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (135, N'Kreator')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (136, N'Krieg')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (137, N'Led Zeppelin')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (138, N'Limp Bizkit')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (139, N'Linkin Park')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (140, N'Live')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (141, N'Living Colour')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (142, N'Loverboy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (143, N'Lynyrd Skynyrd')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (144, N'Machine Head')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (145, N'Mad Max')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (146, N'Manowar')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (147, N'Marilyn Manson')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (148, N'Megadeth')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (149, N'Metallica')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (150, N'Ministry')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (151, N'Midnight Oil')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (152, N'The Misfits')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (153, N'Kim Mitchell')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (154, N'Molly Hatchet')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (155, N'Eddie Money')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (156, N'Motley Crue')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (157, N'Motorhead')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (158, N'Mountain')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (159, N'Moxy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (160, N'Mr. Big')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (161, N'My Chemical Romance')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (162, N'My Darkest Days')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (163, N'My Dying Bride')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (164, N'Nazareth')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (165, N'New York Dolls')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (166, N'Nickelback')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (167, N'Nine Inch Nails')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (168, N'Nirvana')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (169, N'Night Ranger')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (170, N'Ted Nugent')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (171, N'Obscurity')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (172, N'The Offspring')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (173, N'Ozzy Osbourne')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (174, N'Robert Palmer')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (175, N'Pantera')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (176, N'Paradise Lost')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (177, N'Pearl Jam')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (178, N'Pelican')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (179, N'Pentagram')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (180, N'Pixies')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (181, N'Poison')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (182, N'Iggy Pop')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (183, N'Pretty Maids')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (184, N'The Pretty Reckless')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (185, N'Primus')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (186, N'Puddle of Mudd')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (187, N'Queen')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (188, N'Queensryche')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (189, N'Quiet Riot')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (190, N'Rage Against the Machine')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (191, N'Rainbow')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (192, N'Ram Jam')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (193, N'Rammstein')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (194, N'The Ramones')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (195, N'Ratt')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (196, N'Rattling Bones')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (197, N'Razorback')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (198, N'REO Speedwagon')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (199, N'The Rolling Stones')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (200, N'Rollins Band')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (201, N'Root')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (202, N'The Runaways')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (203, N'Running Wild')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (204, N'Rush')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (205, N'Saint Vitus')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (206, N'Salem')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (207, N'Santana')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (208, N'Scorpions')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (209, N'Seether')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (210, N'Seventh Angel')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (211, N'Shihad')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (212, N'Shinedown')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (213, N'Sick Puppies')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (214, N'Siddharta')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (215, N'Sign')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (216, N'Silvertide')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (217, N'Skid Row')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (218, N'Slade')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (219, N'Slayer')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (220, N'The Smashing Pumpkins')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (221, N'Smile')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (222, N'The Killers')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (223, N'The Smithereens')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (224, N'Sonic Reign')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (225, N'Sonic Youth')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (226, N'Soundgarden')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (227, N'Spinal Tap')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (228, N'Status Quo')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (229, N'Steppenwolf')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (230, N'Stereophonics')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (231, N'Stiff Valentine')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (232, N'Stone Temple Pilots')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (233, N'The Stooges')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (234, N'Styx')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (235, N'Suicide Silence')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (236, N'Sweet')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (237, N'Switchfoot')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (238, N'Sympathy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (239, N'System of a Down')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (240, N'The Tea Party')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (241, N'Tenacious D')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (242, N'Tesla')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (243, N'Theatres des Vampires')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (244, N'Them Crooked Vultures')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (245, N'Thin Lizzy')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (246, N'Three Days Grace')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (247, N'Thronar')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (248, N'TNT')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (249, N'Toad the Wet Sprocket')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (250, N'Tool')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (251, N'Toto')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (252, N'The Tragically Hip')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (253, N'Triumph')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (254, N'Trivium')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (255, N'Trooper')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (256, N'Trust')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (257, N'Twisted Sister')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (258, N'UFO')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (259, N'Vagabond')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (260, N'Van Halen')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (261, N'Velvet Revolver')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (262, N'Vengeance Rising')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (263, N'W.A.S.P.')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (264, N'Warlock')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (265, N'Warrant')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (266, N'Muse')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (267, N'Whitesnake')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (268, N'White Lion')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (269, N'The White Stripes')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (270, N'White Zombie')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (271, N'The Who')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (272, N'The Wildhearts')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (273, N'Winger')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (274, N'Witchcraft')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (275, N'Wolfmother')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (276, N'Yes')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (277, N'Neil Young')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (278, N'Ozark Mountain Daredevils')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (279, N'You Me at Six')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (280, N'Young Guns')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (281, N'Frank Zappa')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (282, N'Warren Zevon')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (283, N'Rob Zombie')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (284, N'ZZ Top')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (285, N'U2')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (286, N'Doobie Brothers')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (287, N'Van Morrison ')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (288, N'Village People')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (289, N'Creedence Clearwater Revival')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (290, N'Keane')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (291, N'The Cars')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (292, N'Gin Blossoms')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (293, N'John Mellencamp')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (294, N'Blind Melon')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (295, N'The Go-Go''s')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (296, N'Crash Test Dummies')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (297, N'Soul Asylum')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (298, N'Cyndi Lauper')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (299, N'AirBourne')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (300, N'Beach Boys')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (301, N'Tom Petty')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (302, N'Billy Idol')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (303, N'Red Hot Chilli Peppers')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (304, N'Duran Duran')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (305, N'The Allman Brothers Band')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (306, N'Genesis')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (307, N'Bruce Springsteen')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (308, N'Talking Heads')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (309, N'Steely Dan')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (310, N'Bob Dylan')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (311, N'Television')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (312, N'T. Rex')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (313, N'Crosby, Stills, Nash & Young')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (314, N'The Band')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (315, N'Tom Waits')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (316, N'Mike Oldfield')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (317, N'Lou Reed')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (318, N'Blondie')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (319, N'Patti Smith')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (320, N'Elvis Presley')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (321, N'Bee Gees')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (322, N'Kansas')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (323, N'Dire Straits')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (324, N'Elton John')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (325, N'Chicago')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (326, N'Eurythmics')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (327, N'Depeche Mode')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (328, N'The Cure')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (329, N'The Smiths')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (330, N'Beastie Boys')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (331, N'Pretenders')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (332, N'Men At Work')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (333, N'The Bangles')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (334, N'The B 52''s')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (335, N'Pet Shop Boys')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (336, N'Frankie Goes to Hollywood')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (337, N'Survivor')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (338, N'Spandau Ballet')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (339, N'Bog Seger')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (340, N'New Order')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (341, N'UB40')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (342, N'Banarama')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (343, N'A Flock of Seagulls')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (344, N'Devo')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (345, N'Erasure')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (346, N'Adam and The Ants')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (347, N'Richard Marx')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (348, N'Berlin')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (349, N'Howard Jones')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (350, N'Belinda Carlisle')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (351, N'Mr. Mister')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (352, N'Alphaville')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (353, N'Rick Springfield')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (354, N'Thompson Twins')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (355, N'Crowded House')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (356, N'Elvis Costello')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (357, N'Men Without Hats')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (358, N'Bronski Beat')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (359, N'The Psychedelic Furs')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (360, N'10,000 Maniacs')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (361, N'Orchestral Manoeuvres in the Dark')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (362, N'Chris Isaak')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (363, N'Corey Hart')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (364, N'Silver Hart')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (365, N'''Til Tuesday')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (366, N'Mike & The Mechanics')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (367, N'Band Aid')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (368, N'Black Flag')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (369, N'Henry Rollins')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (370, N'The Hooters')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (371, N'Radiohead')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (372, N'Green Day')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (373, N'No Doubt')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (374, N'Blink-182')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (375, N'Lenny Kravitz')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (376, N'Barenaked Ladies')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (377, N'Cake')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (378, N'The Wallflowers')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (379, N'Everclear')
GO
INSERT [dbo].[Bands] ([Id], [Name]) VALUES (380, N'Jewel')
GO
SET IDENTITY_INSERT [dbo].[Bands] OFF
GO


GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ACDC] ON 

GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (1, N'Ain''t No Fun (Waiting Round to Be a Millionaire)')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (2, N'All Screwed Up')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (3, N'Anything Goes')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (4, N'Are You Ready')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (5, N'Baby  Please Don''t Go')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (6, N'Back in Black')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (7, N'Back in Business')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (8, N'Back Seat Confidential')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (9, N'Bad Boy Boogie')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (10, N'Badlands')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (11, N'Ballbreaker')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (12, N'Baptism by Fire')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (13, N'Beating Around the Bush')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (14, N'Bedlam in Belgium')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (15, N'Big Balls')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (16, N'Big Gun')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (17, N'Big Jack')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (18, N'Black Ice')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (19, N'Bonny')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (20, N'Boogie Man')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (21, N'Borrowed Time')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (22, N'Brain Shake')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (23, N'Breaking the Rules')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (24, N'Burnin''Alive')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (25, N'C.O.D.')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (26, N'Can I Sit Next to You Girl')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (27, N'Can''t Stand Still')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (28, N'Can''t Stop Rock ''n''Roll')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (29, N'Carry Me Home')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (30, N'Caught with Your Pants Down')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (31, N'Chase the Ace')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (32, N'Cold Hearted Man')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (33, N'Come and Get It')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (34, N'Cover You in Oil')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (35, N'Crabsody in Blue')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (36, N'Cyberspace')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (37, N'D.T.')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (38, N'Damned')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (39, N'Danger')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (40, N'Decibel')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (41, N'Deep in the Hole')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (42, N'Dirty Deeds Done Dirt Cheap')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (43, N'Dirty Eyes')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (44, N'Dog Eat Dog')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (45, N'Dogs of War')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (46, N'Down on the Borderline')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (47, N'Down Payment Blues')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (48, N'Emission Control')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (49, N'Evil Walks')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (50, N'Fire Your Guns')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (51, N'First Blood')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (52, N'Flick of the Switch')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (53, N'Fling Thing')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (54, N'Fly on the Wall')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (55, N'For Those About to Rock (We Salute You)')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (56, N'Get It Hot')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (57, N'Gimme a Bullet')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (58, N'Girls Got Rhythm')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (59, N'Give It Up')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (60, N'Given the Dog a Bone')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (61, N'Go Down')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (62, N'Go Zone')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (63, N'Gone Shootin''')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (64, N'Goodbye and Good Riddance to Bad Luck')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (65, N'Got Some Rock & Roll Thunder')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (66, N'Got You by the Balls')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (67, N'Guns for Hire')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (68, N'Hail Caesar')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (69, N'Hard as a Rock')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (70, N'Hard Times')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (71, N'Have a Drink on Me')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (72, N'Heatseeker')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (73, N'Hell Ain''t a Bad Place to Be')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (74, N'Hell or High Water')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (75, N'Hells Bells')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (76, N'High Voltage')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (77, N'Highway to Hell')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (78, N'Hold Me Back')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (79, N'House of Jazz')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (80, N'If You Dare')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (81, N'If You Want Blood (You''ve Got It)')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (82, N'I''m a Rebel')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (83, N'Inject the Venom')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (84, N'It''s a Long Way to the Top (If You Wanna Rock ''n''Roll)')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (85, N'Jailbreak')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (86, N'Kicked in the Teeth')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (87, N'Kissin''Dynamite')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (88, N'Landslide')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (89, N'Let Me Put My Love Into You')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (90, N'Let There Be Rock')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (91, N'Let''s Get It Up')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (92, N'Let''s Make It')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (93, N'Little Lover')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (94, N'Live Wire')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (95, N'Love at First Feel')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (96, N'Love Bomb')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (97, N'Love Hungry Man')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (98, N'Love')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (99, N'Mean Streak')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (100, N'Meltdown')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (101, N'Miss Adventure')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (102, N'Mistress for Christmas')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (103, N'Money Made')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (104, N'Moneytalks')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (105, N'Nervous Shakedown')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (106, N'Nick of Time')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (107, N'Night of the Long Knives')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (108, N'Night Prowler')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (109, N'Overdose')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (110, N'Play Ball')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (111, N'Playing with Girls')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (112, N'Problem Child')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (113, N'Put the Finger on You')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (114, N'R.I.P. (Rock in Peace)')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (115, N'Ride On')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (116, N'Riff Raff')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (117, N'Rising Power')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (118, N'Rock and Roll Ain''t Noise Pollution')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (119, N'Rock ''n''Roll Damnation')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (120, N'Rock ''n''Roll Dream')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (121, N'Rock ''n''Roll Singer')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (122, N'Rock ''n Roll Train')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (123, N'Rock or Bust')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (124, N'Rock the Blues Away')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (125, N'Rock the House')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (126, N'Rock Your Heart Out')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (127, N'Rocker')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (128, N'Rockin''in the Parlour')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (129, N'Rocking All the Way')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (130, N'Ruff Stuff')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (131, N'Safe in New York City')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (132, N'Satellite Blues')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (133, N'School Days')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (134, N'Send for the Man')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (135, N'Shake a Leg')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (136, N'Shake Your Foundations')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (137, N'She Likes Rock n Roll')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (138, N'She''s Got Balls')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (139, N'Shoot to Thrill')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (140, N'Shot Down in Flames')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (141, N'Shot of Love')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (142, N'Show Business')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (143, N'Sin City')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (144, N'Sink the Pink')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (145, N'Skies on Fire')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (146, N'Smash ''n''Grab')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (147, N'Snake Eye')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (148, N'Snowballed')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (149, N'Some Sin for Nuthin''')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (150, N'Soul Stripper')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (151, N'Spellbound')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (152, N'Spoilin''for a Fight')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (153, N'Squealer')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (154, N'Stand Up')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (155, N'Stick Around')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (156, N'Stiff Upper Lip')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (157, N'Stormy May Day')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (158, N'Sweet Candy')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (159, N'T.N.T.')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (160, N'That''s the Way I Wanna Rock ''n''Roll')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (161, N'The Furor')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (162, N'The Honey Roll')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (163, N'The Jack')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (164, N'The Razors Edge')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (165, N'There''s Gonna Be Some Rockin''')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (166, N'This House Is on Fire')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (167, N'This Means War')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (168, N'Thunderstruck')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (169, N'Touch Too Much')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (170, N'Two''s Up')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (171, N'Up to My Neck in You')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (172, N'Walk All Over You')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (173, N'War Machine')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (174, N'What Do You Do for Money Honey')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (175, N'What''s Next to the Moon')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (176, N'Wheels')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (177, N'Whiskey on the Rocks')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (178, N'Who Made Who')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (179, N'Whole Lotta Rosie')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (180, N'You Ain''t Got a Hold on Me')
GO
INSERT [dbo].[ACDC] ([Id], [Song]) VALUES (181, N'You Shook Me All Night Long')
GO
SET IDENTITY_INSERT [dbo].[ACDC] OFF
GO


SELECT max(id) as MaxId, count(song) as ACDC_Count
  FROM [Walter].[dbo].[ACDC]
  go

  SELECT max(id) as MaxId, count(Name) as Band_Count
  FROM [Walter].[dbo].Bands
  go
  
  SELECT max(id) as MaxId, count([Last Name]) as Contacts_Count
  FROM [Walter].[dbo].Contacts
  go

  
  
  SELECT max(id) as MaxId, count(Name) as Mountains_Count
  FROM [Walter].[dbo].Mountains
  go

    SELECT max(id) as MaxId, count(Id) as MountainSummitLog_Count
  FROM [Walter].[dbo].MountainSummitLog
  go

  
    SELECT max(id) as MaxId, count(Id) as Photos_Count
  FROM [Walter].[dbo].Photos
  go
  
    SELECT max(id) as MaxId, count(Id) as Quotes_Count
  FROM [Walter].[dbo].Quotes
