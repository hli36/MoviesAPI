USE [MoviesDB]
GO

SELECT *
  FROM [MoviesDB].[dbo].[Movies]
    where ExternalId=13701

SELECT *
  FROM [MoviesDB].[dbo].[Movies]
  where Title like '%avengers%'
  order by Popularity desc

SELECT *
  FROM [dbo].[Genres]
GO

--delete from Genres where id > 20
--truncate table [dbo].[GenreMovies]

SELECT *
  FROM [MoviesDB].[dbo].[Casts]
  where id =304291

SELECT *
  FROM [dbo].[MovieCasts]
  where MovieId=246
GO


SELECT id,
      OriginalTitle
      ,[AverageVote]
	  , Popularity
      
  FROM [MoviesDB].[dbo].[Movies]
  order by Popularity desc

  select @@servername


--truncate table [MovieCasts]

select * from Movies 
where id =2242 -- UP -- 13720

SELECT  *
  FROM [MoviesDB].[dbo].[MovieCrews]
  where movieid=26549
  order by movieid 

SELECT  *
  FROM [MoviesDB].[dbo].[MovieCrews] mc
  join Movies m on mc.movieid = m.id
  order by m.Popularity desc
  
  select * from movies where ExternalId =

  select * from crews c join [MovieCrews] m on
  c.id = m.crewid where movieid = 257
  order by job 

    select * from crews c join [MovieCrews] m on
  c.id = m.crewid where crewid = 2735
  order by department


  select * from crews where externalid = 138
  -- ext 680

  select  * from [MovieCrews]

  select distinct c.name, c.job from crews c join [MovieCrews] m on
  c.id = m.crewid where c.job ='Director'
  order by c.name
   
   --update crews set Profilepath = cast ('https://image.tmdb.org/t/p/w500' as nvarchar(max) )+ cast ( Profilepath as nvarchar(max))  
   -- where id != 1
   update crews set Profilepath  = null where Profilepath ='https://image.tmdb.org/t/p/w500'