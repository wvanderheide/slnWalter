USE [Walter]
GO

DROP TABLE [dbo].[MountainSummitLog]
GO
DROP TABLE [dbo].[Mountains]
GO





/****** Object:  Table [dbo].[Mountains]    Script Date: 10/17/2016 3:12:35 PM ******/
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
/****** Object:  Table [dbo].[MountainSummitLog]    Script Date: 10/17/2016 3:12:35 PM ******/
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
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (85, N'Mount Nebo', 11928, N'USA', N'UT', CAST(39.8218900000 AS Decimal(30, 10)), CAST(-111.7601400000 AS Decimal(30, 10)), NULL)
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
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (160, N'Trail Rider Peak', 13247, N'USA', N'UT', CAST(40.7422000000 AS Decimal(30, 10)), CAST(-110.3527600000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (161, N'Roberts Peak', 13287, N'USA', N'UT', CAST(40.7356000000 AS Decimal(30, 10)), CAST(-110.3392000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (162, N'Pinnacle Peak', 13068, N'USA', N'UT', CAST(40.7226000000 AS Decimal(30, 10)), CAST(-110.3181000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (163, N'S. Emmons Peak', 13170, N'USA', N'UT', CAST(40.7040000000 AS Decimal(30, 10)), CAST(-110.3110000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (164, N'Emmons Peak', 13440, N'USA', N'UT', CAST(40.7117000000 AS Decimal(30, 10)), CAST(-110.3037000000 AS Decimal(30, 10)), NULL)
GO
INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (165, N'Ensign Peak', 5414, N'USA', N'UT', CAST(40.7964000000 AS Decimal(30, 10)), CAST(-111.8884600000 AS Decimal(30, 10)), N'')
GO

INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], [MountainNote]) VALUES (166, N'Little Tuk', 12048, N'USA', N'UT', CAST(38.44663 AS Decimal(30, 10)), CAST(-109.26478 AS Decimal(30, 10)), N'')
GO

INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], 
[MountainNote]) VALUES (167, N'Mount Belknap', 12137, N'USA', N'UT', CAST(38.41940 AS Decimal(30, 10)), 
CAST(-112.4119 AS Decimal(30, 10)), N'')
GO

INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], 
[MountainNote]) VALUES (168, N'Delano Peak', 12173, N'USA', N'UT', CAST(38.36920 AS Decimal(30, 10)), 
CAST(-112.3706 AS Decimal(30, 10)), N'')
GO


INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], 
[MountainNote]) VALUES (169, N'Newman Peak', 8136, N'Canada', N'Alberta', 
CAST(49.17683  AS Decimal(30, 10)), CAST(-114.09897 AS Decimal(30, 10)), NULL)
GO

INSERT [dbo].[Mountains] ([Id], [Name], [Elevation], [Country], [State], [Latitude], [Longitude], 
[MountainNote]) VALUES (170, N'Spionkop Peak', 8335, N'Canada', N'Alberta', 
CAST(49.19123  AS Decimal(30, 10)), CAST(-114.10763 AS Decimal(30, 10)), NULL)
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
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (312, 88, CAST(N'2016-10-08' AS Date), N'Maple Canyon')
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (313, 165, CAST(N'2016-10-16' AS Date), NULL)
GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (314, 9, CAST(N'2016-11-19' AS Date), N'')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (315, 13, CAST(N'2016-12-03' AS Date), N'')

GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (316, 9, CAST(N'2016-12-27' AS Date), NULL)


GO
INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (317, 166, CAST(N'2017-04-14' AS Date), NULL)

GO



INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (318, 37, CAST(N'2017-06-03' AS Date), N'')
GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (319, 167, CAST(N'2017-07-01' AS Date), NULL)

GO

INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (320, 168, CAST(N'2017-07-01' AS Date), NULL)

GO


INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (321, 169, CAST(N'2017-07-24' AS Date), NULL)

GO


INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (322, 170, CAST(N'2017-07-24' AS Date), NULL)

GO


INSERT [dbo].[MountainSummitLog] ([Id], [MountainID], [SummitDate], [SummitNote]) VALUES (323, 26, CAST(N'2017-10-22' AS Date), N'')
GO


/*
SET IDENTITY_INSERT [dbo].[MountainSummitLog] OFF
GO
ALTER TABLE [dbo].[MountainSummitLog]  WITH CHECK ADD  CONSTRAINT [FK_MountainSummitLog_Mountains] FOREIGN KEY([MountainID])
REFERENCES [dbo].[Mountains] ([Id])
GO
ALTER TABLE [dbo].[MountainSummitLog] CHECK CONSTRAINT [FK_MountainSummitLog_Mountains]
GO
*/











--Id max should match count

  SELECT max(id) as MaxId, count(Name) as Mountains_Count
  FROM [Walter].[dbo].Mountains
  go

    SELECT max(id) as MaxId, count(Id) as MountainSummitLog_Count
  FROM [Walter].[dbo].MountainSummitLog
  go

