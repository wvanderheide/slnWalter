USE [Walter]
GO

DROP TABLE [dbo].[Bands]
GO

DROP TABLE [dbo].[ACDC]
GO



/****** Object:  Table [dbo].[ACDC]    Script Date: 10/17/2016 1:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACDC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Song] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ACDC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bands]    Script Date: 10/17/2016 1:15:32 PM ******/
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


SELECT max(id) as MaxId, count(song) as ACDC_Count
  FROM [Walter].[dbo].[ACDC]
  go

  SELECT max(id) as MaxId, count(Name) as Band_Count
  FROM [Walter].[dbo].Bands
  go