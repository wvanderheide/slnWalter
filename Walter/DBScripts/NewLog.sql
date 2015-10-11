USE [Walter]
GO

INSERT INTO [dbo].[MountainSummitLog]
           ([MountainID]
           ,[SummitDate]
           ,[SummitNote])
     VALUES
           (153
           ,'May 18 2001'
           ,  'Date uncertain')
GO

print scope_identity()
--Select * from [MountainSummitLog] order by id desc
/*	
Chimney Rock  2280 ,
(695 m) July 3(?) 2002  35.440706N,82.252642(?) 
USA,North Carolina 
 Really this was a hike down
as this tourist trap has an elevator
in the mountain to take you up. 
The hike down crossed Hickory Nut Falls
a 404 ,
( m) waterfall as seen in
The Last of the Mohicans.  

Mt. Mitchell  6684 ,
(2037 m)  May 19 2001  35.76470 , -82.2653 
USA,North Carolina 
 Highest Point East of the Mississippi 
 and of course highest point in North Carolina.  

Mary's Rock  3514 ,
(1071 m)  April 2000 
 (Hiked at least 2 other times prior)  38.64970 , -78.3175 
USA,Virginia  

Signal Knob  2500(?) ,
(762 m)  August(?) 1999  38 57.67 , -78 19.89 
USA,Virginia 
Scenic overlook(?)  

Maisan  2208 ,
(673 m)  July(?) 1996  35.79167 , -127.42528E 
South Korea,Chollabuk-do Province   

Chirisan  6282 ,
(1915 m)  March(?) 1996  35.18N 128.08E
South Korea,South Kyongsang Province 
 Second highest mountain in South Korea.  
1 foot = 0.3048 meters :: 1 meter = 3.2808399 feet	

(?)
*/