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
INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (343, N'Moonlight Buttress', N'https://goo.gl/photos/ujb7p7MBWKtrGzvW9', CAST(N'2016-09-25' AS Date))
GO


INSERT [dbo].[Photos] ([Id], [Title], [URL], [Date]) VALUES (344, N'Joes Valley', N'https://photos.google.com/album/AF1QipMlbdkLbONZ8lB4hl6gjfqjiP1qlGvgQT1bhkTJ', CAST(N'2017-02-04' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO



    SELECT max(id) as MaxId, count(Id) as Photos_Count
  FROM [Walter].[dbo].Photos
  go