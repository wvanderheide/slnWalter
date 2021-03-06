USE [Walter]

GO
DROP TABLE [dbo].[Quotes]

GO
/****** Object:  Table [dbo].[Quotes]    Script Date: 10/17/2016 1:22:44 PM ******/
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
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (134, N'His mind is not for rent.', N'Rush')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (135, N'Writing is one way of making the world our own, and walking is another.', N'Geoff Nicholson')
GO
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (136, N'I no longer manage business or pursue money beyond what I need.', N'Steve Vaught')
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
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (162, N'Life can only be understood backwards; but it must be lived forwards.', N'Soren Kierkegaard')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (163, N'The strongest memory is weaker than the palest ink.', N'Unknown')
GO



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (164, N'You can tell how smart people are by what they laugh at.', N'Tina Fey')
GO



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (165, N'Ponder,decide, pray and mediate for confirmation, take action, then be at peace.', N'Mark Swain')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (166, N'When you stop questioning and embrace the life you have been given, that is when you discover meaning.', N'Chris Sharma')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (167, N'You do not need to look for something outside of yourself.  Just be yourself to the best of your ability and everything you do will be that much more meaningful and rewarding.', N'Chris Sharma')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (168, N'If you do not read the newspaper, you are uninformed. If you read the newspaper, you are mis-informed', N'Mark Twain')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (169, N'The whole problem with the world is that fools and fanatics are so certain of themselves and wiser people so full of doubts.', N'Bertrand Russell')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (170, N'Easy reading is damn hard writing.', N'Nathaniel Hawthorne')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (171, N'It’s not how much money you make, it’s how much you keep, and how many generations you keep it.', N'Robert T. Kiyosaki')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (172, N'The effort of thinking for oneself, instead of doing what everyone else does (aka following the follower), prevents most people from finding their own way of solving their problems and ultimately from being in control of their life.', N'Walter V (adapted from a ideas in Rich Dad Poor Dad)')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (173, N'Wealth is a person’s ability to survive so many days forward – or, if I stopped working today, how long could I survive?', N'R. Buckminster Fuller')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (174, N'To be wealthy (which may not be rich) you need enough cash flow from assets to at least cover your monthly expenses (so you don’t have to work).  If there is any cash flow left over after meeting your needs, you should reinvest it into more asserts and over time you then can grow rich.', N'Walter V (adapted from a ideas in Rich Dad Poor Dad)')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (175, N'The poor and the middle class buy luxuries with their children’s inheritance.', N'Robert T. Kiyosaki')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (176, N'Winning means being unafraid to lose.', N'Fran Tarkenton')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (177, N'The most common form of laziness is laziness by staying busy.', N'Robert T. Kiyosaki')
GO

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (178, N'The rich know that savings are only used to create more money, not to pay bills. Whereas poor people have the bad habit of innocently (naively) dipping into savings.', N'Robert T. Kiyosaki')
GO


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (179, N'Of all ridiculous things the most ridiculous seems to me, to be busy — to be a man who is brisk about his food and his work.. What, I wonder, do these busy folks get done?', N'Soren Kierkegaard')
go 



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (180, N'More is not more, better is more.', N'Megan Sheridan')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (181, N'Nothing is making you busy other than yourself.', N'Megan Sheridan')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (182, N'The Band-Aid solution is actually the best kind of solution because it involves solving a problem with the minimum amount of effort, time, and cost.', N'Malcolm Gladwell')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (183, N'Someone is sitting in the shade today because someone planted a tree a long time ago ', N'Warren Buffet')

go 
INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (184, N'We talk so much about leaving a better planet to our kids, that we forget to leave better kids to our planet', N'Gerry Burnie')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (185, N'But the lavish lifestyle sells TV time and newspapers. All too often young people are indoctrinated with the belief that “those who have money spend lavishly” and “if you don’t show it, you don’t have it.', N'Thomas J. Stanley')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (186, N'On average, millionaires spend significantly more hours per month studying and planning their future investment decisions, as well as managing their current investments, than high-income nonmillionaires.', N'Thomas J. Stanley')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (187, N'What is risk? Having one source of income. Employees are at risk. They have a single source of income. What about the entrepreneur who sells janitorial services to your employers? He has hundreds and hundreds of customers... hundreds and hundreds of sources of income.', N'Thomas J. Stanley')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (188, N'Money is plentiful for those who understand the simple rules of its aquisition', N'George S. Clason')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (189, N'I found the road to wealth when I decided that a part of all I earned was mine to keep.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (190, N'Truth is always simple.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (191, N'Be not misled by thine own romantic desires to make wealth rapidly.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (192, N'Be not too confident of thine own wisdom in entrusting thy treasures to the possible pitfalls of investments.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (193, N'Change from men who earn from their own labor to men who draw dividends from the earnings of their gold.', N'George S. Clason')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (194, N'Every man must master his spirit of procrastination before he can expect to share in the rich treasures of Babylon. Men of action are favored by the Goddess of good luck.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (195, N'Good luck can be enticed by accepting opportunity.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (196, N'Gold is reserved for those who know its laws and abide by them.', N'George S. Clason')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (197, N'Gold clingeth to the protection of the cautious owner, and gold slippeth away from the man who invests it in businessess or purposes with which he is not familiar.', N'George S. Clason')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (198, N'With investing, the entrance strategy is much more important than the exit strategy.', N'Eddie Lampert')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (199, N'I will tell you how to become rich. Be fearful when others are greedy, and greedy when others are fearful.', N'Warren Buffet')
go 

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (200, N'Five ascending levels of intellect: Smart, Intelligent, Brilliant, Genius, Simple.', N'Albert Einstein')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (201, N'The wise investing mantra is: few bets, big bets, infrequent bets placed with the odds in your favor.', N'adapted from The Dhandho Investor')
go 


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (202, N'An emergency is simply something you failed to plan for.', N'adapted from The Cheapskate Next Door')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (203, N'Most people do not plan for anything then when the slighest thing happens they are in trouble.', N'adapted from The Cheapskate Next Door')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (204, N'I respect the Amish because they carefully consider the question of whether change is always progress, and whether progress is in all ways positive.', N'Jeff Yeager')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (205, N'He is richest who is content with the least, for content is the wealth of nature.', N'Socrates')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (206, N'Nature demands of us that we pay attention.', N'Lee H. Whittlesey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (207, N'Dangers are simply a part of wilderness.', N'Lee H. Whittlesey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (208, N'Wilderness is impersonal; it does not care whether you live or die; it does not car how much you love it.', N'Lee H. Whittlesey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (209, N'Truth hurts only once but a lie hurts every time you remember it.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (210, N'Doc still loved true things but he knew it was not a general love and it could be a very dangerous mistress. --Cannery Row', N'John Steinbeck')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (211, N'Those traits we detest, sharpness, greed, acquisitiveness, meanness, egotism and self-interest are the traits of [monetary] success. --Cannery Row', N'John Steinbeck')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (212, N'Truth, for one thing, is the enemy of Power.', N'Edward Abbey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (213, N'In the Soviet Union government controls industry; in the USA industry controls government.', N'Edward Abbey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (214, N'A world entirely conquered by technology, entirely dominated by industrial processes, entirely occupied by man and machine (no animals, plants, insects, etc) would be a world unfit to live in - perhaps impossible to live in.', N'Edward Abbey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (215, N'For most people the wilderness does not become attractive until it is relatively safe.', N'Edward Abbey')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (216, N'Enough is as good as a feast.', N'Thomas Mallory')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (217, N'Discomfort is the price of admission to a meaningful life.', N'Susan David')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (218, N'Life is short but going to work makes it seem longer.', N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (219, N'Do what you fear and fear disappears.', N'David Schwartz')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (220, N'The mental health club or just sitting still is much more essential to my well-being, my happiness, and probably even my physical health than the treadmill.', N'Pico Iyer')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (221, N'It wasn’t the absence of noise, it was the presence of a kind of quiet.', N'Pico Iyer')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (222, N'The greatest weapon we have against stress is to choose one thought over another.', N'William James')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (223, N'Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough.', N'Oprah Winfrey')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (224, N'When you don’t appreciate what you have or what people do for you, you become bitter and resentful, you push the positive people away and you will only surround yourself with a bunch of other ungrateful people.
', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (225, N'Working hard and doing a good job are insufficient for getting a promotion.', N'Heather Downing')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (226, N'There are a thousand right ways to do something, and an infinite (less 1000) wrong ways.', N'Mark Miller')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (227, N'You can observe a lot by watching.', N'Yogi Berra')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (228, N'Improving takes practice.', N'Philip Japikse')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (229, N'You cannot create a solution to a problem you do not understand.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (230, N'Salary might go from X to 3X, but work value ranges from X to 20X.', N'Adapted from Billy Hollis')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (231, N'Sarcasm is a natural response to stupidity.', N'Adapted from a radio show')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (232, N'You will never be completely at home again, because part of your heart always will be elsewhere. 
That is the price you pay for the richness of loving and knowing people in more than one place.', N'Miriam Adeney')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (233, N'Stewardship, not conspicuous consumption, is the proper relationship of man to material wealth.', N'Erza Taft Benson')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (234, N'Men do not realize how great an income thrift is.', N'Roman philosopher Cicero')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (235, N'The way you do anything is the way you do everything.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (236, N'Anyone who believes exponential growth can go on forever in a finite world is either a madman or an economist.', N'Kenneth Boulding')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (237, N'Disciple now equals freedom in the future.', N'Adapted from Jocko Willink')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (238, N'I have learned to seek my happiness by limiting my desires, rather than in attempting to satisfy them.', N'John Stuart Mill')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (239, N'To build wealth takes patience, consistency, thrift, and decades of time.'
, N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (240, N'Time in the market, not timing the market is how investments grow.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (241, N'I have come to realize that the two most vital wealth builders are time and thrift.', N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (242, N'If you have no surplus saved up you are the plaything of chance, the pawn of circumstance, the slave of some ones caprice, a leaf in a storm.'
, N'Elbert Hubbard')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (243, N'Thrift! It is the basis of all the other virtues.', N'Elbert Hubbard')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (244, N'People can clutter your life even more than stuff.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (245, N'There really is no such thing as failure, just lessons to learn.', N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (246, N'Our mental make-up is suited to a life of very severe physical labor. I used, when I was younger, to take my holidays walking. I would cover twenty-five miles a day, and when the evening came I had no need of anything to keep me from boredom, since the delight of sitting amply sufficed. In modern life, a great deal of work is sedentary and as such an escape from boredom is one of the really powerful desires of almost all human beings.', N'Apdated from Bertrand Russell')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (247, N'However much you may acquire, you will always wish to acquire more; satiety is a dream which will always elude you.', N'Bertrand Russell')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (248, N'Law Enforcement and Military Force are two very different functions.  Law Enforcement is [should be] about deescalating conflict.  Officers cannot [should not] shoot unless shoot at, and should seek a peaceful conclusion.  Whereas Military Force is all about inflicting more pain on an enemy then he can inflict on you.  [The Posse Comitatus Act limits the use of federal military personnel in enforcing domestic policies].', N'Waco (miniseries)')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (249, N'It has been my observation that most people get ahead during the time that others waste.', N'Henry Ford')
go





INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (250, 
N'Widening polarization about political, religious, and scientific issues threatens open societies, leading to entrenchment of beliefs, reduced mutual understanding, and a pervasive negativity surrounding the very idea of consensus.'
, N'Steve Fleming')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (251, 
N'If you want it really bad, you wil get it really bad.'
, N'Unkown')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (252, 
N'One of the peculiarites of travel is that when you go out of your way to visit a place - even briefly - it becomes yours.'
, N'Joe Glickman')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (253 ,
N'The beauty of the plains is not just in themselves but in the sky, in what you think when you look at them, and in what they are not.'
, N'Ian Frazier')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (254 ,
N'Powerful emotions are what the climber lives for, fear and joy being the two strongest.'
, N'Jeremy Zaccardi')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (255 ,
N'More important than life after death, is life before death.'
, N'Adapted from Linda Ronstadt')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (256,
N'Formal education will make you a living, self education will make you a fortune.'
, N'Jim Rohn')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (257,
N'Poor people first spend their money, and then save if any is left. Rich people first save their money and then spend what is left. And it all starts with the same amount of money - just a different philosophy.'
, N'Adapted from Jim Rohn')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (258,
N'Ask for wisdom to deal with the challenges for today and tomorrow. Do not wish it was easier; wish you were better.'
, N'Jim Rohn')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (259,
N'Do not be careless about the spiritual part of your nature because it us what makes us different from other life forms.'
, N'Adapted from Jim Rohn')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (260,
N'For many, this need for primary experience [wilderness] is as real as the need for food.'
, N'Eric Blehm')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (261,
N'To put aside all the excessive finery, the consumerism, the superfluous creature comforts, the technology, the mechanical noise, the hurry and bustle, the electric buzz and glitter, is that not deeply human?'
, N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (262,
N'Urgency wrecks productivity. Sometimes important tasks stare you right in the face, but you neglect them and respond to urgent but unimportant things.'
, N'Thomas Oppong')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (263,
N'The lazy worker is the one who claims he is so busy or too busy.  He is also the one who creates a sense of urgency in order to feign productivity.'
, N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (264,
N'An outdoorsman is one who seeks the elements as opposed to seeking shelter from them.'
, N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (265,
N'One must discipline himself to be a creator and to not be a consumer.'
, N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (266,
N'In the US Court system, justice will not happen simply because one is innocent.'
, N'Walter VanderHeide')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (267,
N'Nothing vast enters the life of mortals without a curse.'
, N'Sophocles')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (268,
N'If we have the truth, it cannot be harmed by investigation. If we have not the truth, it ought to be harmed.'
, N'Rueben Clark')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (269,
N'Somethings that are true are not very useful.'
, N'Boyd Packer')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (270,
N'Todays social media, digital photography, and GPS have significantly diminished wilderness and wilderness experiences - much more than maps, guidebooks, guiding services, and photography books of the past.  All these influences, both past and present, remove the unknown only to demean discovery, surprise, solitude, and needed self-reliance - the very traits which make a place wild. I fear that soon all we will be left with are domesticated places posing as wilderness, much like our current day National Parks.'
, N'Walter V (adapted from Jack Turner, The Abstract Wild ')
go

INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (271,
N'Rather than defending your performance instead ask yourself how you can improve.'
, N'Walter V')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (272,
N'Leadership isn’t about advancing yourself.  Leadership is about is about advancing your people.'
, N'Unknown')
go



INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (273,
N'Every twenty minute job is just one broken bolt away from becoming a three day ordeal.'
, N'Unknown')
go


INSERT [dbo].[Quotes] ([Id], [Quote], [Author]) VALUES (274,
N'How can you be happy if you do not laugh nor appreciate humor?'
, N'Unknown')
go

SET IDENTITY_INSERT [dbo].[Quotes] OFF
GO



    SELECT max(id) as MaxId, count(Id) as Quotes_Count
  FROM [Walter].[dbo].Quotes