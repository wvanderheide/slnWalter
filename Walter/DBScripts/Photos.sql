USE [Walter]
GO

DROP TABLE [dbo].[Photos]
GO

/****** Object:  Table [dbo].[Photos]    Script Date: 10/17/2016 1:21:06 PM ******/
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
	[TripReportURL] [varchar] (500), 
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (1, N'Green River', 
N'https://photos.app.goo.gl/VPVDrEj4FsxKMfc66', 
CAST(N'2015-08-27' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2015_08_27_GreenRiver.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (2, N'Hawkins Horseshoe', 
N'https://picasaweb.google.com/107082436175597733376/HawkinsHorseshoe?authuser=0&authkey=Gv1sRgCKWak93H3Yqp9gE&feat=directlink', 
CAST(N'2015-08-10' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2015_08_10_HawkinsHorseshoe.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (3, N'Bertha Peak', 
N'https://photos.app.goo.gl/XanF52Wh7vq7rwWHA', CAST(N'2015-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date],TripReportURL) VALUES (4, N'Alberta', 
N'https://picasaweb.google.com/107082436175597733376/AlbertaSummer2015?authuser=0&authkey=Gv1sRgCNfBhPGm4NyqtAE&feat=directlink', 
CAST(N'2015-08-06' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2015_08_06-16_Alberta.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (5, N'NE, SD, ND', 
N'https://picasaweb.google.com/107082436175597733376/NESDNDRoadTripMay2015?authuser=0&authkey=Gv1sRgCNnVwre_-ves2AE&feat=directlink',
 CAST(N'2015-05-29' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2015_29_31_Nebraska_SD_ND.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date],TripReportURL) VALUES (6, N'Englestead',
 N'https://photos.app.goo.gl/tUk4Dn9kvMf7mJ5p9', CAST(N'2014-08-09' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_08_09_EnglesteadCanyon.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (7, N'Denali', N'https://picasaweb.google.com/107082436175597733376/DenaliShortVersion?authuser=0&authkey=Gv1sRgCIHKvfjbh7-zowE&feat=directlink', CAST(N'2014-06-07' AS Date),
'https://www.summitpost.org/denali-s-west-buttress-2014/903191')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (8, N'Coyote Gulch', N'https://picasaweb.google.com/107082436175597733376/CoyoteGulch?authuser=0&authkey=Gv1sRgCJ-a7LTvlPytiQE&feat=directlink', CAST(N'2014-05-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (9, N'Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RockCanyonInFebruary?authuser=0&authkey=Gv1sRgCKaHrq_fuJChhQE&feat=directlink', CAST(N'2014-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (10, N'Ouray', 
N'https://photos.app.goo.gl/KF5GyYgjN2nBr6H87', CAST(N'2014-01-31' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_02_02_Ouray.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (11, N'AF Canyon', N'https://picasaweb.google.com/107082436175597733376/AFCanyon?authuser=0&authkey=Gv1sRgCM2Y7ZjJjZXW6QE&feat=directlink', CAST(N'2014-01-14' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_01_14_WinterCampingSR92.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (12, N'Millers Thriller', 
N'https://photos.app.goo.gl/qS8yFAFWRt7nD1hb8', CAST(N'2014-01-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (13, N'Mexico City', 
N'https://photos.app.goo.gl/yAG7MKu4gVS2FTq18', CAST(N'2013-12-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (14, N'Denali NP', N'https://picasaweb.google.com/107082436175597733376/DenaliNP?authuser=0&authkey=Gv1sRgCMfYm8akyJK7_AE&feat=directlink', CAST(N'2014-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (15, N'Reception', N'https://picasaweb.google.com/107082436175597733376/Reception?authuser=0&authkey=Gv1sRgCP_yq62IlPCZhgE&feat=directlink', CAST(N'2014-01-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (16, N'Wedding', N'https://picasaweb.google.com/107082436175597733376/Wedding?authuser=0&authkey=Gv1sRgCNub-Mbr1MG82QE&feat=directlink', CAST(N'2013-12-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (17, N'Teotihuacan', 
N'https://photos.app.goo.gl/xjiq9MWFBeeAbW7A6', CAST(N'2013-12-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (18, N'Iztaccihuatl', N'https://photos.app.goo.gl/dRe5sa1ogBjpJtUo6', CAST(N'2013-11-30' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_11_29_Itza.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (19, N'Orizaba', N'https://picasaweb.google.com/107082436175597733376/Orizaba?authuser=0&authkey=Gv1sRgCOCIwJuUjtWUkAE&feat=directlink', CAST(N'2013-11-27' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_11_24_Orizaba.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (20, N'Levons Wedding', N'https://picasaweb.google.com/107082436175597733376/LevonsWedding?authuser=0&authkey=Gv1sRgCPyHlY_k3OOJ5AE&feat=directlink', CAST(N'2015-08-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (21, N'The Finger', 
N'https://photos.app.goo.gl/XDwGzEtrFkaSTM1B7', CAST(N'2015-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (22, N'Fifth Water Hot Springs', 
N'https://photos.app.goo.gl/DzH769KufbWSwLyz9', CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (23, N'Squash Head', N'https://picasaweb.google.com/107082436175597733376/SquashHeadSantaquinnCanyon?authuser=0&authkey=Gv1sRgCMKZmtzRre705QE&feat=directlink', CAST(N'2014-01-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (24, N'Katelyn and Jon', N'https://picasaweb.google.com/107082436175597733376/KatelynAndJonSWedding?authuser=0&authkey=Gv1sRgCKGG2fjz_eaQ2wE&feat=directlink', CAST(N'2014-03-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (25, N'The G', 
N'https://photos.app.goo.gl/3EzKdzzDvDroXQ6D8', CAST(N'2014-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (26, N'Hockey', N'https://picasaweb.google.com/107082436175597733376/ProvoDivCHockeyNinjaTurtles?authuser=0&authkey=Gv1sRgCOaXm_X1osHNiAE&feat=directlink', CAST(N'2014-03-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (27, N'Cassidy Arch', N'https://picasaweb.google.com/107082436175597733376/CassidyArch?authuser=0&authkey=Gv1sRgCLWdpfjers6DvgE&feat=directlink', CAST(N'2014-09-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (28, N'Maple Canyon', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon03?authuser=0&authkey=Gv1sRgCLWctqX0g5X75gE&feat=directlink', CAST(N'2014-09-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (29, N'2008 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155368451086441.1073741880.620076440&type=1&l=fd14678c3c', CAST(N'2008-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (30, N'Boundardy/Montgomery', 
N'https://photos.app.goo.gl/wkdqQqRDwX1LLGzeA', CAST(N'2014-10-06' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_10_06_YosemiteTrip.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (31, N'Tuolumne', N'https://picasaweb.google.com/107082436175597733376/Tuolumne?authuser=0&authkey=Gv1sRgCIKNxPnc5c33nwE&feat=directlink', CAST(N'2014-10-07' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_10_06_YosemiteTrip.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (32, N'Yosemite', 
N'https://photos.app.goo.gl/eeoAdHq49qR2AXuj6', CAST(N'2014-10-08' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2014_10_06_YosemiteTrip.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (33, N'Timp', 
N'https://photos.app.goo.gl/Fn7NXmYCW6M3fvN46', CAST(N'2015-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (34, N'Fire and Duplex Rebuild', 
N'https://www.facebook.com/media/set/?set=a.10152008181526441.1073741829.620076440&type=1&l=63b7e6c2c5', 
CAST(N'2014-12-30' AS Date),'https://fox13now.com/2014/04/05/video-shows-fire-in-orem-that-displaced-16-people/')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (35, N'Dirtcicle', 
N'https://picasaweb.google.com/107082436175597733376/DirtcicleNov192013?authuser=0&authkey=Gv1sRgCI7V75Xy2u-ArQE&feat=directlink', CAST(N'2013-11-19' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_11_19_Dirtcicle.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (36, N'Zion Canyon', N'https://picasaweb.google.com/107082436175597733376/ZionCanyon?authuser=0&authkey=Gv1sRgCKHl29P5npnnpAE&feat=directlink', CAST(N'2013-11-01' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_11_01_Zion.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (37, N'Red Rock and Prophecy', 
N'https://picasaweb.google.com/107082436175597733376/RedRockAndProphecy?authuser=0&authkey=Gv1sRgCLPY7tWtzenw4QE&feat=directlink', 
CAST(N'2013-10-26' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_10_26_RedRock.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (38, N'Kamps Ridge', N'https://photos.app.goo.gl/nf8QLjZpghYnBdfg8', CAST(N'2013-10-18' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_10_18_KampsRidge.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (39, N'Indian Creek', N'https://photos.app.goo.gl/GQm1m3jCajDiwWsV6', CAST(N'2013-10-05' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_10_05_IndianCreek.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (40, N'Red Rock Canyon', N'https://picasaweb.google.com/107082436175597733376/RedRockCanyon?authuser=0&authkey=Gv1sRgCMn_p__p3K7gwQE&feat=directlink', 
CAST(N'2013-09-25' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_09_25_RedRock.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (41, N'City of Rocks', N'https://photos.app.goo.gl/S7fwmpYUM4z8aUW97', 
CAST(N'2013-09-20' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_09_21_CityOfRocks.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (42, N'Cirque of the Towers', N'https://picasaweb.google.com/107082436175597733376/CirqueOfTheTowers?authuser=0&authkey=Gv1sRgCK7XnZ7m8-aqtQE&feat=directlink', 
CAST(N'2013-09-09' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_09_08-14_CirqueOfTowers.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (43, N'Kings Peak', N'https://photos.app.goo.gl/ggFyuqn41rvmRapc6', CAST(N'2013-08-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (44, N'Subway', N'https://photos.app.goo.gl/zPPEp5qjPiVKDeTr5', 
CAST(N'2013-07-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (45, N'Maple', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon02?authuser=0&authkey=Gv1sRgCJCYoq3pk8nr3wE&feat=directlink', CAST(N'2013-07-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (46, N'Great Basin', N'https://photos.app.goo.gl/kFqgkayWkLcGTz7A6', CAST(N'2013-06-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (47, N'Teewinot', 
N'https://photos.app.goo.gl/EJzHoe9Qd1qvLvWD6', 
CAST(N'2013-06-21' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_06_21_Teewinot.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (48, N'Guadalupe Peak', N'https://photos.app.goo.gl/mmxFea7wveB9FnB77', 
CAST(N'2013-06-08' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_06_08_GuadalupePeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (49, N'Deseret Peak', N'https://picasaweb.google.com/107082436175597733376/DeseretPeakSpringSkiing?authuser=0&authkey=Gv1sRgCMmjwqq35_H90AE&feat=directlink', CAST(N'2013-06-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (50, N'Geurts Ridge', N'https://photos.app.goo.gl/RJXvA1kScoQkgrB87', 
CAST(N'2013-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (51, N'Shed', N'https://photos.app.goo.gl/yb2aDAxpDTs7aqfG6', CAST(N'2013-05-26' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (52, N'Moab', N'https://picasaweb.google.com/107082436175597733376/MoabMtnBiking?authuser=0&authkey=Gv1sRgCL2O69vW6fW3hAE&feat=directlink', CAST(N'2013-05-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (53, N'Wheeler, NM', N'https://picasaweb.google.com/107082436175597733376/WheelerPeakNM?authuser=0&authkey=Gv1sRgCM781Y6ow7n0tQE&feat=directlink',
 CAST(N'2013-04-27' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_04_26-28_NewMexico.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (54, N'Ice', N'https://picasaweb.google.com/107082436175597733376/IceClimbing?authuser=0&authkey=Gv1sRgCIDb8tC3xOCEvAE&feat=directlink', CAST(N'2013-02-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (55, N'GWI', N'https://picasaweb.google.com/107082436175597733376/GWI?authuser=0&authkey=Gv1sRgCLzbuerw-Z7fgQE&feat=directlink', CAST(N'2013-02-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (56, N'Henry''s Fork', N'https://picasaweb.google.com/107082436175597733376/HenrySForkSkiTourCamping?authuser=0&authkey=Gv1sRgCLn81YL8qpOrowE&feat=directlink', 
CAST(N'2013-02-16' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_02_16_HenrysFork.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (57, N'Lake Mountain', N'https://picasaweb.google.com/107082436175597733376/LakeMountain?authkey=Gv1sRgCPjmhfDatOON4QE', CAST(N'2013-02-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (58, N'Ouray', 
N'https://photos.app.goo.gl/24NRn2P6Z5LxKqjz9', 
CAST(N'2013-01-26' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_01_25_Ouray.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (59, N'Maple Ice', N'https://picasaweb.google.com/107082436175597733376/MapleCanyon?authuser=0&authkey=Gv1sRgCInU5NrRhbfEogE&feat=directlink', CAST(N'2013-01-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (60, N'Henrys Fork', 
N'https://photos.app.goo.gl/qb99sjLMaDsvrd2i7', CAST(N'2012-01-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (61, N'Alpine Loop', N'https://photos.app.goo.gl/skMqWEFRxKs9zABp6', 
CAST(N'2012-02-17' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_02_17_AlpineLoop.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (62, N'Powder Parks', 
N'https://picasaweb.google.com/116738453430397687681/PowderParks?authuser=0&authkey=Gv1sRgCPmN8fne9N750gE&feat=directlink', CAST(N'2012-03-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (63, N'Reynolds Peak', 
N'https://photos.app.goo.gl/szvL4ew6C3xgeaCd6', CAST(N'2012-03-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (64, N'Reynolds Peak', N'https://photos.app.goo.gl/yZgRWUyRVxCP5kuv7', CAST(N'2012-03-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (65, N'Dollar Lake', N'https://picasaweb.google.com/116738453430397687681/DollarLake?authuser=0&authkey=Gv1sRgCNLy16SvrNnz_gE&feat=directlink', 
CAST(N'2012-03-29' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_03_29_DollarLake.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (66, N'Santaquin/Loafer', N'https://picasaweb.google.com/116738453430397687681/SantaquinLoafer?authuser=0&authkey=Gv1sRgCK38wtHR4r7G6wE&feat=directlink', CAST(N'2012-04-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (67, N'Family',
 N'https://photos.app.goo.gl/FAuKv7cD7BwqSrbB9', CAST(N'2012-04-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (68, N'Cold Fusion', N'https://photos.app.goo.gl/3UrdCBLjczYNzCuv5', CAST(N'2012-04-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (69, N'Sleigh Runner', N'https://picasaweb.google.com/116738453430397687681/BoxElderViaTheSleighRunnerMay52012?authuser=0&authkey=Gv1sRgCKuoirm45byDkQE&feat=directlink', CAST(N'2012-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (70, N'Beat Out', N'https://picasaweb.google.com/116738453430397687681/BeatOut?authuser=0&authkey=Gv1sRgCMyz2dPzxo-uiwE&feat=directlink', CAST(N'2012-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (71, N'11th Hour', N'https://photos.app.goo.gl/NR9LykjkPmw1SGSi7', CAST(N'2012-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (72, N'West Slabs', N'https://picasaweb.google.com/116738453430397687681/WestSlabsMountOlympus?authuser=0&authkey=Gv1sRgCMaq0-_W8rXqxAE&feat=directlink', 
CAST(N'2012-06-16' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_06_16_WestSlabs.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (73, N'Ibapah', N'https://photos.app.goo.gl/Jvc7LpCBZZYMzHS28', 
CAST(N'2012-06-24' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_06_22_Ibapah.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (74, N'Lone Peak Cirque', 
N'https://photos.app.goo.gl/PS9FkjBJNTaS5q4i7', 
CAST(N'2012-06-29' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_06_30_LonePeakCirque.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (75, N'London Spire', N'https://photos.app.goo.gl/HYoRpv3GmbgUqsuy5', 
CAST(N'2012-07-07' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_07_07_LondonSpire.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (76, N'Trilogy Buttress', N'https://picasaweb.google.com/107082436175597733376/TrilogyButtressRockCanyon?authuser=0&authkey=Gv1sRgCIOM6JzalovFkAE&feat=directlink', CAST(N'2012-07-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (77, N'The Grand', N'https://picasaweb.google.com/107082436175597733376/TheGrandTeton?authuser=0&authkey=Gv1sRgCMfT2onZmejVxgE&feat=directlink', CAST(N'2012-07-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (78, N'Mt Ogden', N'https://picasaweb.google.com/107082436175597733376/MtOgdenEastFace?authuser=0&authkey=Gv1sRgCPizlbvMp531-QE&feat=directlink', 
CAST(N'2012-07-28' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_07_28_MtOgden.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (79, N'SE Ridge', N'https://picasaweb.google.com/107082436175597733376/MtSuperiorSERidge?authuser=0&authkey=Gv1sRgCO_x6-Lj7Y-K_AE&feat=directlink', CAST(N'2012-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (80, N'Portable Darkness', N'https://picasaweb.google.com/107082436175597733376/DevilsCastle?authuser=0&authkey=Gv1sRgCOPhv9OFidarxAE&feat=directlink', CAST(N'2012-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (81, N'Granite Peak', N'https://photos.app.goo.gl/GVUL9gqLKNZ37YaM6', 
CAST(N'2012-08-21' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_08_18_GranitePeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (82, N'Notch Peak', N'https://photos.app.goo.gl/VEGMsgnoF86ZAus86', 
CAST(N'2012-09-01' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_09_01_NotchPeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (83, N'Crystal Peak', 
N'https://photos.app.goo.gl/jdeeFpT1XwAkF2nb6', 
CAST(N'2012-09-02' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_09_02_crystalPeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (84, N'Ben Lomond', N'https://picasaweb.google.com/107082436175597733376/WillardPeakAndBenLomond?authuser=0&authkey=Gv1sRgCJ3m5vS3hKSa1AE&feat=directlink', CAST(N'2012-09-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (85, N'Ball Joints', 
N'https://photos.app.goo.gl/Joc9TZm43F6tr5E3A', CAST(N'2012-09-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (86, N'Provo Peak', N'https://picasaweb.google.com/107082436175597733376/ProvoPeak?authuser=0&authkey=Gv1sRgCLu3y9KmwO-q4gE&feat=directlink', CAST(N'2012-09-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (87, N'Scheels', N'https://picasaweb.google.com/107082436175597733376/Scheels?authuser=0&authkey=Gv1sRgCL2p1Iy5sOKcpgE&feat=directlink', CAST(N'2012-10-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (88, N'Timp Traverse', N'https://picasaweb.google.com/107082436175597733376/TimpTraverse?authuser=0&authkey=Gv1sRgCPy-jISfmta4qQE&feat=directlink', 
CAST(N'2012-10-26' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_10_26_TimpTraverse.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (89, N'Grand Staircase-Escalante', N'https://photos.app.goo.gl/wuuxUVTC7DC716ed6', 
CAST(N'2012-11-23' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2012_11_23_GrandStaircase.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (90, N'Dirtcicle', 
N'https://photos.app.goo.gl/hLy41uoR4CXeA3wH9', CAST(N'2012-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (91, N'Dirtcicle', 
N'https://photos.app.goo.gl/KGTUNUcfxH2LSoQ6A', CAST(N'2012-12-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (92, N'Joe''s', N'https://picasaweb.google.com/107082436175597733376/JoeSValley?authuser=0&authkey=Gv1sRgCO-o35nL3_XAhQE&feat=directlink', CAST(N'2012-12-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (93, N'Dirtcicle', N'https://picasaweb.google.com/107082436175597733376/DirtcicleDec202012?authuser=0&authkey=Gv1sRgCM6sl8-nifjT9AE&feat=directlink', CAST(N'2012-12-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (94, N'Alberta', 
N'https://photos.app.goo.gl/uwcUCv3Z6F1biMaGA', CAST(N'2012-12-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (95, N'Waterton', 
N'https://photos.app.goo.gl/XVZCmZX4LPHRxZkK9', CAST(N'2011-12-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (96, N'Millers Thriller', 
N'https://photos.app.goo.gl/SS5KqdvY6TjacQLP7', CAST(N'2011-12-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (97, N'Mt. Olympus', 
N'https://photos.app.goo.gl/DGHwV9yhN59vJJY98', CAST(N'2011-12-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], tripReportURL) VALUES (98, N'Mt. Whitney', N'https://photos.app.goo.gl/DERSibTMDvKgSCKR7', 
CAST(N'2011-09-23' AS Date), 'https://www.summitpost.org/yet-another-mount-whitney-trip-report-east-buttress/752046')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (99, N'Dirty Dash', N'https://photos.app.goo.gl/8bUH9h9FcSXGqomw5', CAST(N'2011-09-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (100, N'S. Kings', N'https://picasaweb.google.com/116738453430397687681/SouthKingsPeakEtc?authkey=Gv1sRgCJjc36X-ya65zgE&feat=email#', 
CAST(N'2011-09-04' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2011_09_04_KingsEtc.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (101, N'Timpanogos', 
N'https://photos.app.goo.gl/vii2nWPdWSj4ZdhN7', CAST(N'2011-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (102, N'Triple Traverse', 
N'https://photos.app.goo.gl/at2ZD3KyxSyeAS4f7', CAST(N'2011-05-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (103, N'Grunge', 
N'https://photos.app.goo.gl/ZRyUuzbdMq2SKHu37', CAST(N'2011-05-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (104, N'Lone Peak', N'https://photos.app.goo.gl/qdZY9mDMCSDt63Cb9', 
CAST(N'2011-05-05' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2011_05_05_LonePeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (105, N'Flagstaff Mountain', 
N'https://photos.app.goo.gl/dPvZ4pahS2Yhdi1n8', CAST(N'2011-02-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (106, N'Qquirrh Mtns', 
N'https://photos.app.goo.gl/kUpKrs86XJK3mKkC8', CAST(N'2011-02-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (107, N'Cascade Mountain', N'https://picasaweb.google.com/116738453430397687681/CascadeJan122011?authuser=0&authkey=Gv1sRgCNrdksva2YrBtgE&feat=directlink', CAST(N'2011-01-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (108, N'Maple Mountain', N'http://picasaweb.google.com/116738453430397687681/MapleMtn?authkey=Gv1sRgCMnQxKCamffQkAE&feat=directlink', CAST(N'2011-01-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (109, N'Blue John', N'https://photos.app.goo.gl/2Ghm6sfJRS3NGutV9', CAST(N'2010-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (110, N'The Cult', N'https://photos.app.goo.gl/k8EaFdTrUGLJ59HB6', CAST(N'2010-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (111, N'City of Rocks', 
N'https://photos.app.goo.gl/vuBpxTFiSdnp7cZZA', CAST(N'2010-09-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (112, N'Birch Hallow', N'https://photos.app.goo.gl/NpFAtPra3Ec7i2Hi7', CAST(N'2010-08-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (113, N'Kennecott Mine', N'https://photos.app.goo.gl/MDC8akZkSfAgPnVbA', CAST(N'2010-08-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (114, N'Mt. Rainier', 
N'https://photos.app.goo.gl/k4TFfxGDcP93UGBw8',
 CAST(N'2010-07-17' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2010_07_17_Rainer.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (115, N'Mt. Hood',
 N'https://photos.app.goo.gl/ZPMCDZ7GCmcLgtPe6', CAST(N'2010-07-12' AS Date), 'https://www.summitpost.org/one-windy-monday/647576')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (116, N'South Timp', N'https://photos.app.goo.gl/4e18iyvu7TNe6BLq6', CAST(N'2010-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (117, N'Grunge Couloir',
 N'https://photos.app.goo.gl/sMiNtKchfZGvFg4x5', CAST(N'2010-06-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (118, N'Obelisk/Pfeiff', N'https://photos.app.goo.gl/Nshm4MFr8YDZ6Q8i7', CAST(N'2010-06-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (119, N'Upper Pole Couloir', 
N'https://photos.app.goo.gl/4Z9sqp15AsjkRj418', CAST(N'2010-05-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (120, N'Mt. Nebo', N'https://photos.app.goo.gl/iw12Fuf98pTkVAVu5', CAST(N'2010-05-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (121, N'Everest Ridge', N'https://photos.app.goo.gl/cQstYRB1d8AM5moC7', CAST(N'2010-04-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (122, N'Flood', N'http://vanman798.shutterfly.com/pictures/2282', CAST(N'2010-03-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (123, N'Box Elder', N'http://vanman798.shutterfly.com/pictures/2261', CAST(N'2010-03-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (124, N'Crowd Ridge', 
N'https://photos.app.goo.gl/ikgSvxrEDKx6cMJc8', CAST(N'2010-03-06' AS Date), 'https://www.summitpost.org/crowd-ridge/602476')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (125, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/2171', CAST(N'2010-03-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (126, N'Cardston', N'http://vanman798.shutterfly.com/pictures/2075', CAST(N'2009-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (127, N'Gobblers Knob', N'http://vanman798.shutterfly.com/pictures/2059', 
CAST(N'2009-11-28' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2009_11_28_GobblersKnob.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (128, N'Spanish Fork Peak', N'http://vanman798.shutterfly.com/pictures/2045', CAST(N'2009-11-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (129, N'Halloween', N'http://vanman798.shutterfly.com/pictures/2021', CAST(N'2009-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (130, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/2001', 
CAST(N'2009-10-24' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2009_10_24_timp.txt')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (142, N'Bald Mountain', N'http://vanman798.shutterfly.com/pictures/1558', CAST(N'2009-03-07' AS Date), 'https://www.summitpost.org/bald-mountain/494551')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (151, N'BF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1177', 
CAST(N'2008-09-06' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2008_09_06_BFTwins.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (152, N'High Uintas', N'http://vanman798.shutterfly.com/pictures/1127', 
CAST(N'2008-07-24' AS Date) ,'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2008_07_24_GunssightETC.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (153, N'AF Twin Peaks', N'http://vanman798.shutterfly.com/pictures/1112', 
CAST(N'2008-07-18' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2008_07_18_4othPeak.txt')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (160, N'North Timp', N'http://vanman798.shutterfly.com/pictures/959', 
CAST(N'2008-05-31' AS Date), 'https://www.summitpost.org/climbing-north-timpanogos-via-the-cold-fusion-couloir/410266')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (167, N'Pfeifferhorn', N'http://vanman798.shutterfly.com/pictures/808', 
CAST(N'2007-09-14' AS Date), 'https://www.summitpost.org/an-overnight-trip-up-pfeifferhorn-via-the-east-ridge/340703')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (168, N'Mt. Nebo', N'https://vanman798.shutterfly.com/pictures/843', CAST(N'2007-09-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (169, N'Lone Peak', N'http://vanman798.shutterfly.com/pictures/776', CAST(N'2007-08-23' AS Date), 'https://www.summitpost.org/school-house-springs/343564')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (170, N'Mt. Timpanogos', N'http://vanman798.shutterfly.com/pictures/748', CAST(N'2007-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (171, N'Cascade', N'http://vanman798.shutterfly.com/pictures/722', CAST(N'2007-07-14' AS Date), 'https://www.summitpost.org/south-peak-of-cascade-via-big-springs-and-south-ridge/344138')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (172, N'Shed', N'http://vanman798.shutterfly.com/pictures/709', CAST(N'2007-06-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (173, N'Moab Area', N'http://vanman798.shutterfly.com/pictures/601', CAST(N'2007-05-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (174, N'Horsts Funeral', N'http://vanman798.shutterfly.com/pictures/593', CAST(N'2007-04-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (175, N'Random 2006', N'http://vanman798.shutterfly.com/pictures/560', CAST(N'2006-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (176, N'B-day 2006', N'http://vanman798.shutterfly.com/pictures/541', CAST(N'2006-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (177, N'Summer 2006', N'http://vanman798.shutterfly.com/pictures/525', CAST(N'2006-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (178, N'Zion Narrows', N'http://vanman798.shutterfly.com/pictures/507', CAST(N'2006-06-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (179, N'Mt. Marcy', N'http://vanman798.shutterfly.com/pictures/488', CAST(N'2005-07-04' AS Date), 'https://www.summitpost.org/a-two-day-hike-up-mt-marcy-via-south-meadows/341784')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (186, N'Hong Kong', N'https://photos.app.goo.gl/neRGAkCNg8NXGTAo8', 
CAST(N'2004-02-15' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2004_02_15_HK.pdf')
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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (194, N'Santaquin Canyon', 
N'https://photos.app.goo.gl/usjNmmLrZqamq9fk9', CAST(N'2011-11-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (195, N'Red Pine Lake', 
N'https://photos.app.goo.gl/pkDSHaNdwheav1Ad8', CAST(N'2011-10-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (196, N'Sliding Rock', N'https://picasaweb.google.com/116738453430397687681/SlidingRock?authuser=0&authkey=Gv1sRgCLDX_aHM4aun8AE&feat=directlink', CAST(N'2011-08-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (197, N'This is the Place', N'https://picasaweb.google.com/116738453430397687681/ThisIsThePlace?authuser=0&authkey=Gv1sRgCPPWqanG5oeU2gE&feat=directlink', CAST(N'2011-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (198, N'South End Timp', N'https://photos.app.goo.gl/KLcEK5R89Kd9xnNf8', CAST(N'2011-04-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (199, N'Corral Mtn',
 N'https://photos.app.goo.gl/bFSjWLnB5WMyTrbT6', CAST(N'2011-03-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (200, N'Tabernacle Fire', N'https://picasaweb.google.com/116738453430397687681/ProvoTabernacle?authuser=0&authkey=Gv1sRgCOOYpo3TtafcmAE&feat=directlink', CAST(N'2010-12-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (201, N'Christmas', N'https://picasaweb.google.com/116738453430397687681/Christmas2010?authuser=0&authkey=Gv1sRgCL7N8pjKuafZ_gE&feat=directlink', CAST(N'2010-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (202, N'Point Supreme', 
N'https://photos.app.goo.gl/Wd8SdxESrFE5rfRi6', CAST(N'2010-11-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (203, N'Bald Mtn', N'https://photos.app.goo.gl/vfSGnyDPiSESPRsi9', 
CAST(N'2011-07-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (204, N'Ana 5K', N'https://picasaweb.google.com/116738453430397687681/Ana5K?authuser=0&authkey=Gv1sRgCMTj_8H6xKLRpgE&feat=directlink', CAST(N'2010-11-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (205, N'Red Rock', N'https://picasaweb.google.com/116738453430397687681/RedRockCanyon?authuser=0&authkey=Gv1sRgCLnW3Lmmrtf1tgE&feat=directlink', CAST(N'2010-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (206, N'Elephant Butte',
N'https://photos.app.goo.gl/56FLPjacrepqQXV3A', CAST(N'2010-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (207, N'Yellowstone',
 N'https://photos.app.goo.gl/pC6EsqhYjrmnX5Q7A', CAST(N'2010-10-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (208, N'Crazy Man', 
N'https://photos.app.goo.gl/6go52w3zCTobx94U8', CAST(N'2010-05-31' AS Date), 'https://www.summitpost.org/the-crazy-man-couloir/625727')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (209, N'Garden', 
N'https://photos.app.goo.gl/Y6JLGjeiBUszo1Zt5', CAST(N'2010-05-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (210, N'Kessler', N'https://picasaweb.google.com/116738453430397687681/KesslerPeak?authuser=0&authkey=Gv1sRgCN2-rfXjhLmVuAE&feat=directlink', CAST(N'2010-03-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (211, N'UFO Bowl', N'https://vanman798.shutterfly.com/pictures/2158', CAST(N'2010-02-15' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (212, N'Snowbird', 
N'https://photos.app.goo.gl/VjTQuEwZcDwRcxxu8', CAST(N'2010-02-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (213, N'Urban', 
N'https://photos.app.goo.gl/uDbGkezsqURk19Bi9', CAST(N'2010-05-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (214, N'Maple Ice', N'https://vanman798.shutterfly.com/pictures/2141', CAST(N'2010-01-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (215, N'BCC Tour', N'https://picasaweb.google.com/116738453430397687681/BCCTour1232010?authuser=0&authkey=Gv1sRgCOGGgYi659SUiwE&feat=directlink', CAST(N'2010-01-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (216, N'Big Springs', N'https://picasaweb.google.com/116738453430397687681/BigSprings?authuser=0&authkey=Gv1sRgCLGdh5nN3fzn4QE&feat=directlink', CAST(N'2010-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (217, N'Gobblers Knob', N'https://picasaweb.google.com/116738453430397687681/GobblersKnob?authuser=0&authkey=Gv1sRgCOfXy9rmwe6ZrQE&feat=directlink', CAST(N'2010-01-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (218, N'GW Trail', 
N'https://photos.app.goo.gl/yEGUYHso4km6vMZm6', 
CAST(N'2009-12-12' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2009_12_12_Avy.pdf')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (219, N'Dinner', N'https://picasaweb.google.com/116738453430397687681/Dinner?authuser=0&authkey=Gv1sRgCO6L7Nfv3bCGvgE&feat=directlink', CAST(N'2009-11-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (220, N'Dallas', N'https://photos.app.goo.gl/eJ9GE1oGRimfoGR37', CAST(N'2009-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (221, N'Mt. Elbert', N'https://picasaweb.google.com/116738453430397687681/MtElbert?authuser=0&authkey=Gv1sRgCJqM6pq16PKshgE&feat=directlink', CAST(N'2009-09-18' AS Date), 'https://www.summitpost.org/mt-elbert-my-hundredth-mountain/556106')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (222, N'Mt. Massive', N'https://photos.app.goo.gl/1815jasKQHSro9SBA', CAST(N'2009-09-19' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (223, N'Ana B-day', N'https://photos.app.goo.gl/1gHLXV4qSn9mgY9H9', CAST(N'2009-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (224, N'Def Leppard', N'https://picasaweb.google.com/116738453430397687681/DefLeppardEtc8252009?authuser=0&authkey=Gv1sRgCNfSmZ2EzLbmlAE&feat=directlink', CAST(N'2009-08-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (225, N'B-day', N'https://photos.app.goo.gl/k1SDpKVYoRAu6sXz7', CAST(N'2009-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (226, N'Chip/Pfeif', N'https://picasaweb.google.com/116738453430397687681/ChipmanPfeif?authuser=0&authkey=Gv1sRgCOzA0tOOt6vD3QE&feat=directlink', CAST(N'2009-07-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (227, N'Zion', N'https://picasaweb.google.com/116738453430397687681/Zion7242009?authuser=0&authkey=Gv1sRgCIacrr3G96267QE&feat=directlink', CAST(N'2009-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (228, N'East Provo Peak', N'https://photos.app.goo.gl/Q7gs9zkewmSn8i2D8', CAST(N'2009-06-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (229, N'North Peak', N'https://photos.app.goo.gl/Qgg8NhWXEhVX8rhS8', CAST(N'2009-06-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (230, N'Wolverine', N'https://picasaweb.google.com/116738453430397687681/Wolverine4182009?authuser=0&authkey=Gv1sRgCPCSvYLQg8Pu7gE&feat=directlink', CAST(N'2009-04-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (231, N'Bear Trap', N'https://photos.app.goo.gl/HPZN1uHNE4T1p5kX7', CAST(N'2009-04-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (232, N'Meadow Chute', N'https://photos.app.goo.gl/Vywh19iB3Cu7boLo8', CAST(N'2009-04-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (233, N'Brighton', N'https://picasaweb.google.com/116738453430397687681/Brighton3122009?authuser=0&authkey=Gv1sRgCLbP_JiC-9ei4gE&feat=directlink', CAST(N'2009-03-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (234, N'Argenta', N'https://photos.app.goo.gl/8JRJMautz3YRHZWaA', CAST(N'2009-03-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (235, N'Jones Reception', N'https://picasaweb.google.com/116738453430397687681/DaveJonesWeddingReception?authuser=0&authkey=Gv1sRgCODixqrD3rju6QE&feat=directlink', CAST(N'2009-01-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (236, N'Shoveling', N'https://photos.app.goo.gl/qP6MQxx6Yb19zZSh6', CAST(N'2009-01-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (237, N'Mineral Fork', N'https://photos.app.goo.gl/SzrDMxMkH62P61jy9', CAST(N'2009-01-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (238, N'Frostbite', N'https://photos.app.goo.gl/gFfNtSkYZkutLzzj8', CAST(N'2008-12-21' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (239, N'White Pine', N'https://photos.app.goo.gl/hkbhVKjNkQPK4zYUA', CAST(N'2008-11-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (240, N'Nebo', N'https://picasaweb.google.com/116738453430397687681/NeboTriplePeaks1112008?authuser=0&authkey=Gv1sRgCK3r78OXq9m_GA&feat=directlink', 
CAST(N'2008-11-01' AS Date),'https://www.summitpost.org/the-triple/462959')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (241, N'Opera', N'https://picasaweb.google.com/116738453430397687681/Opera10222008?authuser=0&authkey=Gv1sRgCOGknvT9i_2vwgE&feat=directlink', CAST(N'2008-10-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (242, N'House Party', N'https://picasaweb.google.com/116738453430397687681/HouseParty?authuser=0&authkey=Gv1sRgCMnKjpTTx7DYogE&feat=directlink', CAST(N'2008-10-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (243, N'Whistler', N'https://photos.app.goo.gl/v7fJF9nXqhiffYw99', CAST(N'2008-10-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (244, N'Yolanda', N'https://picasaweb.google.com/116738453430397687681/Yolanda9282008?authuser=0&authkey=Gv1sRgCMf4hcmrxt27sgE&feat=directlink', CAST(N'2008-09-28' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (245, N'Psuedo Smoking', N'https://picasaweb.google.com/116738453430397687681/PsuedoSmoking9242008?authuser=0&authkey=Gv1sRgCNm1icylwuqQ0AE&feat=directlink', CAST(N'2008-09-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (246, N'Concert', N'https://picasaweb.google.com/116738453430397687681/Concert9182008?authuser=0&authkey=Gv1sRgCKCRgpq0tf2InQE&feat=directlink', CAST(N'2008-09-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (247, N'Ana''s B-day', N'https://photos.app.goo.gl/UL7LkYioH2fuRbfK7', CAST(N'2008-09-16' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (248, N'Shirtless', N'https://photos.app.goo.gl/5fCcBj9Z5sABCr2KA', CAST(N'2008-09-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (249, N'Y', N'https://picasaweb.google.com/116738453430397687681/Y?authuser=0&authkey=Gv1sRgCKXHmJqE7qCbtQE&feat=directlink', CAST(N'2008-08-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (250, N'B-day', N'https://picasaweb.google.com/116738453430397687681/Bday2008?authuser=0&authkey=Gv1sRgCO3Y_ZDosoTM2QE&feat=directlink', CAST(N'2008-08-12' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (251, N'2007 Overview', N'https://www.facebook.com/media/set/?set=a.10155369660981441.1073741887.620076440&type=1&l=99c4767032', CAST(N'2007-12-31' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (252, N'Timp', 
N'https://picasaweb.google.com/116738453430397687681/RobertsHornTimp?authuser=0&authkey=Gv1sRgCMa7qP3aoLq2igE&feat=directlink', CAST(N'2008-08-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (253, N'SLC', N'https://picasaweb.google.com/116738453430397687681/PeterAndFamilyInSLC6252008?authuser=0&authkey=Gv1sRgCIfo_vSaou_unQE&feat=directlink', CAST(N'2008-06-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (254, N'Upper Pole', N'https://picasaweb.google.com/116738453430397687681/UpperPole?authuser=0&authkey=Gv1sRgCPvT8bfyiYjNtQE&feat=directlink', CAST(N'2008-06-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (255, N'West Mtn', N'https://photos.app.goo.gl/huPkoZSAnEpCfjt19', CAST(N'2008-06-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (256, N'Friends', N'https://picasaweb.google.com/116738453430397687681/FriendsEtc?authuser=0&authkey=Gv1sRgCIjVk6rHiN7z3wE&feat=directlink', CAST(N'2008-05-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (257, N'Y Mtn', 
N'https://photos.app.goo.gl/muccakaknn5nLNQW9', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (258, N'Self', N'https://picasaweb.google.com/116738453430397687681/SelfPortraits?authuser=0&authkey=Gv1sRgCKCe9peO07_37QE&feat=directlink', CAST(N'2008-05-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (259, N'Mahogany', N'https://photos.app.goo.gl/NjorYVNBkrTYhz2j6', CAST(N'2008-05-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (260, N'Ana/Walter', N'https://photos.app.goo.gl/98u89dp6s5yTp1jZ9', CAST(N'2008-04-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (261, N'Broads Fork', N'https://photos.app.goo.gl/3BibXrS43dxBfcDE7', CAST(N'2007-11-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (262, N'Maple Mountain',
 N'https://photos.app.goo.gl/2ECZSqtSKHcmAgNN9', CAST(N'2007-10-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (263, N'Cardiff Pass', N'https://photos.app.goo.gl/ezSjTHyh13N96SAt9', CAST(N'2007-10-20' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (264, N'Buckley', 
N'https://picasaweb.google.com/116738453430397687681/Buckley10122007?authuser=0&authkey=Gv1sRgCIq0lvm-m6qOygE&feat=directlink', CAST(N'2007-10-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (265, N'Y Mtn', N'https://photos.app.goo.gl/NzURoPoqgcNuVMfu7', CAST(N'2007-10-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (266, N'84 Yard', N'https://picasaweb.google.com/116738453430397687681/Yard84E?authuser=0&authkey=Gv1sRgCJTS4tS0v5rE4wE&feat=directlink', CAST(N'2007-09-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (267, N'Fredo Baptism', N'https://photos.app.goo.gl/zNVesfwjFAv7vic3A', CAST(N'2007-09-25' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (268, N'Garden', N'https://picasaweb.google.com/116738453430397687681/Garden8182007?authuser=0&authkey=Gv1sRgCMrZ2KDX4MrD2wE&feat=directlink', CAST(N'2007-08-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (269, N'B-day', N'https://picasaweb.google.com/116738453430397687681/Bday2007?authuser=0&authkey=Gv1sRgCOjl8Iit4o3o9gE&feat=directlink', CAST(N'2007-08-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (270, N'Payson Lakes', N'https://picasaweb.google.com/116738453430397687681/OH8CampoutPaysonLake8112007?authuser=0&authkey=Gv1sRgCLmArc-hvsOOoQE&feat=directlink', CAST(N'2007-08-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (271, N'Silver Lake', N'https://picasaweb.google.com/116738453430397687681/SilverLake7242007?authuser=0&authkey=Gv1sRgCK-T5ZOLvJGYkAE&feat=directlink', CAST(N'2007-07-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (272, N'Copper Mine', N'https://photos.app.goo.gl/MKxXfYUsvAn6QBLr8', CAST(N'2007-07-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (273, N'Rocking Out', N'https://picasaweb.google.com/116738453430397687681/RockingOut6232007?authuser=0&authkey=Gv1sRgCO_Wjcmb9YbCxQE&feat=directlink', CAST(N'2007-06-23' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (274, N'Cinco De Mayo', N'https://picasaweb.google.com/116738453430397687681/CincoDeMayo552007?authuser=0&authkey=Gv1sRgCPrT-Z3h8ZTergE&feat=directlink', CAST(N'2007-05-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (275, N'Red Beard', N'https://picasaweb.google.com/116738453430397687681/RedBeard322007?authuser=0&authkey=Gv1sRgCIXl9e3V6e2ovwE&feat=directlink', CAST(N'2007-03-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (276, N'Provo Peak', N'https://photos.app.goo.gl/9MRAcLV9ydxsibXm6', CAST(N'2006-09-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (277, N'OH8 Campout', N'https://photos.app.goo.gl/Cd2m4UEUx9KektmU6', CAST(N'2006-09-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (278, N'Kings Peak', N'https://photos.app.goo.gl/ggFyuqn41rvmRapc6', 
CAST(N'2006-09-01' AS Date), 'https://www.summitpost.org/kings-peak-via-henry-s-fork/338275')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (279, N'Microburst Storm', N'https://photos.app.goo.gl/fWLh1gvaP6qLYS3F7', 
CAST(N'2006-08-01' AS Date) ,'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/August2006_Miracle.pdf')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (280, N'Deseret Peak', N'https://photos.app.goo.gl/cDXbbYMRkFP2HjLC7', CAST(N'2006-07-22' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (281, N'Funnies', N'https://photos.app.goo.gl/q5Ap1hqw8xgM1cks8', CAST(N'2006-07-11' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (282, N'Haircut', N'https://photos.app.goo.gl/g94Qg4Y3F2XMrpJL7', CAST(N'2006-05-13' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (283, N'Peter''s Kids', N'https://photos.app.goo.gl/g9yFQ3GFtt7RmnnNA', CAST(N'2006-04-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (284, N'Alta', N'https://photos.app.goo.gl/qdHuhR2njPxkS743A', CAST(N'2006-03-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (285, N'Crane Mtn', N'https://vanman798.shutterfly.com/pictures/2417', CAST(N'2005-07-02' AS Date), 'https://www.summitpost.org/crane-mountain-loop-hike/342079')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (286, N'White Oaks', N'https://photos.app.goo.gl/RysFjSbCR4TUCaAn8', CAST(N'2005-05-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (287, N'Mustache', 
N'https://photos.app.goo.gl/JSCBcm4k7BWwWQkV8', CAST(N'2005-04-10' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (288, N'ALPA', N'https://photos.app.goo.gl/ibPTPup3QKkTyTq68', CAST(N'2005-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (289, N'CHS 20 Year', N'https://photos.app.goo.gl/XKoYjiWawbKgUQgLA', CAST(N'2005-08-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (290, N'Chief Mtn', N'https://photos.app.goo.gl/KdENzGW7YuNprP2V7', CAST(N'2005-08-08' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (291, N'Halloween', N'https://photos.app.goo.gl/xavkZ1XHXpaRqgf78', CAST(N'2004-10-29' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (292, N'Kennedy Peak', N'https://photos.app.goo.gl/YmyeJitYnoqx1RAU9', CAST(N'2004-10-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (293, N'DC & VA', N'https://photos.app.goo.gl/4nG4cmb6uzSj2oq69', CAST(N'2004-10-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (294, N'Former DC Stake Center', N'https://photos.app.goo.gl/4mn2AgisAoehnYWN9', CAST(N'2004-07-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (295, N'Karokee', N'https://photos.app.goo.gl/9QdR4mRMdatREmtK8', CAST(N'2004-07-02' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (296, N'Yawk', 
N'https://photos.app.goo.gl/xHvZuum8eT25nKtQ9', CAST(N'2004-06-12' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (297, N'Palmyra', N'https://photos.app.goo.gl/JV5oKnJPHh5LgJZk8', CAST(N'2004-07-04' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (298, N'Bears Den', N'https://photos.app.goo.gl/qZP7xXju9L5aG6VD6', CAST(N'2004-10-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (299, N'Big Schloss', N'https://photos.app.goo.gl/d7arzrDh1T8cLWh39', CAST(N'2004-11-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (300, N'Friends', N'https://photos.app.goo.gl/gnwuc1QHD5CrwTT29', CAST(N'2003-08-03' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (301, N'Halloween', N'https://photos.app.goo.gl/KCwx16x8BVEwWTJv7', CAST(N'2003-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (302, N'II Employees', N'https://vanman798.shutterfly.com/pictures/2453', CAST(N'2001-10-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (303, N'Random', N'https://vanman798.shutterfly.com/pictures/2427', CAST(N'2001-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (304, N'Halloween', N'https://photos.app.goo.gl/qMGeW1YZ1MZBnMAX9', CAST(N'2001-10-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (305, N'2000', N'https://photos.app.goo.gl/32THWmnvPGeyKgMH9', CAST(N'2000-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) 
VALUES (306, N'1999', N'https://photos.app.goo.gl/AZF2v8itQVxFpHNZ8', 
CAST(N'1999-12-31' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/1999AtIssue.pdf')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (307, N'1998', N'https://photos.app.goo.gl/Tp5AKxMMUtGnwinK6', CAST(N'1998-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (308, N'1997', N'https://photos.app.goo.gl/gm6no5kkYMpt1XAa6', CAST(N'1997-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (309, N'1996', N'https://photos.app.goo.gl/McgyisjpLMSSw88a8', CAST(N'1996-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (310, N'1995', N'https://photos.app.goo.gl/aHUospNxUzGNYsoJA', CAST(N'1995-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (311, N'1990-1994', N'https://vanman798.shutterfly.com/pictures/159', CAST(N'1994-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (312, N'1989', N'https://photos.app.goo.gl/ZnexEo4hTbr4LnyU8', CAST(N'1989-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (313, N'1988', N'https://photos.app.goo.gl/hDppHzhj6XqRRNDx7', CAST(N'1988-12-31' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (314, N'Random', N'https://vanman798.shutterfly.com/pictures/2560', CAST(N'2007-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (315, N'Random',
 N'https://photos.app.goo.gl/kf9ZkZ2z7kBNo6US7', CAST(N'2005-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (316, N'2005 and Older Overview', N'https://www.facebook.com/media/set/?set=a.10151149311746441.436815.620076440&type=1&l=115974a1f6', CAST(N'2005-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (317, N'2008 Self-Portraits', N'https://picasaweb.google.com/116738453430397687681/2008SelfPortraits?authuser=0&authkey=Gv1sRgCNCKjZiZ-oP3ygE&feat=directlink', CAST(N'2008-12-30' AS Date))

GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (318, N'Over the Years', N'https://picasaweb.google.com/116738453430397687681/2008OverTheYears?authuser=0&authkey=Gv1sRgCOTiucf1o5zH4wE&feat=directlink', CAST(N'2008-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (319, N'Random', N'https://picasaweb.google.com/116738453430397687681/Random2008?authuser=0&authkey=Gv1sRgCLLN28-egreykQE&feat=directlink', CAST(N'2008-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (320, N'Random', N'https://picasaweb.google.com/107082436175597733376/2014Random?authuser=0&authkey=Gv1sRgCPTizcuN1ZDekwE&feat=directlink', CAST(N'2014-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (321, N'Mustache', 
N'https://photos.app.goo.gl/tEt5eoywWAuYjVv2A', CAST(N'2014-12-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (322, N'Ana and Walter',
 N'https://photos.app.goo.gl/YCPUmtMtnkgp87DK8', CAST(N'2013-12-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (323, N'Hair', N'https://picasaweb.google.com/107082436175597733376/Hair?authuser=0&authkey=Gv1sRgCLbym7OnyMruuwE&feat=directlink', CAST(N'2013-12-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (324, N'Mustache', N'https://picasaweb.google.com/116738453430397687681/2010Mustache?authuser=0&authkey=Gv1sRgCIGJyPes78y7ZA&feat=directlink', CAST(N'2010-03-07' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (325, N'Mustache', N'https://picasaweb.google.com/107082436175597733376/Stache?authuser=0&authkey=Gv1sRgCKWT0I_bg8Sd6gE&feat=directlink', CAST(N'2013-04-17' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (326, N'Over the Years', N'https://vanman798.shutterfly.com/pictures/2218', CAST(N'1972-01-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (327, N'Humphreys Peak', 
N'https://photos.app.goo.gl/tRGp2yHGJxHkjzzv7', CAST(N'2010-11-18' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (328, N'Joe''s Valley', 
N'https://photos.app.goo.gl/jewGa3P2Xp3ifwrKA', CAST(N'2010-11-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (329, N'86 Duplex', N'https://photos.app.goo.gl/c7LSms1FKfxwJyYA9', CAST(N'2010-12-10' AS Date))


go

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date] ) VALUES (330, N'2010 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155368147511441.1073741876.620076440&type=1&l=f9bfb4a591'
, CAST(N'2010-12-31' AS Date))


GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (331, N'Lemmy Look', N'https://picasaweb.google.com/116738453430397687681/LemmyLook?authuser=0&authkey=Gv1sRgCLSA4ovSz7_LyQE&feat=directlink', CAST(N'2014-08-14' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (332, N'300,000 km & misc', N'https://picasaweb.google.com/116738453430397687681/300000?authuser=0&authkey=Gv1sRgCOOVvNCIv-fB5QE&feat=directlink', CAST(N'2011-09-05' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (333, N'Santa Ski', N'https://photos.app.goo.gl/La3yPbn34YsoswhW9', CAST(N'2015-12-24' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (334, N'Penguin Plunge', 
N'https://photos.app.goo.gl/iZh8AoYPfcRPQ54E8', 
CAST(N'2016-01-30' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (335, N'Maple Mtn', 
N'https://photos.app.goo.gl/51sV7Htn5K9fGBi87', CAST(N'2016-02-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (336, N'Stratosphere', 
N'https://photos.app.goo.gl/cfw64CXMBNPV9qbi6', 
CAST(N'2016-03-01' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (337, N'Water Leak', 
N'https://photos.app.goo.gl/suj4nPDAq7hKW3uZA', CAST(N'2016-03-06' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (338, N'Easter Bunny', N'https://photos.app.goo.gl/FWzuiPZgb81Xu6Kg7', CAST(N'2016-03-27' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (339, N'Deseret Peak - West Couloir', 
N'https://photos.app.goo.gl/Rof61nGNUZ72wa6C8',
 CAST(N'2016-06-11' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2016_06_11_DeseretPeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (340, N'Lone Peak', 
N'https://photos.app.goo.gl/Bd4uCbqvKBBR7M11A', 
CAST(N'2016-07-02' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2016_07_02_LonePeak.txt')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (341, N'Uintas: Blacks Fork River', 
N'https://goo.gl/photos/as4DDPMm2W9B1hb57', CAST(N'2016-09-03' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2016_09_03_TokewannaPeak.pdf')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (342, N'Nebo: KLAS', N'https://goo.gl/photos/woGiRTZaZ799g2RS9', CAST(N'2016-09-09' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (343, 
N'Moonlight Buttress', N'https://goo.gl/photos/ujb7p7MBWKtrGzvW9', CAST(N'2016-09-25' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2016_09_24_MoonlightButtress.txt'
)
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (344, N'Joes Valley', N'https://goo.gl/photos/HXA2kd39ath9Ymhu9', CAST(N'2017-02-04' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (345, N'New Nissan Frontier', N'https://goo.gl/photos/as8w25StJrC4RZru7', CAST(N'2017-03-15' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES 

(346, N'La Sal ski tour, etc', N'https://goo.gl/photos/CkGH2NfoLqhUWUXJA', CAST(N'2017-04-14' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2017_04_14_LaSal.txt'
)
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (347, 
N'Moab and Nine Mile', N'https://goo.gl/photos/EPfoZcyE26ZnmyRd7', CAST(N'2017-05-14' AS Date),
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2017_05_14_MoabAnd9Mile.txt')
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (348, N'Frontier', N'https://www.facebook.com/media/set/?set=a.10154305505111441.1073741854.620076440&type=1&l=1952fe31eb', CAST(N'2017-03-15' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (349, N'White Rim', 
N'https://www.facebook.com/media/set/?set=a.10154974157286441.1073741863.620076440&type=1&l=861ddf86ee', 
CAST(N'2017-11-19' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2017_11_19_WhiteRim.txt')
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (350, N'Mexico', N'https://www.facebook.com/media/set/?set=a.10154923870611441.1073741862.620076440&type=1&l=de5f5ee907', CAST(N'2017-12-22' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (351, N'Juttas Wedding', N'https://www.facebook.com/media/set/?set=a.10154542489521441.1073741858.620076440&type=1&l=6fa02452a7', CAST(N'2017-07-26' AS Date))
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (352, N'Cathedral Valley', N'https://www.facebook.com/media/set/?set=a.10154394724891441.1073741855.620076440&type=1&l=7bc7dc75f5', CAST(N'2017-06-10' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (353, N'2017 Overview', N'https://www.facebook.com/media/set/?set=a.10154046507461441.1073741845.620076440&type=1&l=1d4b4b2d7c', CAST(N'2017-12-31' AS Date), '/tripreports/journal.html')
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (354, N'2009 Overview', N'https://www.facebook.com/media/set/?set=a.10153013806996441.1073741837.620076440&type=1&l=ba7dbf495f', CAST(N'2009-12-31' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (355, N'2016 Overview', N'https://www.facebook.com/media/set/?set=a.10153164789441441.1073741840.620076440&type=1&l=93673a1e1c', CAST(N'2016-12-31' AS Date), '/tripreports/journal.html')
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (356, N'2015 Overview',
 N'https://www.facebook.com/media/set/?set=a.10153148958961441.1073741839.620076440&type=1&l=123e1fcce6', CAST(N'2015-12-31' AS Date), '/tripreports/journal.html')
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (357, N'Halloween', N'https://www.facebook.com/media/set/?set=a.10154974387246441.1073741864.620076440&type=1&l=a98a32557d', CAST(N'2017-10-31' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (358, N'Capitol Reef, Swell, etc', N'https://www.facebook.com/media/set/?set=a.10154975035391441.1073741865.620076440&type=1&l=a53248c56b', CAST(N'2017-06-23' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (359, N'Joes Valley', N'https://www.facebook.com/media/set/?set=a.10155059955456441.1073741870.620076440&type=1&l=eb14c121f6', CAST(N'2018-02-24' AS Date))
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (360, N'Squash Head', N'https://photos.app.goo.gl/95dcWrqBtgz1yf9G3', CAST(N'2018-03-03' AS Date))
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (361, N'Joes Valley', N'https://www.facebook.com/media/set/?set=a.10155088664906441.1073741871.620076440&type=1&l=de6048c8f9', CAST(N'2018-03-07' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (362, N'Joes Valley', N'https://photos.app.goo.gl/Nx2GyBwKrIEmWguJ3', CAST(N'2018-03-17' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (363, N'Redwoods',
 N'https://www.facebook.com/media/set/?set=a.10155319506356441.1073741874.620076440&type=1&l=82f776e852', 
 CAST(N'2018-06-12' AS Date),
 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2018_06_09_Redwoods.txt')
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (364, N'Ibapah and Goshute Cave', 
N'https://www.facebook.com/media/set/?set=a.10155355298001441.1073741875.620076440&type=1&l=1fc21de1fd'
, CAST(N'2018-06-30' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2018_06_29_Ibapah_GoshuteCave.txt')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (365, N'Spanish Fork Peak', 
N'https://photos.app.goo.gl/wZzH2ZuCM4VVEbSv8'
, CAST(N'2016-10-08' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2016_10_08_SpanishForkPeak.txt')
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (366, N'Five Unita 13ers', 
N'https://photos.app.goo.gl/rgAVpJXUDGReViPF7'
, CAST(N'2016-08-13' AS Date), 
'https://www.summitpost.org/five-utah-13ers-in-a-day/980294')
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (367, N'Y Mtn and Maple Mtn', 
N'https://photos.app.goo.gl/YL2MXRuFpYRwg9H36'
, CAST(N'2013-11-11' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2013_11_11_YMtn_MapleMtn.txt')
GO

--

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (368, N'2018 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155027004366441.1073741867.620076440&type=1&l=d36d8b6e09'
, CAST(N'2018-12-31' AS Date), 
'/tripReports/journal.html')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (369, N'2012 Overview', 
N'https://www.facebook.com/media/set/?set=a.37231226440.43627.620076440&type=1&l=a9859ac3b4'
, CAST(N'2012-12-31' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (370, N'2011 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155368163691441.1073741877.620076440&type=1&l=3161e4e09e'
, CAST(N'2011-12-31' AS Date))
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (371, N'Squaw Peak Lookout', N'https://picasaweb.google.com/116738453430397687681/SquawPeakLookOut?authuser=0&authkey=Gv1sRgCPqEqeCj5drzyAE&feat=directlink', CAST(N'2010-12-31' AS Date))
Go
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (372, N'2014 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155368199146441.1073741879.620076440&type=1&l=1e8aea0ff4'
, CAST(N'2014-12-31' AS Date), '/tripReports/journal.html')
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date] ) VALUES (373, N'2013 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155368198356441.1073741878.620076440&type=1&l=568908f3c5'
, CAST(N'2013-12-31' AS Date))
GO
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (374, N'2006 Overview', N'https://www.facebook.com/media/set/?set=a.10155369660046441.1073741885.620076440&type=1&l=8f51a114f5', CAST(N'2006-12-31' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], TripReportURL) VALUES (375, N'40 at 40', 
N'https://www.facebook.com/media/set/?set=a.10155374033051441.1073741889.620076440&type=1&l=f99e492d99', 
CAST(N'2008-08-11' AS Date),'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/40At40.xls')
							 
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (376, N'Provo Peak', N'https://picasaweb.google.com/116738453430397687681/ProvoPeak?authuser=0&authkey=Gv1sRgCIK9kMyy24eVmQE&feat=directlink', CAST(N'2008-08-11' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (377, N'Opas Pics 1967-1978', 
N'https://www.facebook.com/media/set/?set=a.10155382402491441.1073741891.620076440&type=1&l=e710561b8e', 
CAST(N'1968-08-12' AS Date))
							 
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (378, N'The Swell', 
N'https://www.facebook.com/media/set/?set=a.10155482345016441&type=1&l=bcb86ebf1d', 
CAST(N'2018-08-26' AS Date))
							 
GO

--
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (379, N'AAM', N'https://www.facebook.com/media/set/?set=a.10155499591396441&type=1&l=b1fb4d8fa8', CAST(N'1986-09-10' AS Date))

GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (380, N'AAM Reunion', N'https://www.facebook.com/media/set/?set=a.10155558554571441&type=1&l=936cfa9311', CAST(N'2018-10-05' AS Date))

GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (381, N'BYU', N'https://www.facebook.com/media/set/?set=a.10155578138476441&type=1&l=d65c5bf873', CAST(N'1986-04-04' AS Date))

GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (382, N'Black Dragon', N'https://www.facebook.com/media/set/?set=a.10155632947516441&type=1&l=23a213f860', CAST(N'2018-11-09' AS Date))

GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (383, 
N'Mexico Trip', N'https://www.facebook.com/media/set/?set=a.10155729429691441&type=1&l=346a4f1be1'
, CAST(N'2018-12-15' AS Date))

GO




INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (384, 
 N'2019 Overview', 
N'https://www.facebook.com/media/set/?set=a.10155740627406441&type=1&l=4772c6944a'
, CAST(N'2019-12-31' AS Date))

GO





INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (385, 
 N'2018/2019 Ice Season', 
N'https://www.facebook.com/media/set/?set=a.10155787854831441&type=1&l=6d93b60d30'
, CAST(N'2019-01-01' AS Date))

GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (386, 
 N'AZ Strip', 
N'https://www.facebook.com/walter.van.theman/media_set?set=a.10155940644906441&type=3'
, CAST(N'2019-04-14' AS Date))

GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL]) VALUES (387, 
 N'US State High Points', 
N'https://photos.app.goo.gl/FobQCm6vB5upy9Qc6'
, CAST(N'2019-10-07' AS Date), 'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/STATE%20HIGH%20POINTS.xlsx')

GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (388, 
 N'Mirror Lake Highway', 
N'https://photos.app.goo.gl/fuZ9TcS3vWJBTbt98'
, CAST(N'2019-08-04' AS Date))

GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (389, 
 N'Water Leak', 
N'https://photos.app.goo.gl/N3uXJBCLqNk2WPq57'
, CAST(N'2019-08-06' AS Date))

GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (390, N'Tokewanna', 
N'https://photos.app.goo.gl/2BR2e6z8EMXwHb9RA'
, CAST(N'2019-08-17' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_17_Tokewanna.txt')
GO



INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (391, N'Katahdin', 
N'https://photos.app.goo.gl/aSewQtkn5EPPhB1z5'
, CAST(N'2019-08-27' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_26to31_Katahdin_Washington_Mansfield_Greylock_Portland.txt')
GO

INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (392, N'Mt. Washington', 
N'https://photos.app.goo.gl/xUR3Z85UhtwVaXHD6'
, CAST(N'2019-08-28' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_26to31_Katahdin_Washington_Mansfield_Greylock_Portland.txt')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (393, N'Mt. Mansfield', 
N'https://photos.app.goo.gl/jQCDhHAnAjHUokDh6'
, CAST(N'2019-08-29' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_26to31_Katahdin_Washington_Mansfield_Greylock_Portland.txt')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (394, N'Mt. Greylock', 
N'https://photos.app.goo.gl/sAXi3R4CZNgVwfuN8'
, CAST(N'2019-08-30' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_26to31_Katahdin_Washington_Mansfield_Greylock_Portland.txt')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (395, N'Portland, ME', 
N'https://photos.app.goo.gl/AevGVBbiT5GNGgme9'
, CAST(N'2019-08-31' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_08_26to31_Katahdin_Washington_Mansfield_Greylock_Portland.txt')
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date], [TripReportURL] ) VALUES (396, N'SC, GA, TN, KY, VA, and NC High Points', 
N'https://photos.app.goo.gl/qFNwv84nWpLxVZNa8'
, CAST(N'2019-10-03' AS Date), 
'https://github.com/wvanderheide/slnWalter/blob/master/Walter/TripReports/2019_10_03_SC_GA_TN_KY_VA_NC__Highpoints.txt')
GO


SET IDENTITY_INSERT [dbo].[Photos] OFF
GO



    SELECT max(id) as MaxId, count(Id) as Photos_Count
  FROM [Walter].[dbo].Photos
  go
