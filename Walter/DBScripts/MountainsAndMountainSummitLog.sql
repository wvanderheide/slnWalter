USE [Walter]
GO
/****** Object:  Table [dbo].[Mountains]    Script Date: 9/23/2015 2:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mountains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Elevation] [int] NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[State] [varchar](50) NULL,
	[Latitude] [decimal](30, 10) NULL,
	[Longitude] [decimal](30, 10) NULL,
	[MountainNote] [varchar](255) NULL,
 CONSTRAINT [PK_Mountains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MountainSummitLog]    Script Date: 9/23/2015 2:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MountainSummitLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MountainID] [int] NOT NULL,
	[SummitDate] [date] NULL,
	[SummitNote] [varchar](255) NULL,
 CONSTRAINT [PK_MountainSummitLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mountains] ON 

GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (1, N'Mount Timpanogos', 11749, N'USA', N'UT', CAST(40.3846000000 AS Decimal(30, 10)), CAST(-111.6360000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (2, N'Mount Lineham', 8950, N'Canada', N'Alberta', CAST(49.0696500000 AS Decimal(30, 10)), CAST(-114.0491200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (3, N'White Butte', 3507, N'USA', N'ND', CAST(46.3868000000 AS Decimal(30, 10)), CAST(-103.3021000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (4, N'Harney Peak', 7242, N'USA', N'SD', CAST(43.8661000000 AS Decimal(30, 10)), CAST(-103.5311000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (5, N'Mount Hawkins', 8839, N'Canada', N'Alberta', CAST(49.0696500000 AS Decimal(30, 10)), CAST(-114.0491200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (6, N'Mount Blakiston', 8950, N'Canada', N'Alberta', CAST(49.0939300000 AS Decimal(30, 10)), CAST(-114.0355100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (7, N'Bertha Peak', 8005, N'Canada', N'Alberta', CAST(49.0389000000 AS Decimal(30, 10)), CAST(-113.9444000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (8, N'Grandeur Peak', 8299, N'USA', N'UT', CAST(40.7070000000 AS Decimal(30, 10)), CAST(-111.7592000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (9, N'Squaw Peak', 7876, N'USA', N'UT', CAST(40.2720000000 AS Decimal(30, 10)), CAST(-111.6160000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (10, N'Panorama Point', 5429, N'USA', N'NE', CAST(41.0072000000 AS Decimal(30, 10)), CAST(-104.0305000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (11, N'Mount Tuscarora', 10660, N'USA', N'UT', CAST(40.5843800000 AS Decimal(30, 10)), CAST(-111.5987800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (12, N'Mount Wolverine', 10795, N'USA', N'UT', CAST(40.5854200000 AS Decimal(30, 10)), CAST(-111.6034100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (13, N'Patsy Marley', 10525, N'USA', N'UT', CAST(40.5881500000 AS Decimal(30, 10)), CAST(-111.6086300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (14, N'Cathedral Peak', 10911, N'USA', N'CA', CAST(37.8478000000 AS Decimal(30, 10)), CAST(-119.4047000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (15, N'Montgomery Peak', 13441, N'USA', N'CA', CAST(37.8380000000 AS Decimal(30, 10)), CAST(-118.3560000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (16, N'Boundary Peak', 13140, N'USA', N'NV', CAST(37.8461000000 AS Decimal(30, 10)), CAST(-118.3500000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (17, N'Mt. Olympus', 9026, N'USA', N'UT', CAST(40.6570000000 AS Decimal(30, 10)), CAST(-111.7700000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (18, N'Denali', 20320, N'USA', N'AK', CAST(63.0692700000 AS Decimal(30, 10)), CAST(-151.0077700000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (19, N'Monte Cristo', 11132, N'USA', N'UT', CAST(40.5912500000 AS Decimal(30, 10)), CAST(-111.6711400000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (20, N'Mt. Superior', 11040, N'USA', N'UT', CAST(40.5921500000 AS Decimal(30, 10)), CAST(-111.6669800000 AS Decimal(30, 10)), NULL)
GO
SET IDENTITY_INSERT [dbo].[Mountains] OFF
GO
SET IDENTITY_INSERT [dbo].[MountainSummitLog] ON 

GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (1, 1, CAST(N'1995-09-16' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (2, 1, CAST(N'2005-09-03' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (3, 1, CAST(N'2007-08-04' AS Date), N'Timponooke Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (4, 1, CAST(N'2008-08-09' AS Date), N'Snowfield')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (5, 1, CAST(N'2009-10-24' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (6, 1, CAST(N'2010-04-17' AS Date), N'Everest Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (7, 1, CAST(N'2011-06-25' AS Date), N'Primrose Cirque')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (8, 1, CAST(N'2012-10-26' AS Date), N'As part of full traverse')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (9, 1, CAST(N'2015-07-07' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (10, 2, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (11, 3, CAST(N'2015-05-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (12, 4, CAST(N'2015-05-30' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (13, 5, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (14, 6, CAST(N'2015-08-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (15, 7, CAST(N'2015-08-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (16, 8, CAST(N'2015-08-04' AS Date), N'West Slopes')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (17, 9, CAST(N'2006-06-17' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (18, 9, CAST(N'2006-11-25' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (19, 9, CAST(N'2007-12-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (20, 9, CAST(N'2008-09-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (21, 9, CAST(N'2008-12-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (22, 9, CAST(N'2009-05-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (23, 9, CAST(N'2009-10-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (24, 9, CAST(N'2010-01-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (25, 9, CAST(N'2010-02-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (26, 9, CAST(N'2010-11-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (27, 9, CAST(N'2011-06-05' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (28, 9, CAST(N'2011-08-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (29, 9, CAST(N'2012-02-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (30, 9, CAST(N'2012-11-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (31, 9, CAST(N'2013-02-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (32, 9, CAST(N'2013-10-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (33, 9, CAST(N'2014-03-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (34, 9, CAST(N'2014-12-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (35, 9, CAST(N'2015-04-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (36, 9, CAST(N'2015-07-05' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (37, 10, CAST(N'2015-05-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (38, 11, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (39, 11, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (40, 12, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (41, 12, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (42, 12, CAST(N'2009-04-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (43, 13, CAST(N'2008-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (44, 13, CAST(N'2009-04-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (45, 13, CAST(N'2012-12-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (46, 13, CAST(N'2013-03-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (47, 13, CAST(N'2013-03-23' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (48, 13, CAST(N'2013-04-20' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (49, 13, CAST(N'2015-03-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (50, 13, CAST(N'2015-03-19' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (51, 14, CAST(N'2014-10-07' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (52, 15, CAST(N'2014-10-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (53, 16, CAST(N'2014-10-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (54, 17, CAST(N'2008-05-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (55, 17, CAST(N'2011-12-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (56, 17, CAST(N'2014-09-15' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (57, 17, CAST(N'2012-06-16' AS Date), N'West Slabs to N. Peak, and scramble to S. Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (58, 17, CAST(N'2013-05-27' AS Date), N'Geurts Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (59, 18, CAST(N'2014-06-07' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (60, 19, CAST(N'2008-05-16' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (61, 19, CAST(N'2012-08-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (62, 19, CAST(N'2014-05-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (63, 20, CAST(N'2014-04-05' AS Date), N'Within 150 feet of top, electric storm')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (64, 20, CAST(N'2014-05-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (65, 20, CAST(N'2012-08-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (66, 20, CAST(N'2009-02-21' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (67, 20, CAST(N'2008-05-16' AS Date), N'')
GO
SET IDENTITY_INSERT [dbo].[MountainSummitLog] OFF
GO
ALTER TABLE [dbo].[MountainSummitLog]  WITH CHECK ADD  CONSTRAINT [FK_MountainSummitLog_Mountains] FOREIGN KEY([MountainID])
REFERENCES [dbo].[Mountains] ([id])
GO
ALTER TABLE [dbo].[MountainSummitLog] CHECK CONSTRAINT [FK_MountainSummitLog_Mountains]
GO
