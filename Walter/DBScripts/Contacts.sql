USE [Walter]
GO

DROP TABLE [dbo].[Contacts]

GO

/****** Object:  Table [dbo].[Contacts]    Script Date: 10/17/2016 1:18:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET IDENTITY_INSERT [dbo].[Contacts] ON 

GO


INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (1, N'Alex', N'Mitchel', NULL, NULL, N'406.531.2054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (43, N'Anthony & Talya', N'Trunnell', NULL, NULL, N'801.709.9882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (44, N'Eric', N'Parker', NULL, NULL, N'425.750.3722', N'703.620.5249', N'3026 Foxmill Rd', N'Oakton', N'22124', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (45, N'Fran', N'Fernandez', NULL, N' Debbie', N'703.470.9648', N'703.281.3507', N'9554 Lagersfield Circle', N'Vienna', NULL, N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (46, N'Gabe', N'Diarte', NULL, NULL, N'801.668.5653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], 
[Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) 
VALUES (47, N'Gigi', N'Buettner', NULL, N' Lance Locke', N'801.245.0030', N'801.571.2435', N'2487 W. Midas Side Way', N'Riverton', N'84065', N'UT', N'USA', 
NULL, N'Marcy & Owen(?)')
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (56, N'Billy', N'Hancock Quarry', NULL, NULL, N'425.281.5455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (57, N'Jake', N'Moon', NULL, NULL, N'801.678.9481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (58, N'Jared', N'Ogden', NULL, N'Gabriela', N'540.809.5927', N'540.809.0773', N'10714 Wellington St.', N'Fredericksburg', N'22403', N'VA', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (59, N'Jason', N'Skinner', NULL, NULL, N'801.971.8884', N'801.278.5254', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], 
[Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) 
VALUES (60, N'Jeff', N'Moye', NULL, N'Kimiko', NULL, NULL, N'33 Beechwood Ave', N'Bogota', N'07603', N'NJ ', NULL, NULL, N'Tommy& Kenneth')
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (69, N'Jutta', N'Wood', NULL, NULL, N'403.653.3106', N'403.653.4356', N'Box 1323', N'Cardston', N'T0K 0K0', N'Alberta', N'Canada', NULL, NULL)
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (85, N'Lucilla', N'Tan', NULL, NULL, NULL, N'703.892.0796', N'2600 Crystal Dr Apt. 220', N'Arlington', N'22202', N'VA', N'USA', NULL, NULL)
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (140, N'William', N'DaBell', NULL, NULL, N'435.659.8620', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (146, N'Aaron', N'White', NULL, NULL, N'801.228.7979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (147, N'Taylor ', N'Barton ', NULL, NULL, N'801.678.4901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (148, N'Tara', N'Alba', NULL, NULL, N'801.318.6290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (149, N'Seth', N'Pacheco', NULL, NULL, N'571.455.0116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (150, N'Rob', N'Allen', NULL, NULL, N'801.602.1824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (151, N'Richard', N'Hilton', NULL, NULL, N'385.208.0241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (152, N'Michael ', N'Halls', NULL, NULL, N'801.850.2897', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (153, N'Michael ', N'Gibby', NULL, NULL, N'801.450.7989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (154, N'Matthew', N'Stack', NULL, NULL, N'571.283.2584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (155, N'Matthew', N'Hansen', NULL, NULL, N'208.390.1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (156, N'Ayne', N'Delgado', NULL, NULL, N'385.223.9786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (157, N'Jordan', N'Day', NULL, NULL, N'801.636.5330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (158, N'John', N'Harding', NULL, NULL, N'801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (159, N'Jeremy', N'Garner', NULL, NULL, N'208.709.6510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (160, N'Jeff', N'Quarry', NULL, NULL, N'801.380.8840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (161, N'Jason', N'Wardell', NULL, NULL, N'406.461.6392', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (162, N'Jacob', N'Mucklewicz', NULL, NULL, N'623.760.5107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (163, N'Hayes', N'Quarry', NULL, NULL, N'208.851.8287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (164, N'Hannah', N'VanderHeide', NULL, NULL, N'801.879.8207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (165, N'Glen', N'Miller', NULL, NULL, N'801.357.9891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (166, N'Gary', N'Quarry', NULL, NULL, N'801.836.5298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (167, N'Fred', N'Williams', NULL, NULL, N'801.231.0940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (168, N'Derek', N'Quarry', NULL, NULL, N'307.371.1034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (169, N'Cori', N'Quarry', NULL, NULL, N'801.404.4759', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (170, N'Brooke', N'VanderHeide', NULL, NULL, N'385.242.3162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (171, N'Brad', N'Quarry', NULL, NULL, N'801.592.5951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (172, N'Justin', N'Kerr', NULL, NULL, N'403.443.1527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) VALUES (173, N'Ron', N'Birrell', NULL, N'Kay', N'801.318.3004', NULL, N'92 E 1450 S', N'Orem', N'84058', N'UT', N'USA', NULL, NULL)
GO
INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) 
VALUES (174, N'Levon', N'Jensen', NULL, N'Alex', NULL, NULL, N'25 - 102 Ave', N'Kimberley', N'V1A 1A7', N'BC', N'Canada', NULL, NULL)
GO


/*

INSERT [dbo].[Contacts] ([Id], [First Name], [Last Name], [Middle Name], [Spouse], [Mobile Phone], [Home Phone], [Home Street], [Home City], [Home Postal Code], [Home State], [Home Country], [Nickname], [Notes]) 
VALUES (200, N'fff', N'Quarry', NULL, NULL, N'801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
*/


SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO


  SELECT max(id) as MaxId, count([Last Name]) as Contacts_Count
  FROM [Walter].[dbo].Contacts
  go