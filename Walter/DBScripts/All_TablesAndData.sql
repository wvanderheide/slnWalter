USE [Walter]
GO
/****** Object:  Table [dbo].[Mountains]    Script Date: 10/6/2015 1:51:10 PM ******/
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
/****** Object:  Table [dbo].[MountainSummitLog]    Script Date: 10/6/2015 1:51:10 PM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 10/6/2015 1:51:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[URL] [varchar](200) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
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
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (21, N'Y-Mountain', 8568, N'USA', N'UT', CAST(40.2543400000 AS Decimal(30, 10)), CAST(-111.6104900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (22, N'Mount Raymond', 10241, N'USA', N'UT', CAST(40.6580000000 AS Decimal(30, 10)), CAST(-111.7010000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (23, N'Iztaccihuatl', 17159, N'Mexico', N'Puebla', CAST(19.1833000000 AS Decimal(30, 10)), CAST(-111.7010000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (24, N'Pico de Orizaba', 18490, N'Mexico', N'Mexico', CAST(19.0219000000 AS Decimal(30, 10)), CAST(-97.2675000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (25, N'Maple Mountain', 9089, N'USA', N'UT', CAST(40.2372000000 AS Decimal(30, 10)), CAST(-111.5972000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (26, N'Lady Mountain', 6945, N'USA', N'UT', CAST(37.2543000000 AS Decimal(30, 10)), CAST(-112.9665000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (27, N'Aries Butte', 6492, N'USA', N'UT', CAST(37.2325000000 AS Decimal(30, 10)), CAST(-112.9077000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (28, N'Pingora Peak', 11884, N'USA', N'UT', CAST(42.7792000000 AS Decimal(30, 10)), CAST(-109.2247000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (29, N'Sundial Peak', 10320, N'USA', N'UT', CAST(40.5971200000 AS Decimal(30, 10)), CAST(-111.6846700000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (30, N'Kings Peak', 13528, N'USA', N'UT', CAST(40.7765000000 AS Decimal(30, 10)), CAST(-110.3723000000 AS Decimal(30, 10)), N'US State High Point')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (31, N'Jeff Davis Peak', 12771, N'USA', N'NV', CAST(38.9886000000 AS Decimal(30, 10)), CAST(-114.2960000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (32, N'Jefferson Needle', 12630, N'USA', N'NV', CAST(38.9852000000 AS Decimal(30, 10)), CAST(-114.3056600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (33, N'Wheeler Peak', 13063, N'USA', N'NV', CAST(38.9861000000 AS Decimal(30, 10)), CAST(-114.3125000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (34, N'Teewinot Mtn', 12325, N'USA', N'WY', CAST(43.7472000000 AS Decimal(30, 10)), CAST(-110.7792000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (35, N'El Capitan Peak', 8085, N'USA', N'TX', CAST(31.8770000000 AS Decimal(30, 10)), CAST(-104.8580000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (36, N'Guadalupe Peak', 8749, N'USA', N'TX', CAST(31.8914000000 AS Decimal(30, 10)), CAST(-104.8600000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (37, N'Deseret Peak', 11031, N'USA', N'UT', CAST(40.4597000000 AS Decimal(30, 10)), CAST(-112.6263000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (38, N'Wheeler Peak', 13161, N'USA', N'NM', CAST(36.5625000000 AS Decimal(30, 10)), CAST(-105.4140000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (39, N'Mount Walter', 13141, N'USA', N'NM', CAST(36.5567000000 AS Decimal(30, 10)), CAST(-105.4164000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (40, N'Little Water Peak', 9605, N'USA', N'UT', CAST(40.6719000000 AS Decimal(30, 10)), CAST(-111.6277000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (41, N'Lake Mountain', 7690, N'USA', N'UT', CAST(40.2750000000 AS Decimal(30, 10)), CAST(-111.9398000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (42, N'North Timpanogos', 11441, N'USA', N'UT', CAST(40.4162000000 AS Decimal(30, 10)), CAST(-111.6669000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (43, N'Bomber Peak', 11347, N'USA', N'UT', CAST(40.4041700000 AS Decimal(30, 10)), CAST(-111.6577800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (44, N'South Timpanogos', 11722, N'USA', N'UT', CAST(40.3844200000 AS Decimal(30, 10)), CAST(-111.6364500000 AS Decimal(30, 10)), N'(aka Second Summit)')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (45, N'Buffalo Peak', 8029, N'USA', N'UT', CAST(40.2828000000 AS Decimal(30, 10)), CAST(-111.6167200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (46, N'Provo Peak', 11068, N'USA', N'UT', CAST(40.2440000000 AS Decimal(30, 10)), CAST(-111.5560000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (47, N'Ben Lomond', 9712, N'USA', N'UT', CAST(41.3631500000 AS Decimal(30, 10)), CAST(-111.9606800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (48, N'Willard Peak', 9764, N'USA', N'UT', CAST(41.3829900000 AS Decimal(30, 10)), CAST(-111.9742900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (49, N'Crystal  Peak', 7106, N'USA', N'UT', CAST(38.7908000000 AS Decimal(30, 10)), CAST(-113.6003000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (50, N'Notch  Peak', 9654, N'USA', N'UT', CAST(39.1430000000 AS Decimal(30, 10)), CAST(-113.4090000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (51, N'Granite Peak', 12799, N'USA', N'MT', CAST(45.1633000000 AS Decimal(30, 10)), CAST(-109.8072000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (52, N'Devil''s Castle', 10920, N'USA', N'UT', CAST(40.5660300000 AS Decimal(30, 10)), CAST(-111.6110100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (53, N'Mount Ogden', 9572, N'USA', N'UT', CAST(41.2000000000 AS Decimal(30, 10)), CAST(-111.8820000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (54, N'Grand Teton', 13770, N'USA', N'WY', CAST(43.7411000000 AS Decimal(30, 10)), CAST(-110.8020000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (55, N'London Spire', 8400, N'USA', N'UT', CAST(41.3988300000 AS Decimal(30, 10)), CAST(-111.9986200000 AS Decimal(30, 10)), N'Elevation, Lat/Long are estimates')
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (56, N'Lone Peak', 11253, N'USA', N'UT', CAST(40.5268000000 AS Decimal(30, 10)), CAST(-111.7562800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (57, N'Ibapah Peak', 12087, N'USA', N'UT', CAST(39.8282000000 AS Decimal(30, 10)), CAST(-113.9190000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (58, N'South Thunder', 11154, N'USA', N'UT', CAST(40.5333000000 AS Decimal(30, 10)), CAST(-111.7340000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (59, N'Chipman Peak', 10954, N'USA', N'UT', CAST(40.5226000000 AS Decimal(30, 10)), CAST(-111.7230000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (60, N'Upwop', 11137, N'USA', N'UT', CAST(40.5326200000 AS Decimal(30, 10)), CAST(-111.7130200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (61, N'Pfeifferhorn', 11326, N'USA', N'UT', CAST(40.5337000000 AS Decimal(30, 10)), CAST(-111.7052000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (62, N'Box Elder Peak', 11101, N'USA', N'UT', CAST(40.4900000000 AS Decimal(30, 10)), CAST(-111.6960000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (63, N'Loafer Peak', 10687, N'USA', N'UT', CAST(39.9762000000 AS Decimal(30, 10)), CAST(-111.6230000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (64, N'Santaquin Peak', 10685, N'USA', N'UT', CAST(39.9830000000 AS Decimal(30, 10)), CAST(-111.6230000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (65, N'Reynolds Peak', 9422, N'USA', N'UT', CAST(40.6622000000 AS Decimal(30, 10)), CAST(-111.6458000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (66, N'Mt. Whitney', 14497, N'USA', N'CA', CAST(36.5786000000 AS Decimal(30, 10)), CAST(-118.2930000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (67, N'First Gemini', 13387, N'USA', N'UT', CAST(40.7531900000 AS Decimal(30, 10)), CAST(-110.3592100000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (68, N'Second  Gemini', 13306, N'USA', N'UT', CAST(40.7551200000 AS Decimal(30, 10)), CAST(-110.3691200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (69, N'South Kings Peak', 13512, N'USA', N'UT', CAST(40.7658000000 AS Decimal(30, 10)), CAST(-110.3778000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (70, N'Bald Mountain', 11947, N'USA', N'UT', CAST(40.6990000000 AS Decimal(30, 10)), CAST(-110.9020000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (71, N'Cascade', 10908, N'USA', N'UT', CAST(40.3070000000 AS Decimal(30, 10)), CAST(-111.5880000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (72, N'Broads Fork Twin Peaks', 11330, N'USA', N'UT', CAST(40.5939000000 AS Decimal(30, 10)), CAST(-111.7203000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (73, N'Sunrise Peak', 11275, N'USA', N'UT', CAST(40.5911000000 AS Decimal(30, 10)), CAST(-111.7105000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (74, N'Mt. Dromedary', 11107, N'USA', N'UT', CAST(40.5931000000 AS Decimal(30, 10)), CAST(-111.7061000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (75, N'Corral Mountain', 10435, N'USA', N'UT', CAST(40.2285000000 AS Decimal(30, 10)), CAST(-111.5540200000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (76, N'Flagstaff Mountain', 10651, N'USA', N'UT', CAST(40.6049300000 AS Decimal(30, 10)), CAST(-111.6444800000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (77, N'Flat Top Mountain', 10620, N'USA', N'UT', CAST(40.3726000000 AS Decimal(30, 10)), CAST(-112.1881000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (78, N'Lewiston Peak', 10411, N'USA', N'UT', CAST(40.3602100000 AS Decimal(30, 10)), CAST(-112.1939300000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (79, N'Humphreys  Peak', 12633, N'USA', N'AZ', CAST(35.3464000000 AS Decimal(30, 10)), CAST(-111.6778000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (80, N'West Mountain', 9070, N'USA', N'UT', CAST(35.3464000000 AS Decimal(30, 10)), CAST(-111.6778000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (81, N'Lightening Peak', 10055, N'USA', N'UT', CAST(40.2821800000 AS Decimal(30, 10)), CAST(-111.5218600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (82, N'Mt Rainier', 14411, N'USA', N'WA', CAST(46.8528000000 AS Decimal(30, 10)), CAST(-121.7590000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (83, N'Mt Hood', 11239, N'USA', N'OR', CAST(45.3736000000 AS Decimal(30, 10)), CAST(-121.6925000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (84, N'Obelisk', 10516, N'USA', N'UT', CAST(40.5451100000 AS Decimal(30, 10)), CAST(-111.7079500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (85, N'Mount Nebo', 11928, N'USA', N'UT', CAST(39.8108000000 AS Decimal(30, 10)), CAST(-111.7644000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (86, N'Elephant Butte', 5653, N'USA', N'UT', CAST(38.6958000000 AS Decimal(30, 10)), CAST(-109.5401000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (87, N'Kessler Peak', 10403, N'USA', N'UT', CAST(40.6252000000 AS Decimal(30, 10)), CAST(-111.6680000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (88, N'Spanish Fork Peak', 10192, N'USA', N'UT', CAST(40.0880000000 AS Decimal(30, 10)), CAST(-111.5270000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (89, N'Peak 10009', 10009, N'USA', N'UT', CAST(40.6383200000 AS Decimal(30, 10)), CAST(-111.5774500000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (90, N'Gobblers Knob', 10246, N'USA', N'UT', CAST(40.6708000000 AS Decimal(30, 10)), CAST(-111.6830000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (91, N'Mt. Massive', 14421, N'USA', N'CO', CAST(39.1872000000 AS Decimal(30, 10)), CAST(-106.4447000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (92, N'Mt. Elbert', 14433, N'USA', N'CO', CAST(39.1178000000 AS Decimal(30, 10)), CAST(-106.4447000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (93, N'Borah Peak', 12662, N'USA', N'ID', CAST(44.1372000000 AS Decimal(30, 10)), CAST(-113.7794000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (94, N'Gannett Peak', 13804, N'USA', N'WY', CAST(43.1844000000 AS Decimal(30, 10)), CAST(-109.6530000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (95, N'Angels Landing', 5785, N'USA', N'UT', CAST(37.2694000000 AS Decimal(30, 10)), CAST(-112.9486000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (96, N'North Peak', 11174, N'USA', N'UT', CAST(39.8385000000 AS Decimal(30, 10)), CAST(-111.7496000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (97, N'East Peak', 11044, N'USA', N'UT', CAST(40.2481900000 AS Decimal(30, 10)), CAST(-111.5465900000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (98, N'Red Baldy', 11171, N'USA', N'UT', CAST(40.5395000000 AS Decimal(30, 10)), CAST(-111.6681000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (99, N'White Baldy', 11321, N'USA', N'UT', CAST(40.5330000000 AS Decimal(30, 10)), CAST(-111.6805000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (100, N'Grand Canyon', 8421, N'USA', N'AZ', CAST(36.1974600000 AS Decimal(30, 10)), CAST(-112.0519600000 AS Decimal(30, 10)), NULL)
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
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (56, 17, CAST(N'2014-09-15' AS Date), N'Joe B''s 500th')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (57, 17, CAST(N'2012-06-16' AS Date), N'West Slabs ')
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
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (68, 21, CAST(N'2007-10-06' AS Date), N'West Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (69, 21, CAST(N'2008-05-24' AS Date), N'West and East Peaks')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (70, 21, CAST(N'2013-11-11' AS Date), N'East Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (71, 21, CAST(N'2014-04-19' AS Date), N'East Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (72, 22, CAST(N'2014-03-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (73, 23, CAST(N'2013-11-30' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (74, 24, CAST(N'2013-11-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (75, 25, CAST(N'2013-11-11' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (76, 25, CAST(N'2011-01-06' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (77, 25, CAST(N'2007-10-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (78, 26, CAST(N'2013-11-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (79, 27, CAST(N'2013-11-01' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (80, 28, CAST(N'2013-09-10' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (81, 29, CAST(N'2013-09-06' AS Date), N'11th Hour Route')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (82, 29, CAST(N'2012-06-08' AS Date), N'North Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (83, 29, CAST(N'2010-05-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (84, 30, CAST(N'2006-09-02' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (85, 30, CAST(N'2013-08-31' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (86, 30, CAST(N'2011-09-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (87, 30, CAST(N'2008-07-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (88, 31, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (89, 32, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (90, 33, CAST(N'2013-06-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (91, 34, CAST(N'2013-06-21' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (92, 35, CAST(N'2013-06-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (93, 36, CAST(N'2013-06-08' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (94, 37, CAST(N'2013-06-01' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (95, 37, CAST(N'2006-07-22' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (96, 38, CAST(N'2013-04-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (97, 39, CAST(N'2013-04-27' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (98, 40, CAST(N'2013-03-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (99, 1, CAST(N'2015-09-25' AS Date), N'Aspen Grove Trail')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (100, 41, CAST(N'2013-02-03' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (101, 42, CAST(N'2008-05-31' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (102, 42, CAST(N'2009-05-09' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (103, 42, CAST(N'2012-04-21' AS Date), N'Cold Fusion Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (104, 42, CAST(N'2012-10-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (105, 42, CAST(N'2011-05-16' AS Date), N'Grunge Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (106, 42, CAST(N'2010-06-15' AS Date), N'Grunge Couloir')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (107, 43, CAST(N'2012-10-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (108, 43, CAST(N'2008-10-18' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (109, 44, CAST(N'2008-08-09' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (110, 44, CAST(N'2010-07-04' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (111, 44, CAST(N'2012-10-26' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (112, 45, CAST(N'2012-04-15' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (113, 45, CAST(N'2012-10-21' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (114, 46, CAST(N'2012-09-29' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (115, 46, CAST(N'2009-06-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (116, 46, CAST(N'2008-08-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (117, 46, CAST(N'2006-09-30' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (118, 47, CAST(N'2012-09-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (119, 48, CAST(N'2012-09-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (120, 49, CAST(N'2012-09-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (121, 50, CAST(N'2012-09-01' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (122, 51, CAST(N'2012-08-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (123, 52, CAST(N'2008-03-22' AS Date), N'East Castle')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (124, 52, CAST(N'2008-04-05' AS Date), N'East Castle')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (125, 52, CAST(N'2012-08-11' AS Date), N'Portable Darkness route')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (126, 53, CAST(N'2012-07-28' AS Date), N'')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (127, 54, CAST(N'2012-07-21' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (128, 55, CAST(N'2012-07-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (129, 56, CAST(N'2007-08-23' AS Date), N'Schoolhouse Springs')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (130, 56, CAST(N'2010-03-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (131, 56, CAST(N'2011-05-05' AS Date), N'NE Coulior')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (132, 56, CAST(N'2012-06-29' AS Date), N'Open Book route')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (133, 57, CAST(N'2012-06-23' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (134, 58, CAST(N'2008-06-14' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (135, 58, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (136, 59, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (137, 59, CAST(N'2009-07-31' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (138, 60, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (139, 61, CAST(N'2012-05-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (140, 61, CAST(N'2010-06-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (141, 61, CAST(N'2009-07-31' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (142, 61, CAST(N'2007-09-15' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (143, 62, CAST(N'2012-05-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (144, 62, CAST(N'2010-03-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (145, 62, CAST(N'2008-06-21' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (146, 63, CAST(N'2012-04-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (147, 64, CAST(N'2012-04-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (148, 64, CAST(N'2006-07-29' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (149, 65, CAST(N'2012-03-17' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (150, 64, CAST(N'2012-03-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (152, 66, CAST(N'2011-09-23' AS Date), N'East Buttress')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (153, 67, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (154, 68, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (155, 69, CAST(N'2011-09-04' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (156, 70, CAST(N'2011-07-15' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (157, 71, CAST(N'2011-07-02' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (158, 71, CAST(N'2011-01-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (159, 71, CAST(N'2008-06-11' AS Date), N'Upper Pole Coulior')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (160, 71, CAST(N'2007-07-14' AS Date), N'South Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (161, 72, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (162, 72, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (163, 72, CAST(N'2008-09-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (164, 73, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (165, 73, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (166, 74, CAST(N'2011-05-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (167, 74, CAST(N'2009-05-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (168, 74, CAST(N'2008-05-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (169, 75, CAST(N'2011-03-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (170, 76, CAST(N'2009-01-10' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (171, 76, CAST(N'2011-02-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (172, 77, CAST(N'2011-02-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (173, 78, CAST(N'2011-02-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (174, 79, CAST(N'2010-11-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (175, 80, CAST(N'2007-07-07' AS Date), N'Drove up')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (176, 80, CAST(N'2010-08-17' AS Date), N'Drove up')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (177, 81, CAST(N'2010-08-13' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (178, 82, CAST(N'2010-07-17' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (179, 83, CAST(N'2010-07-12' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (180, 84, CAST(N'2010-06-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (181, 85, CAST(N'2010-05-08' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (182, 85, CAST(N'2008-11-01' AS Date), N'Traversed all 3 peaks')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (183, 85, CAST(N'2007-09-03' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (184, 85, CAST(N'2005-10-15' AS Date), N'South Peak')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (185, 86, CAST(N'2010-04-11' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (186, 87, CAST(N'2010-03-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (187, 88, CAST(N'2010-03-06' AS Date), N'Crowd Ridge')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (188, 88, CAST(N'2009-11-07' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (189, 88, CAST(N'2006-08-26' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (190, 89, CAST(N'2010-01-23' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (191, 90, CAST(N'2010-01-16' AS Date), N'Peak 10224')
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (192, 90, CAST(N'2009-11-28' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (193, 91, CAST(N'2009-09-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (194, 92, CAST(N'2009-09-18' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (195, 93, CAST(N'2009-09-05' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (196, 94, CAST(N'2009-08-19' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (197, 95, CAST(N'2009-07-24' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (198, 96, CAST(N'2009-06-27' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (199, 97, CAST(N'2009-06-20' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (200, 98, CAST(N'2008-12-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (201, 98, CAST(N'2009-06-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (202, 99, CAST(N'2009-06-06' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([id], [MountainID], [SummitDate], [SummitNote]) VALUES (203, 100, CAST(N'2009-06-01' AS Date), N'R2R2R')
GO
SET IDENTITY_INSERT [dbo].[MountainSummitLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (1, N'Green River', N'https://picasaweb.google.com/107082436175597733376/GreenRiver?authkey=Gv1sRgCPiPidiusezFNA&feat=directlink', CAST(N'2015-08-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (2, N'Hawkins Horseshoe', N'https://picasaweb.google.com/107082436175597733376/HawkinsHorseshoe?authuser=0&authkey=Gv1sRgCKWak93H3Yqp9gE&feat=directlink', CAST(N'2015-08-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (3, N'Bertha Peak', N'https://picasaweb.google.com/107082436175597733376/BerthaPeak?authuser=0&authkey=Gv1sRgCI-Bj9775JDSDw&feat=directlink', CAST(N'2015-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (4, N'Alberta', N'https://picasaweb.google.com/107082436175597733376/AlbertaSummer2015?authuser=0&authkey=Gv1sRgCNfBhPGm4NyqtAE&feat=directlink', CAST(N'2015-08-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (5, N'NE, SD, ND', N'https://picasaweb.google.com/107082436175597733376/NESDNDRoadTripMay2015?authuser=0&authkey=Gv1sRgCNnVwre_-ves2AE&feat=directlink', CAST(N'2015-05-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (6, N'Englestead', N'https://picasaweb.google.com/107082436175597733376/EnglesteadCanyon?authuser=0&authkey=Gv1sRgCMeyodCygbbRCA&feat=directlink', CAST(N'2014-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (7, N'Denali', N'https://picasaweb.google.com/107082436175597733376/DenaliShortVersion?authuser=0&authkey=Gv1sRgCIHKvfjbh7-zowE&feat=directlink', CAST(N'2014-06-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (8, N'Coyote Gulch', N'https://picasaweb.google.com/107082436175597733376/CoyoteGulch?authuser=0&authkey=Gv1sRgCJ-a7LTvlPytiQE&feat=directlink', CAST(N'2014-05-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (9, N'Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RockCanyonInFebruary?authuser=0&authkey=Gv1sRgCKaHrq_fuJChhQE&feat=directlink', CAST(N'2014-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (10, N'Ouray', N'https://picasaweb.google.com/107082436175597733376/OurayCO?authuser=0&authkey=Gv1sRgCJqEmquxlKakcw&feat=directlink', CAST(N'2014-01-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (11, N'AF Canyon', N'https://picasaweb.google.com/107082436175597733376/AFCanyon?authuser=0&authkey=Gv1sRgCM2Y7ZjJjZXW6QE&feat=directlink', CAST(N'2014-01-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (12, N'Millers Thriller', N'https://picasaweb.google.com/107082436175597733376/MillersThriller?authuser=0&authkey=Gv1sRgCNnetqeYl67MFA&feat=directlink', CAST(N'2014-01-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (13, N'Mexico City', N'https://picasaweb.google.com/107082436175597733376/MexicoCity?authuser=0&authkey=Gv1sRgCPvnsvKJs6fTHQ&feat=directlink', CAST(N'2013-12-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (14, N'Denali NP', N'https://picasaweb.google.com/107082436175597733376/DenaliNP?authuser=0&authkey=Gv1sRgCMfYm8akyJK7_AE&feat=directlink', CAST(N'2014-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (15, N'Reception', N'https://picasaweb.google.com/107082436175597733376/Reception?authuser=0&authkey=Gv1sRgCP_yq62IlPCZhgE&feat=directlink', CAST(N'2014-01-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (16, N'Wedding', N'https://picasaweb.google.com/107082436175597733376/Wedding?authuser=0&authkey=Gv1sRgCNub-Mbr1MG82QE&feat=directlink', CAST(N'2013-12-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (17, N'Teotihuacan', N'https://picasaweb.google.com/107082436175597733376/Teotihuacan?authuser=0&authkey=Gv1sRgCK7vmaXC_snuXg&feat=directlink', CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (18, N'Iztaccihuatl', N'https://picasaweb.google.com/107082436175597733376/Iztaccihuatl?authuser=0&authkey=Gv1sRgCIWa6Lut3pSlfg&feat=directlink', CAST(N'2013-11-30' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (19, N'Orizaba', N'https://picasaweb.google.com/107082436175597733376/Orizaba?authuser=0&authkey=Gv1sRgCOCIwJuUjtWUkAE&feat=directlink', CAST(N'2013-11-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (20, N'Levons Wedding', N'https://picasaweb.google.com/107082436175597733376/LevonsWedding?authuser=0&authkey=Gv1sRgCPyHlY_k3OOJ5AE&feat=directlink', CAST(N'2015-08-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (21, N'The Finger', N'https://picasaweb.google.com/107082436175597733376/FingerRockCanyon?authuser=0&authkey=Gv1sRgCJaxyoTGkc3JAQ&feat=directlink', CAST(N'2015-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (22, N'Fifth Water Hot Springs', N'https://picasaweb.google.com/107082436175597733376/FifthWaterHotSprings?authuser=0&authkey=Gv1sRgCKj036SP5LeTaw&feat=directlink', CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (23, N'Squash Head', N'https://picasaweb.google.com/107082436175597733376/SquashHeadSantaquinnCanyon?authuser=0&authkey=Gv1sRgCMKZmtzRre705QE&feat=directlink', CAST(N'2014-01-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (24, N'Katelyn and Jon', N'https://picasaweb.google.com/107082436175597733376/KatelynAndJonSWedding?authuser=0&authkey=Gv1sRgCKGG2fjz_eaQ2wE&feat=directlink', CAST(N'2014-03-08' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (25, N'The G', N'https://picasaweb.google.com/107082436175597733376/GHike?authuser=0&authkey=Gv1sRgCKCk3_DQlvG_Wg&feat=directlink', CAST(N'2014-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (26, N'Hockey', N'https://picasaweb.google.com/107082436175597733376/ProvoDivCHockeyNinjaTurtles?authuser=0&authkey=Gv1sRgCOaXm_X1osHNiAE&feat=directlink', CAST(N'2014-03-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (27, N'Cassidy Arch', N'https://picasaweb.google.com/107082436175597733376/CassidyArch?authuser=0&authkey=Gv1sRgCLWdpfjers6DvgE&feat=directlink', CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (28, N'Maple Canyon', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon03?authuser=0&authkey=Gv1sRgCLWctqX0g5X75gE&feat=directlink', CAST(N'2014-09-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (29, N'Fire', N'https://picasaweb.google.com/107082436175597733376/Fire?authuser=0&authkey=Gv1sRgCN-i8cet9fm9cQ&feat=directlink', CAST(N'2014-04-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (30, N'Boundardy/Montgomery', N'https://picasaweb.google.com/107082436175597733376/BoundardyPeakAndMontgomeryPeak?authuser=0&authkey=Gv1sRgCISby87j56XqcA&feat=directlink', CAST(N'2014-10-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (31, N'Tuolumne', N'https://picasaweb.google.com/107082436175597733376/Tuolumne?authuser=0&authkey=Gv1sRgCIKNxPnc5c33nwE&feat=directlink', CAST(N'2014-10-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (32, N'Yosemite', N'https://picasaweb.google.com/107082436175597733376/Yosemite?authuser=0&authkey=Gv1sRgCN26pqDe1pPNYA&feat=directlink', CAST(N'2014-10-08' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (33, N'Timp', N'https://picasaweb.google.com/107082436175597733376/TimpWithKLAS?authuser=0&authkey=Gv1sRgCIGamdOdlOyBYw&feat=directlink', CAST(N'2015-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (34, N'Duplex Rebuild', N'https://picasaweb.google.com/107082436175597733376/DuplexRebuild?authuser=0&authkey=Gv1sRgCJrYlPXutujz4AE&feat=directlink', CAST(N'2015-07-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (35, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleNov192013?authuser=0&authkey=Gv1sRgCI7V75Xy2u-ArQE&feat=directlink', CAST(N'2013-11-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (36, N'Zion Canyon', N'https://picasaweb.google.com/107082436175597733376/ZionCanyon?authuser=0&authkey=Gv1sRgCKHl29P5npnnpAE&feat=directlink', CAST(N'2013-11-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (37, N'Red Rock and Prophecy', N'https://picasaweb.google.com/107082436175597733376/RedRockAndProphecy?authuser=0&authkey=Gv1sRgCLPY7tWtzenw4QE&feat=directlink', CAST(N'2013-10-26' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (38, N'Kamps Ridge', N'https://picasaweb.google.com/107082436175597733376/KampsRidge?authuser=0&authkey=Gv1sRgCLSy7pvzjf3FTQ&feat=directlink', CAST(N'2013-10-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (39, N'Indian Creek', N'https://picasaweb.google.com/107082436175597733376/IndianCreek?authuser=0&authkey=Gv1sRgCJv4m9mYuYCCSA&feat=directlink', CAST(N'2013-10-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (40, N'Red Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RedRockCanyon?authuser=0&authkey=Gv1sRgCMn_p__p3K7gwQE&feat=directlink', CAST(N'2013-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (41, N'City of Rocks', N'https://picasaweb.google.com/107082436175597733376/CityOfRocks?authuser=0&authkey=Gv1sRgCOadrbnshcODVw&feat=directlink', CAST(N'2013-09-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (42, N'Cirque of the Towers', N'https://picasaweb.google.com/107082436175597733376/CirqueOfTheTowers?authuser=0&authkey=Gv1sRgCK7XnZ7m8-aqtQE&feat=directlink', CAST(N'2013-09-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (43, N'Kings Peak', N'https://picasaweb.google.com/107082436175597733376/KingsPeak?authuser=0&authkey=Gv1sRgCPiBmLqH2JnsiwE&feat=directlink', CAST(N'2013-08-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (44, N'Subway', N'https://picasaweb.google.com/107082436175597733376/TheSubway?authuser=0&authkey=Gv1sRgCLXEqbDlms7NVA&feat=directlink', CAST(N'2013-07-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (45, N'Maple', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon02?authuser=0&authkey=Gv1sRgCJCYoq3pk8nr3wE&feat=directlink', CAST(N'2013-07-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (46, N'Great Basin', N'https://picasaweb.google.com/107082436175597733376/GreatBasinNationalPark?authuser=0&authkey=Gv1sRgCLO4irWX2uP8SQ&feat=directlink', CAST(N'2013-06-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (47, N'Teewinot', N'https://picasaweb.google.com/107082436175597733376/Teewinot?authuser=0&authkey=Gv1sRgCOzDvauAyMyQSQ&feat=directlink', CAST(N'2013-06-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (48, N'Guadalupe Peak', N'https://picasaweb.google.com/107082436175597733376/GuadalupePeak?authuser=0&authkey=Gv1sRgCOiUkryTksPXRQ&feat=directlink', CAST(N'2013-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (49, N'Deseret Peak', N'https://picasaweb.google.com/107082436175597733376/DeseretPeakSpringSkiing?authuser=0&authkey=Gv1sRgCMmjwqq35_H90AE&feat=directlink', CAST(N'2013-06-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (50, N'Geurts Ridge', N'https://picasaweb.google.com/107082436175597733376/GeurtsRidge?authuser=0&authkey=Gv1sRgCLqJ4PWXor-mJg&feat=directlink', CAST(N'2013-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (51, N'Shed', N'https://picasaweb.google.com/107082436175597733376/ShedProjectSpring2013?authuser=0&authkey=Gv1sRgCJ_tmcLO75OXaA&feat=directlink', CAST(N'2013-05-26' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (52, N'Moab', N'https://picasaweb.google.com/107082436175597733376/MoabMtnBiking?authuser=0&authkey=Gv1sRgCL2O69vW6fW3hAE&feat=directlink', CAST(N'2013-05-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (53, N'Wheeler, NM', N'https://picasaweb.google.com/107082436175597733376/WheelerPeakNM?authuser=0&authkey=Gv1sRgCM781Y6ow7n0tQE&feat=directlink', CAST(N'2013-04-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (54, N'Ice', N'https://picasaweb.google.com/107082436175597733376/IceClimbing?authuser=0&authkey=Gv1sRgCIDb8tC3xOCEvAE&feat=directlink', CAST(N'2013-02-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (55, N'GWI', N'https://picasaweb.google.com/107082436175597733376/GWI?authuser=0&authkey=Gv1sRgCLzbuerw-Z7fgQE&feat=directlink', CAST(N'2013-02-22' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (56, N'Henry''s Fork', N'https://picasaweb.google.com/107082436175597733376/HenrySForkSkiTourCamping?authuser=0&authkey=Gv1sRgCLn81YL8qpOrowE&feat=directlink', CAST(N'2013-02-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (57, N'Lake Mountain', N'https://picasaweb.google.com/107082436175597733376/LakeMountain?authkey=Gv1sRgCPjmhfDatOON4QE', CAST(N'2013-02-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (58, N'Ouray', N'https://picasaweb.google.com/107082436175597733376/OurayIceParkUncompahgreGorge?authuser=0&authkey=Gv1sRgCL6f7MOBw4yRYQ&feat=directlink', CAST(N'2013-01-26' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (59, N'Maple Ice', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon?authuser=0&authkey=Gv1sRgCInU5NrRhbfEogE&feat=directlink', CAST(N'2013-01-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (60, N'Henrys Fork', N'https://picasaweb.google.com/116738453430397687681/HenrysFork?authuser=0&authkey=Gv1sRgCIOR2P7KpvaAJg&feat=directlink', CAST(N'2012-01-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (61, N'Alpine Loop', N'https://picasaweb.google.com/116738453430397687681/AlpineLoop?authuser=0&authkey=Gv1sRgCJHEhvK9kNOcLA&feat=directlink', CAST(N'2012-02-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (62, N'Powder Parks', N'https://picasaweb.google.com/116738453430397687681/PowderParks?authuser=0&authkey=Gv1sRgCPmN8fne9N750gE&feat=directlink', CAST(N'2012-03-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (63, N'Reynolds Peak', N'https://picasaweb.google.com/116738453430397687681/ReynoldsPeakOnSkis?authuser=0&authkey=Gv1sRgCNbhutbX7IeIoAE&feat=directlink', CAST(N'2012-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (64, N'Reynolds Peak', N'https://picasaweb.google.com/116738453430397687681/ReynoldsPeakOnSnowshoes?authuser=0&authkey=Gv1sRgCOOX4obur9fIOA&feat=directlink', CAST(N'2012-03-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (65, N'Dollar Lake', N'https://picasaweb.google.com/116738453430397687681/DollarLake?authuser=0&authkey=Gv1sRgCNLy16SvrNnz_gE&feat=directlink', CAST(N'2012-03-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (66, N'Santaquin/Loafer', N'https://picasaweb.google.com/116738453430397687681/SantaquinLoafer?authuser=0&authkey=Gv1sRgCK38wtHR4r7G6wE&feat=directlink', CAST(N'2012-04-08' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (67, N'Family', N'https://picasaweb.google.com/116738453430397687681/Family?authuser=0&authkey=Gv1sRgCMnt_6ndiNGtCw&feat=directlink', CAST(N'2012-04-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (68, N'Cold Fusion', N'https://picasaweb.google.com/116738453430397687681/ColdFusionCouliorNTimp?authuser=0&authkey=Gv1sRgCKq5tqzJ4c78QA&feat=directlink', CAST(N'2012-04-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (69, N'Sleigh Runner', N'https://picasaweb.google.com/116738453430397687681/BoxElderViaTheSleighRunnerMay52012?authuser=0&authkey=Gv1sRgCKuoirm45byDkQE&feat=directlink', CAST(N'2012-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (70, N'Beat Out', N'https://picasaweb.google.com/116738453430397687681/BeatOut?authuser=0&authkey=Gv1sRgCMyz2dPzxo-uiwE&feat=directlink', CAST(N'2012-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (71, N'11th Hour', N'https://picasaweb.google.com/116738453430397687681/Sundial11thHourJune82012?authuser=0&authkey=Gv1sRgCKf4kYGz_9yEIA&feat=directlink', CAST(N'2012-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (72, N'West Slabs', N'https://picasaweb.google.com/116738453430397687681/WestSlabsMountOlympus?authuser=0&authkey=Gv1sRgCMaq0-_W8rXqxAE&feat=directlink', CAST(N'2012-06-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (73, N'Ibapah', N'https://picasaweb.google.com/116738453430397687681/IbapahJune232012?authuser=0&authkey=Gv1sRgCNbNooH_5dqLSQ&feat=directlink', CAST(N'2012-06-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (74, N'Lone Peak Cirque', N'https://picasaweb.google.com/116738453430397687681/LonePeakCirque?authuser=0&authkey=Gv1sRgCP3Qo978r6K_Kw&feat=directlink', CAST(N'2012-06-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (75, N'London Spire', N'https://picasaweb.google.com/116738453430397687681/LondonSpire?authuser=0&authkey=Gv1sRgCOiYku3f0MrNBg&feat=directlink', CAST(N'2012-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (76, N'Trilogy Buttress', N'https://picasaweb.google.com/107082436175597733376/TrilogyButtressRockCanyon?authuser=0&authkey=Gv1sRgCIOM6JzalovFkAE&feat=directlink', CAST(N'2012-07-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (77, N'The Grand', N'https://picasaweb.google.com/107082436175597733376/TheGrandTeton?authuser=0&authkey=Gv1sRgCMfT2onZmejVxgE&feat=directlink', CAST(N'2012-07-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (78, N'Mt Ogden', N'https://picasaweb.google.com/107082436175597733376/MtOgdenEastFace?authuser=0&authkey=Gv1sRgCPizlbvMp531-QE&feat=directlink', CAST(N'2012-07-30' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (79, N'SE Ridge', N'https://picasaweb.google.com/107082436175597733376/MtSuperiorSERidge?authuser=0&authkey=Gv1sRgCO_x6-Lj7Y-K_AE&feat=directlink', CAST(N'2012-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (80, N'Portable Darkness', N'https://picasaweb.google.com/107082436175597733376/DevilsCastle?authuser=0&authkey=Gv1sRgCOPhv9OFidarxAE&feat=directlink', CAST(N'2012-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (81, N'Granite Peak', N'https://picasaweb.google.com/107082436175597733376/GranitePeak?authuser=0&authkey=Gv1sRgCL-Vg4Wh89OpAQ&feat=directlink', CAST(N'2012-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (82, N'Notch Peak', N'https://picasaweb.google.com/107082436175597733376/NotchPeak?authuser=0&authkey=Gv1sRgCKyFwYmXhoaddQ&feat=directlink', CAST(N'2012-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (83, N'Crystal Peak', N'https://picasaweb.google.com/107082436175597733376/CrystalPeak?authuser=0&authkey=Gv1sRgCJaopLmL7_mSag&feat=directlink', CAST(N'2012-09-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (84, N'Ben Lomond', N'https://picasaweb.google.com/107082436175597733376/WillardPeakAndBenLomond?authuser=0&authkey=Gv1sRgCJ3m5vS3hKSa1AE&feat=directlink', CAST(N'2012-09-08' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (85, N'Ball Joints', N'https://picasaweb.google.com/107082436175597733376/BallJoints?authuser=0&authkey=Gv1sRgCJ3JgOWIk435IA&feat=directlink', CAST(N'2012-09-22' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (86, N'Provo Peak', N'https://picasaweb.google.com/107082436175597733376/ProvoPeak?authuser=0&authkey=Gv1sRgCLu3y9KmwO-q4gE&feat=directlink', CAST(N'2012-09-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (87, N'Scheels', N'https://picasaweb.google.com/107082436175597733376/Scheels?authuser=0&authkey=Gv1sRgCL2p1Iy5sOKcpgE&feat=directlink', CAST(N'2012-10-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (88, N'Timp Traverse', N'https://picasaweb.google.com/107082436175597733376/TimpTraverse?authuser=0&authkey=Gv1sRgCPy-jISfmta4qQE&feat=directlink', CAST(N'2012-10-26' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (89, N'Grand Staircase-Escalante', N'https://picasaweb.google.com/107082436175597733376/GrandStaircaseEscalanteNationalMonument?authuser=0&authkey=Gv1sRgCNbMmfGe-fDbXA&feat=directlink', CAST(N'2012-11-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (90, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec92012?authuser=0&authkey=Gv1sRgCLHxvYaBo8DFRw&feat=directlink', CAST(N'2012-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (91, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec152012?authuser=0&authkey=Gv1sRgCJKbruXstvaRAw&feat=directlink', CAST(N'2012-12-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (92, N'Joe''s', N'https://picasaweb.google.com/107082436175597733376/JoeSValley?authuser=0&authkey=Gv1sRgCO-o35nL3_XAhQE&feat=directlink', CAST(N'2012-12-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (93, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec202012?authuser=0&authkey=Gv1sRgCM6sl8-nifjT9AE&feat=directlink', CAST(N'2012-12-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (94, N'Alberta', N'https://picasaweb.google.com/107082436175597733376/ChristmasVacation2012?authuser=0&authkey=Gv1sRgCLXNmp7fmdnuDg&feat=directlink', CAST(N'2012-12-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (96, N'Waterton', N'https://picasaweb.google.com/116738453430397687681/Christmas2011?authuser=0&authkey=Gv1sRgCIzwhOjnl7L_RA&feat=directlink', CAST(N'2011-12-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (97, N'Millers Thriller', N'https://picasaweb.google.com/116738453430397687681/MillerSThrillerIceClimbingDec102011?authuser=0&authkey=Gv1sRgCIWwp_WltM3KEA&feat=directlink', CAST(N'2011-12-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (98, N'Mt. Olympus', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5685293069915951377&authkey=Gv1sRgCNzQ-ZammZvBkgE&feat=email', CAST(N'2011-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (99, N'Mt. Whitney', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5656407684202190945&authkey=Gv1sRgCMSAjev_kreTmQE&feat=email', CAST(N'2011-09-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (100, N'Dirty Dash', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5657162868728651969&authkey=Gv1sRgCMajvLm-4PmC5wE&feat=email', CAST(N'2011-09-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (101, N'S. Kings', N'https://picasaweb.google.com/116738453430397687681/SouthKingsPeakEtc?authkey=Gv1sRgCJjc36X-ya65zgE&feat=email#', CAST(N'2011-09-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (102, N'Timpanogos', N'https://picasaweb.google.com/116738453430397687681/Timpanogos?authkey=Gv1sRgCP7n-uuJuOC5Lw&feat=email#', CAST(N'2011-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (103, N'Triple Traverse', N'https://picasaweb.google.com/116738453430397687681/TripleTraverse?authkey=Gv1sRgCMyClcKVpOb0MQ&feat=email#', CAST(N'2011-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (104, N'Grunge', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5607474293751586817&authkey=Gv1sRgCKf0zJ7Qt46pbg&feat=email', CAST(N'2011-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (105, N'Lone Peak', N'https://picasaweb.google.com/lh/sredir?uname=116738453430397687681&target=ALBUM&id=5605892506182421729&authkey=Gv1sRgCKHaj9mDwcq9UQ&feat=email', CAST(N'2011-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (106, N'Flagstaff Mountain', N'https://picasaweb.google.com/116738453430397687681/FlagstaffMtn?authkey=Gv1sRgCJCz2sGi8Oj0Dg&feat=directlink', CAST(N'2011-02-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (107, N'Qquirrh Mtns', N'https://picasaweb.google.com/116738453430397687681/LewistonAndFlatopSkiTour?authkey=Gv1sRgCPuY29D2vYu9dQ&feat=directlink', CAST(N'2011-02-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (108, N'Cascade Mountain', N'https://picasaweb.google.com/116738453430397687681/CascadeJan122011?authuser=0&authkey=Gv1sRgCNrdksva2YrBtgE&feat=directlink', CAST(N'2011-01-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (109, N'Maple Mountain', N'http://picasaweb.google.com/116738453430397687681/MapleMtn?authkey=Gv1sRgCMnQxKCamffQkAE&feat=directlink', CAST(N'2011-01-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (110, N'Blue John', N'http://picasaweb.google.com/vanman798/BlueJohnCanyonAndHorseshoeCanyon?authkey=Gv1sRgCMOuicbw8dmrlgE&feat=email#', CAST(N'2010-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (111, N'The Cult', N'http://picasaweb.google.com/vanman798/TheCultAtSaltair?authkey=Gv1sRgCMf85M-4goj6ag&feat=directlink', CAST(N'2010-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (112, N'City of Rocks', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5514938302835612961&authkey=Gv1sRgCLKW08_qi479xAE&feat=email', CAST(N'2010-09-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (113, N'Birch Hallow', N'http://picasaweb.google.com/vanman798/BirchHallowCanyon?authkey=Gv1sRgCOubhOjU1vCWXg&feat=directlink', CAST(N'2010-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (114, N'Kennecott Mine', N'http://picasaweb.google.com/vanman798/BinghamCanyonMine?authkey=Gv1sRgCIbAj6DqxIbVSQ#', CAST(N'2010-08-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (115, N'Mt. Rainier', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5496018945788815905&authkey=Gv1sRgCLfppqTJuNCBtQE&feat=email', CAST(N'2010-07-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (116, N'Mt. Hood', N'http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5496012297701290529&authkey=Gv1sRgCNnjueu7yeyKPA&feat=email', CAST(N'2010-07-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (117, N'South Timp', N'http://picasaweb.google.com/vanman798/SouthTimp?authkey=Gv1sRgCM-D48yqkLKOtwE&feat=directlink', CAST(N'2010-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (118, N'Grunge Couloir', N' http://picasaweb.google.com/lh/sredir?uname=vanman798&target=ALBUM&id=5483402799537772529&authkey=Gv1sRgCPTmgfTyhcjF2gE&feat=email', CAST(N'2010-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (119, N'Obelisk/Pfeiff', N'http://picasaweb.google.com/vanman798/TheObeliskAndThePfeifferhorn?authkey=Gv1sRgCPK4t8nbm7viggE#', CAST(N'2010-06-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (120, N'Sundial Peak', N'http://picasaweb.google.com/vanman798/SundialPeak?authkey=Gv1sRgCN-Xn5Lw_pNR#', CAST(N'2010-05-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (121, N'Upper Pole Couloir', N'https://picasaweb.google.com/116738453430397687681/UpperPoleCouloir?authuser=0&authkey=Gv1sRgCPvK54ex9t3AEw&feat=directlink', CAST(N'2010-05-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (122, N'Mt. Nebo', N'http://picasaweb.google.com/vanman798/MountNebo#', CAST(N'2010-05-08' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (123, N'Everest Ridge', N'http://picasaweb.google.com/vanman798/EverestRidge?feat=email#', CAST(N'2010-04-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (125, N'Flood', N'http://vanman798.shutterfly.com/pictures/2282', CAST(N'2010-03-28' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (126, N'Box Elder', N'http://vanman798.shutterfly.com/pictures/2261', CAST(N'2010-03-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (127, N'Crowd Ridge', N'https://picasaweb.google.com/116738453430397687681/SpanishForkPeakViaCrowdRidge?authuser=0&authkey=Gv1sRgCM3v1MG-7bu0Pw&feat=directlink', CAST(N'2010-03-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (128, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/2171', CAST(N'2010-03-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (130, N'Cardston', N'http://vanman798.shutterfly.com/pictures/2075', CAST(N'2009-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (131, N'Gobblers Knob', N'http://vanman798.shutterfly.com/pictures/2059', CAST(N'2009-11-28' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (132, N'Spanish Fork Peak', N'http://vanman798.shutterfly.com/pictures/2045', CAST(N'2009-11-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (133, N'Halloween', N'http://vanman798.shutterfly.com/pictures/2021', CAST(N'2009-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (134, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/2001', CAST(N'2009-10-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (135, N'Borah Peak', N'http://vanman798.shutterfly.com/pictures/1973', CAST(N'2009-09-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (136, N'Gannett Peak', N'http://vanman798.shutterfly.com/pictures/1886', CAST(N'2009-08-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (137, N'Decadence', N'http://vanman798.shutterfly.com/pictures/1875', CAST(N'2009-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (138, N'The 4th', N'http://vanman798.shutterfly.com/pictures/1851', CAST(N'2009-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (139, N'Potluck', N'http://vanman798.shutterfly.com/pictures/1833', CAST(N'2009-06-13' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (140, N'R/W/R/W', N'http://vanman798.shutterfly.com/pictures/1806', CAST(N'2009-06-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (141, N'Grand Canyon', N'http://vanman798.shutterfly.com/pictures/1735', CAST(N'2009-05-30' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (142, N'Mt. Shasta', N'http://vanman798.shutterfly.com/pictures/1695', CAST(N'2009-05-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (143, N'Triple Traverse', N'http://vanman798.shutterfly.com/pictures/1662', CAST(N'2009-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (144, N'Cold Fusion', N'http://vanman798.shutterfly.com/pictures/1641', CAST(N'2009-05-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (145, N'North Thunder', N'http://vanman798.shutterfly.com/pictures/1604', CAST(N'2009-05-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (146, N'Bald Mountain', N'http://vanman798.shutterfly.com/pictures/1558', CAST(N'2009-03-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (147, N'Cardiac Ridge', N'http://vanman798.shutterfly.com/pictures/1485', CAST(N'2009-02-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (148, N'Lowe Peak', N'http://vanman798.shutterfly.com/pictures/1440', CAST(N'2009-02-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (149, N'Flagstaff Mtn/Days Fork', N'http://vanman798.shutterfly.com/pictures/1386', CAST(N'2009-01-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (150, N'Peak 8753', N'http://vanman798.shutterfly.com/pictures/1355', CAST(N'2009-01-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (151, N'Red Baldy', N'http://vanman798.shutterfly.com/pictures/1338', CAST(N'2008-12-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (152, N'Halloween', N'http://vanman798.shutterfly.com/pictures/1267', CAST(N'2008-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (153, N'Bomber Peak', N'http://vanman798.shutterfly.com/pictures/1248', CAST(N'2008-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (154, N'AAM Reunion', N'http://vanman798.shutterfly.com/pictures/1198', CAST(N'2008-10-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (155, N'BF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1177', CAST(N'2008-09-06' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (156, N'High Uintas', N'http://vanman798.shutterfly.com/pictures/1127', CAST(N'2008-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (157, N'AF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1112', CAST(N'2008-07-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (158, N'Crowsnest Mountain', N'http://vanman798.shutterfly.com/pictures/1088', CAST(N'2008-07-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (159, N'Mount Crandell', N'http://vanman798.shutterfly.com/pictures/1076', CAST(N'2008-07-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (160, N'Turtle Mtn & Waterton', N'http://vanman798.shutterfly.com/pictures/1060', CAST(N'2008-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (161, N'Vimy Peak', N'http://vanman798.shutterfly.com/pictures/1026', CAST(N'2008-07-05' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (162, N'Box Elder', N'http://vanman798.shutterfly.com/pictures/1010', CAST(N'2008-06-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (163, N'S. Thunder & Big Horn', N'http://vanman798.shutterfly.com/pictures/982', CAST(N'2008-06-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (164, N'North Timp', N'http://vanman798.shutterfly.com/pictures/959', CAST(N'2008-05-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (165, N'Mt. Superior', N'http://vanman798.shutterfly.com/pictures/941', CAST(N'2008-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (166, N'Mt. Dromedary', N'http://vanman798.shutterfly.com/pictures/917', CAST(N'2008-05-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (167, N'Wolverine Cirque', N'http://vanman798.shutterfly.com/pictures/888', CAST(N'2008-03-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (168, N'The Canyons', N'http://vanman798.shutterfly.com/pictures/865', CAST(N'2008-02-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (169, N'Mt. Nebo', N'http://vanman798.shutterfly.com/pictures/843', CAST(N'2008-01-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (170, N'Alberta', N'http://vanman798.shutterfly.com/pictures/820', CAST(N'2007-11-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (171, N'Pfeifferhorn', N'http://vanman798.shutterfly.com/pictures/808', CAST(N'2007-09-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (172, N'Mt. Nebo', N'http://vanman798.shutterfly.com/pictures/802', CAST(N'2007-09-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (173, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/776', CAST(N'2007-08-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (174, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/748', CAST(N'2007-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (175, N'Cascade', N'http://vanman798.shutterfly.com/pictures/722', CAST(N'2007-07-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (176, N'Shed', N'http://vanman798.shutterfly.com/pictures/709', CAST(N'2007-06-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (177, N'Spring & Summer', N'http://vanman798.shutterfly.com/pictures/640', CAST(N'2007-06-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (178, N'Moab Area', N'http://vanman798.shutterfly.com/pictures/601', CAST(N'2007-05-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (179, N'Horsts Funeral', N'http://vanman798.shutterfly.com/pictures/593', CAST(N'2007-04-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (180, N'Random 2006', N'http://vanman798.shutterfly.com/pictures/560', CAST(N'2006-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (181, N'B-day 2006', N'http://vanman798.shutterfly.com/pictures/541', CAST(N'2006-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (182, N'Summer 2006', N'http://vanman798.shutterfly.com/pictures/525', CAST(N'2006-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (183, N'Zion Narrows', N'http://vanman798.shutterfly.com/pictures/507', CAST(N'2006-06-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (184, N'Adirondacks', N'http://vanman798.shutterfly.com/pictures/488', CAST(N'2005-07-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (186, N'West Virginia', N'http://vanman798.shutterfly.com/pictures/472', CAST(N'2005-05-28' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (187, N'Desert SW', N'http://vanman798.shutterfly.com/pictures/440', CAST(N'2005-05-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (188, N'Snowshoe, WV', N'http://vanman798.shutterfly.com/pictures/426', CAST(N'2005-02-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (189, N'Random 2004 Pics', N'http://vanman798.shutterfly.com/pictures/412', CAST(N'2004-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (190, N'DC', N'http://vanman798.shutterfly.com/pictures/400', CAST(N'2004-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (191, N'Langley Dinner', N'http://vanman798.shutterfly.com/pictures/388', CAST(N'2004-09-26' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (192, N'Skydiving', N'http://vanman798.shutterfly.com/pictures/352', CAST(N'2004-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (193, N'Hong Kong', N'https://picasaweb.google.com/116738453430397687681/HongKongMacauFeb2004?authuser=0&authkey=Gv1sRgCPbajaLosobFcQ&feat=directlink', CAST(N'2004-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (194, N'Yough River, PA', N'http://vanman798.shutterfly.com/pictures/300', CAST(N'2003-09-13' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (195, N'Alberta', N'http://vanman798.shutterfly.com/pictures/248', CAST(N'2003-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (196, N'Savannah', N'http://vanman798.shutterfly.com/pictures/211', CAST(N'2003-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (197, N'Gauley River, WV', N'http://vanman798.shutterfly.com/pictures/207', CAST(N'2002-10-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (198, N'Grandfather, NC', N'http://vanman798.shutterfly.com/pictures/171', CAST(N'2001-05-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (199, N'Random 90''s Pics', N'http://vanman798.shutterfly.com/pictures/159', CAST(N'1993-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (200, N'College', N'http://vanman798.shutterfly.com/pictures/149', CAST(N'1989-08-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (201, N'AAM', N'http://vanman798.shutterfly.com/pictures/123', CAST(N'1986-09-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (202, N'Kid Photos', N'http://vanman798.shutterfly.com/pictures/97', CAST(N'1970-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (203, N'Santaquin Canyon', N'https://picasaweb.google.com/116738453430397687681/SantaquinCanyonFireCooking?authuser=0&authkey=Gv1sRgCLSXncix0_rGLA&feat=directlink', CAST(N'2011-11-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (204, N'Red Pine Lake', N'https://picasaweb.google.com/116738453430397687681/RedPineLake?authuser=0&authkey=Gv1sRgCIHCk4vygKv4HA&feat=directlink', CAST(N'2011-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (205, N'Sliding Rock', N'https://picasaweb.google.com/116738453430397687681/SlidingRock?authuser=0&authkey=Gv1sRgCLDX_aHM4aun8AE&feat=directlink', CAST(N'2011-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (206, N'This is the Place', N'https://picasaweb.google.com/116738453430397687681/ThisIsThePlace?authuser=0&authkey=Gv1sRgCPPWqanG5oeU2gE&feat=directlink', CAST(N'2011-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (209, N'South End Timp', N'https://picasaweb.google.com/116738453430397687681/TimpSouthEnd?authuser=0&authkey=Gv1sRgCMbM3dLoxP3fJw&feat=directlink', CAST(N'2011-04-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (210, N'Corral Mtn', N'https://picasaweb.google.com/116738453430397687681/CorralMountain?authuser=0&authkey=Gv1sRgCIe9gbDqiMbAdA&feat=directlink', CAST(N'2011-03-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (211, N'Tabernacle Fire', N'https://picasaweb.google.com/116738453430397687681/ProvoTabernacle?authuser=0&authkey=Gv1sRgCOOYpo3TtafcmAE&feat=directlink', CAST(N'2010-12-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (212, N'Christmas', N'https://picasaweb.google.com/116738453430397687681/Christmas2010?authuser=0&authkey=Gv1sRgCL7N8pjKuafZ_gE&feat=directlink', CAST(N'2010-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (214, N'Point Supreme', N'https://picasaweb.google.com/116738453430397687681/PointSupreme?authuser=0&authkey=Gv1sRgCN7g96GumIOuGA&feat=directlink', CAST(N'2010-11-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (215, N'Bald Mtn', N'https://picasaweb.google.com/116738453430397687681/BaldMtn?authuser=0&authkey=Gv1sRgCLjqq_mdjKyTSA&feat=directlink', CAST(N'2011-07-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (216, N'Ana 5K', N'https://picasaweb.google.com/116738453430397687681/Ana5K?authuser=0&authkey=Gv1sRgCMTj_8H6xKLRpgE&feat=directlink', CAST(N'2010-11-13' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (217, N'Red Rock', N'https://picasaweb.google.com/116738453430397687681/RedRockCanyon?authuser=0&authkey=Gv1sRgCLnW3Lmmrtf1tgE&feat=directlink', CAST(N'2010-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (218, N'Elephant Butte', N'https://picasaweb.google.com/116738453430397687681/ElephantButte?authuser=0&authkey=Gv1sRgCOektaHxgKiFXw&feat=directlink', CAST(N'2010-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (219, N'Yellowstone', N'https://picasaweb.google.com/116738453430397687681/Yellowstone?authuser=0&authkey=Gv1sRgCL-irL3Gvov6JQ&feat=directlink', CAST(N'2010-10-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (220, N'Crazy Man', N'https://picasaweb.google.com/116738453430397687681/CrazyManCoulior?authuser=0&authkey=Gv1sRgCNDp3qTZmf7G8AE&feat=directlink', CAST(N'2010-05-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (221, N'Garden', N'https://picasaweb.google.com/116738453430397687681/Garden2010?authuser=0&authkey=Gv1sRgCIifyp-gl5LEOA&feat=directlink', CAST(N'2010-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (222, N'Kessler', N'https://picasaweb.google.com/116738453430397687681/KesslerPeak?authuser=0&authkey=Gv1sRgCN2-rfXjhLmVuAE&feat=directlink', CAST(N'2010-03-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (223, N'UFO Bowl', N'https://vanman798.shutterfly.com/pictures/2158', CAST(N'2010-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (224, N'Snowbird', N'https://picasaweb.google.com/116738453430397687681/Snowbird2182010?authuser=0&authkey=Gv1sRgCKilqf-X55mBVg&feat=directlink', CAST(N'2010-02-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (225, N'Urban', N'https://picasaweb.google.com/116738453430397687681/Urban?authuser=0&authkey=Gv1sRgCN7M59HrpMecMA&feat=directlink', CAST(N'2010-05-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (226, N'Maple Ice', N'https://vanman798.shutterfly.com/pictures/2141', CAST(N'2010-01-30' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (227, N'BCC Tour', N'https://picasaweb.google.com/116738453430397687681/BCCTour1232010?authuser=0&authkey=Gv1sRgCOGGgYi659SUiwE&feat=directlink', CAST(N'2010-01-23' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (228, N'Big Springs', N'https://picasaweb.google.com/116738453430397687681/BigSprings?authuser=0&authkey=Gv1sRgCLGdh5nN3fzn4QE&feat=directlink', CAST(N'2010-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (229, N'Gobblers Knob', N'https://picasaweb.google.com/116738453430397687681/GobblersKnob?authuser=0&authkey=Gv1sRgCOfXy9rmwe6ZrQE&feat=directlink', CAST(N'2010-01-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (230, N'GW Trail', N'https://picasaweb.google.com/116738453430397687681/GreatWestern?authuser=0&authkey=Gv1sRgCN7j2rLpjYrkaQ&feat=directlink', CAST(N'2009-12-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (231, N'Dinner', N'https://picasaweb.google.com/116738453430397687681/Dinner?authuser=0&authkey=Gv1sRgCO6L7Nfv3bCGvgE&feat=directlink', CAST(N'2009-11-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (232, N'Dallas', N'https://picasaweb.google.com/116738453430397687681/Dallas?authuser=0&authkey=Gv1sRgCKKBrvGc2_zhFA&feat=directlink', CAST(N'2009-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (233, N'Mt. Elbert', N'https://picasaweb.google.com/116738453430397687681/MtElbert?authuser=0&authkey=Gv1sRgCJqM6pq16PKshgE&feat=directlink', CAST(N'2009-09-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (234, N'Mt. Massive', N'https://picasaweb.google.com/116738453430397687681/Massive9192009?authuser=0&authkey=Gv1sRgCMfns66jvIz_Rg&feat=directlink', CAST(N'2009-09-19' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (235, N'Ana B-day', N'https://picasaweb.google.com/116738453430397687681/AnaBDay?authuser=0&authkey=Gv1sRgCPuZzYHU_On3Og&feat=directlink', CAST(N'2009-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (236, N'Def Leppard', N'https://picasaweb.google.com/116738453430397687681/DefLeppardEtc8252009?authuser=0&authkey=Gv1sRgCNfSmZ2EzLbmlAE&feat=directlink', CAST(N'2009-08-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (237, N'B-day', N'https://picasaweb.google.com/116738453430397687681/DefLeppardEtc8252009?authuser=0&authkey=Gv1sRgCNfSmZ2EzLbmlAE&feat=directlink', CAST(N'2009-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (238, N'Chip/Pfeif', N'https://picasaweb.google.com/116738453430397687681/ChipmanPfeif?authuser=0&authkey=Gv1sRgCOzA0tOOt6vD3QE&feat=directlink', CAST(N'2009-07-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (239, N'Zion', N'https://picasaweb.google.com/116738453430397687681/Zion7242009?authuser=0&authkey=Gv1sRgCIacrr3G96267QE&feat=directlink', CAST(N'2009-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (240, N'East Provo Peak', N'https://picasaweb.google.com/116738453430397687681/EastProvoPeak?authuser=0&authkey=Gv1sRgCJWmgIGT17bGfQ&feat=directlink', CAST(N'2009-06-20' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (241, N'North Peak', N'https://picasaweb.google.com/116738453430397687681/NorthPeak6272009?authuser=0&authkey=Gv1sRgCPOgoOn1rOaWIQ&feat=directlink', CAST(N'2009-06-27' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (242, N'Wolverine', N'https://picasaweb.google.com/116738453430397687681/Wolverine4182009?authuser=0&authkey=Gv1sRgCPCSvYLQg8Pu7gE&feat=directlink', CAST(N'2009-04-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (243, N'Bear Trap', N'https://picasaweb.google.com/116738453430397687681/BearTrap4112009?authuser=0&authkey=Gv1sRgCM3HovOVnqXhcA&feat=directlink', CAST(N'2009-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (244, N'Meadow Chute', N'https://picasaweb.google.com/116738453430397687681/MeadowChute?authuser=0&authkey=Gv1sRgCMua66aaw6v2ew&feat=directlink', CAST(N'2009-04-04' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (245, N'Brighton', N'https://picasaweb.google.com/116738453430397687681/Brighton3122009?authuser=0&authkey=Gv1sRgCLbP_JiC-9ei4gE&feat=directlink', CAST(N'2009-03-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (246, N'Argenta', N'https://picasaweb.google.com/116738453430397687681/Argenta3312009?authuser=0&authkey=Gv1sRgCOal_pDu1t_UaA&feat=directlink', CAST(N'2009-03-31' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (247, N'Jones Reception', N'https://picasaweb.google.com/116738453430397687681/DaveJonesWeddingReception?authuser=0&authkey=Gv1sRgCODixqrD3rju6QE&feat=directlink', CAST(N'2009-01-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (248, N'Shoveling', N'https://picasaweb.google.com/116738453430397687681/OremShovelling172009?authuser=0&authkey=Gv1sRgCKKDk8KRp7nkHg&feat=directlink', CAST(N'2009-01-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (249, N'Mineral Fork', N'https://picasaweb.google.com/116738453430397687681/MineralFork2009_01_17?authuser=0&authkey=Gv1sRgCN-3mdL958OWAg&feat=directlink', CAST(N'2009-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (250, N'Frostbite', N'https://picasaweb.google.com/116738453430397687681/Frostbite12212008?authuser=0&authkey=Gv1sRgCJ-vq6jTzvnnGg&feat=directlink', CAST(N'2008-12-21' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (251, N'White Pine', N'https://picasaweb.google.com/116738453430397687681/WhitePineLake11292008?authuser=0&authkey=Gv1sRgCOWR6O63-sfYbw&feat=directlink', CAST(N'2008-11-29' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (252, N'Nebo', N'https://picasaweb.google.com/116738453430397687681/NeboTriplePeaks1112008?authuser=0&authkey=Gv1sRgCK3r78OXq9m_GA&feat=directlink', CAST(N'2008-11-01' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (253, N'Opera', N'https://picasaweb.google.com/116738453430397687681/Opera10222008?authuser=0&authkey=Gv1sRgCOGknvT9i_2vwgE&feat=directlink', CAST(N'2008-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (254, N'House Party', N'https://picasaweb.google.com/116738453430397687681/HouseParty?authuser=0&authkey=Gv1sRgCMnKjpTTx7DYogE&feat=directlink', CAST(N'2008-10-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (255, N'Whistler', N'https://picasaweb.google.com/116738453430397687681/Whistler1022008?authuser=0&authkey=Gv1sRgCLypmdXD88KDcg&feat=directlink', CAST(N'2008-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (256, N'Yolanda', N'https://picasaweb.google.com/116738453430397687681/Yolanda9282008?authuser=0&authkey=Gv1sRgCMf4hcmrxt27sgE&feat=directlink', CAST(N'2008-09-28' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (257, N'Psuedo Smoking', N'https://picasaweb.google.com/116738453430397687681/PsuedoSmoking9242008?authuser=0&authkey=Gv1sRgCNm1icylwuqQ0AE&feat=directlink', CAST(N'2008-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (258, N'Concert', N'https://picasaweb.google.com/116738453430397687681/Concert9182008?authuser=0&authkey=Gv1sRgCKCRgpq0tf2InQE&feat=directlink', CAST(N'2008-09-18' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (259, N'Ana''s B-day', N'https://picasaweb.google.com/116738453430397687681/AnaBDaySept162008?authuser=0&authkey=Gv1sRgCLntu6ml09T5Mw&feat=directlink', CAST(N'2008-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (260, N'Shirtless', N'https://picasaweb.google.com/116738453430397687681/Shirtless?authuser=0&authkey=Gv1sRgCNSR2dG8o6K0aA&feat=directlink', CAST(N'2008-09-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (262, N'Y', N'https://picasaweb.google.com/116738453430397687681/Y?authuser=0&authkey=Gv1sRgCKXHmJqE7qCbtQE&feat=directlink', CAST(N'2008-08-10' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (263, N'B-day', N'https://picasaweb.google.com/116738453430397687681/Bday2008?authuser=0&authkey=Gv1sRgCO3Y_ZDosoTM2QE&feat=directlink', CAST(N'2008-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (264, N'Provo Peak', N'https://picasaweb.google.com/116738453430397687681/ProvoPeak?authuser=0&authkey=Gv1sRgCIK9kMyy24eVmQE&feat=directlink', CAST(N'2008-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (265, N'Timp', N'https://picasaweb.google.com/116738453430397687681/RobertsHornTimp?authuser=0&authkey=Gv1sRgCMa7qP3aoLq2igE&feat=directlink', CAST(N'2008-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (266, N'SLC', N'https://picasaweb.google.com/116738453430397687681/PeterAndFamilyInSLC6252008?authuser=0&authkey=Gv1sRgCIfo_vSaou_unQE&feat=directlink', CAST(N'2008-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (267, N'Upper Pole', N'https://picasaweb.google.com/116738453430397687681/UpperPole?authuser=0&authkey=Gv1sRgCPvT8bfyiYjNtQE&feat=directlink', CAST(N'2008-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (268, N'West Mtn', N'https://picasaweb.google.com/116738453430397687681/WestMtn?authuser=0&authkey=Gv1sRgCNDmm5ndtMjJAw&feat=directlink', CAST(N'2008-06-07' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (269, N'Friends', N'https://picasaweb.google.com/116738453430397687681/FriendsEtc?authuser=0&authkey=Gv1sRgCIjVk6rHiN7z3wE&feat=directlink', CAST(N'2008-05-25' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (270, N'Y Mtn', N'https://picasaweb.google.com/116738453430397687681/YMtn?authuser=0&authkey=Gv1sRgCN3tqdShjKXFNw&feat=directlink', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (271, N'Self', N'https://picasaweb.google.com/116738453430397687681/SelfPortraits?authuser=0&authkey=Gv1sRgCKCe9peO07_37QE&feat=directlink', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (272, N'Mahogany', N'https://picasaweb.google.com/116738453430397687681/Mahogany?authuser=0&authkey=Gv1sRgCIP36tGp7uGHRg&feat=directlink', CAST(N'2008-05-17' AS Date))
GO
INSERT [dbo].[Photos] ([id], [Title], [URL], [Date]) VALUES (273, N'Ana/Walter', N'https://picasaweb.google.com/116738453430397687681/RominaVillamonte_Bday2008_04_01?authuser=0&authkey=Gv1sRgCMvtxY_03bqHaw&feat=directlink', CAST(N'2008-04-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
ALTER TABLE [dbo].[MountainSummitLog]  WITH CHECK ADD  CONSTRAINT [FK_MountainSummitLog_Mountains] FOREIGN KEY([MountainID])
REFERENCES [dbo].[Mountains] ([id])
GO
ALTER TABLE [dbo].[MountainSummitLog] CHECK CONSTRAINT [FK_MountainSummitLog_Mountains]
GO
