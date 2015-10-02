USE [Walter]
GO
/****** Object:  Table [dbo].[Mountains]    Script Date: 10/2/2015 4:54:25 PM ******/
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
/****** Object:  Table [dbo].[MountainSummitLog]    Script Date: 10/2/2015 4:54:25 PM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 10/2/2015 4:54:25 PM ******/
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
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
ALTER TABLE [dbo].[MountainSummitLog]  WITH CHECK ADD  CONSTRAINT [FK_MountainSummitLog_Mountains] FOREIGN KEY([MountainID])
REFERENCES [dbo].[Mountains] ([id])
GO
ALTER TABLE [dbo].[MountainSummitLog] CHECK CONSTRAINT [FK_MountainSummitLog_Mountains]
GO
