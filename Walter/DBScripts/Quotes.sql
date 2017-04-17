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

SET IDENTITY_INSERT [dbo].[Quotes] OFF
GO


    SELECT max(id) as MaxId, count(Id) as Quotes_Count
  FROM [Walter].[dbo].Quotes