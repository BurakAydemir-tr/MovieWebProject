USE [master]
GO
/****** Object:  Database [MovieWebDb]    Script Date: 29.11.2022 12:05:38 ******/
CREATE DATABASE [MovieWebDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieWebDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MovieWebDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieWebDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MovieWebDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MovieWebDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieWebDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieWebDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieWebDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieWebDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieWebDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieWebDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieWebDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MovieWebDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieWebDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieWebDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieWebDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieWebDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieWebDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieWebDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieWebDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieWebDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MovieWebDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieWebDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieWebDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieWebDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieWebDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieWebDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MovieWebDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieWebDb] SET RECOVERY FULL 
GO
ALTER DATABASE [MovieWebDb] SET  MULTI_USER 
GO
ALTER DATABASE [MovieWebDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieWebDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieWebDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieWebDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieWebDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieWebDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MovieWebDb', N'ON'
GO
ALTER DATABASE [MovieWebDb] SET QUERY_STORE = OFF
GO
USE [MovieWebDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29.11.2022 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 29.11.2022 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Year] [nvarchar](max) NULL,
	[Rated] [nvarchar](max) NULL,
	[Released] [nvarchar](max) NULL,
	[Runtime] [nvarchar](max) NULL,
	[Genre] [nvarchar](max) NULL,
	[Director] [nvarchar](max) NULL,
	[Writer] [nvarchar](max) NULL,
	[Actors] [nvarchar](max) NULL,
	[Plot] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Awards] [nvarchar](max) NULL,
	[Poster] [nvarchar](max) NULL,
	[Metascore] [nvarchar](max) NULL,
	[imdbRating] [nvarchar](max) NULL,
	[imdbVotes] [nvarchar](max) NULL,
	[imdbID] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[DVD] [nvarchar](max) NULL,
	[BoxOffice] [nvarchar](max) NULL,
	[Production] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Response] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 29.11.2022 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Source] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.11.2022 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221124201108_mig1', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221125121356_mig2', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221125155003_mig3', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (4, N'Carter', N'2022', N'TV-MA', N'05 Aug 2022', N'132 min', N'Action, Thriller', N'Byung-gil Jung', N'Byeong-sik Jung, Byung-gil Jung', N'Joo Won, Kim Bo-Min, Sung-Jae Lee', N'Thrown straight into a dangerous mission with none of his memories intact, a man must escape death while trying to figure out who he is, how he ended up here, and who is the mysterious voice in his ear calling him "Carter"?', N'Korean, English', N'South Korea', N'N/A', N'https://m.media-amazon.com/images/M/MV5BNWEyOThlZTAtMzExMy00NDBhLTk4Y2QtMDg3OTRkNzgyNjEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_SX300.jpg', N'N/A', N'5.1', N'8,158', N'tt21237030', N'movie', N'05 Aug 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (5, N'Interceptor', N'2022', N'TV-MA', N'03 Jun 2022', N'99 min', N'Action, Adventure, Drama', N'Matthew Reilly', N'Matthew Reilly, Stuart Beattie', N'Elsa Pataky, Luke Bracey, Aaron Glenane', N'One Army captain must use her years of tactical training and military expertise when a simultaneous coordinated attack threatens the remote missile interceptor station she is in command of.', N'English', N'Australia, United States', N'1 nomination', N'https://m.media-amazon.com/images/M/MV5BZGNjYjQ3NjgtZWM0NS00MTY5LTlkZWMtODZlNzhkNTU3MzZiXkEyXkFqcGdeQXVyMjM2OTI3Mzk@._V1_SX300.jpg', N'51', N'4.6', N'23,143', N'tt14174940', N'movie', N'03 Jun 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (7, N'The Adam Project', N'2022', N'PG-13', N'11 Mar 2022', N'106 min', N'Action, Adventure, Comedy', N'Shawn Levy', N'Jonathan Tropper, T.S. Nowlin, Jennifer Flackett', N'Ryan Reynolds, Walker Scobell, Mark Ruffalo', N'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self for a mission to save the future.', N'English, Persian', N'United States', N'4 nominations', N'https://m.media-amazon.com/images/M/MV5BOWM0YWMwMDQtMjE5NS00ZTIwLWE1NWEtODViMWZjMWI2OTU3XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_SX300.jpg', N'55', N'6.7', N'198,242', N'tt2463208', N'movie', N'11 Mar 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (8, N'Morbius', N'2022', N'PG-13', N'01 Apr 2022', N'104 min', N'Action, Adventure, Horror', N'Daniel Espinosa', N'Matt Sazama, Burk Sharpless', N'Jared Leto, Matt Smith, Adria Arjona', N'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.', N'English, Spanish, Russian', N'United States', N'N/A', N'https://m.media-amazon.com/images/M/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_SX300.jpg', N'35', N'5.2', N'119,656', N'tt5108870', N'movie', N'N/A', N'$73,865,530', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (10, N'Good Night Oppy', N'2022', N'PG', N'23 Nov 2022', N'105 min', N'Documentary', N'Ryan White', N'Ryan White, Helen Kearns', N'Angela Bassett', N'The film follows Opportunity, the Mars Exploration Rover affectionately dubbed Oppy by her creators and scientists at NASA. Oppy was originally expected to live for only 90 days but she ultimately explored Mars for nearly 15 years.', N'English', N'United States', N'1 win & 7 nominations', N'https://m.media-amazon.com/images/M/MV5BNjJmNzY4ZDAtMDlmYi00ZGY2LWJmMmQtODgwMzNhNjIxYTBhXkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_SX300.jpg', N'67', N'8.4', N'71', N'tt14179942', N'movie', N'23 Nov 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (11, N'Moonfall', N'2022', N'PG-13', N'04 Feb 2022', N'130 min', N'Action, Adventure, Sci-Fi', N'Roland Emmerich', N'Roland Emmerich, Harald Kloser, Spenser Cohen', N'Halle Berry, Patrick Wilson, John Bradley', N'A mysterious force knocks the moon from its orbit and sends it hurtling on a collision course toward earth.', N'English, Chinese, Spanish', N'United States, China, United Kingdom, Canada', N'N/A', N'https://m.media-amazon.com/images/M/MV5BZjk0OWZiN2ItNmQ2YS00NTJmLTg0MjItNzM4NzBkMWM1ZTRlXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg', N'41', N'5.1', N'76,480', N'tt5834426', N'movie', N'N/A', N'$19,060,660', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (15, N'Top Gun: Maverick', N'2022', N'PG-13', N'27 May 2022', N'130 min', N'Action, Drama', N'Joseph Kosinski', N'Jim Cash, Jack Epps Jr., Peter Craig', N'Tom Cruise, Jennifer Connelly, Miles Teller', N'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN''s elite graduates on a mission that demands the ultimate sacrifice from those chosen to ...', N'English', N'United States', N'2 wins & 9 nominations', N'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_SX300.jpg', N'78', N'8.4', N'412,557', N'tt1745960', N'movie', N'N/A', N'$716,498,761', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (16, N'Uncharted', N'2022', N'PG-13', N'18 Feb 2022', N'116 min', N'Action, Adventure', N'Ruben Fleischer', N'Rafe Judkins, Art Marcum, Matt Holloway', N'Tom Holland, Mark Wahlberg, Antonio Banderas', N'Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor "Sully" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.', N'English, Spanish', N'Spain, United States', N'1 nomination', N'https://m.media-amazon.com/images/M/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_SX300.jpg', N'45', N'6.3', N'200,957', N'tt1464335', N'movie', N'N/A', N'$148,648,820', N'Columbia Pictures', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (17, N'The Prototype', N'2022', N'N/A', N'08 Mar 2022', N'97 min', N'Action, Sci-Fi, Thriller', N'Marcelo Grion', N'Stephen Brown, Marcelo Grion, Stephen Karandy', N'Mark Vasconcellos, Frank Spinelli, Victoria De Mare', N'A government agent stumbles upon an alien conspiracy to conquer Earth. Using a blue liquid created by the aliens to make soldiers stronger, he becomes The Prototype-the only hope for mankind.', N'English', N'Italy, United States, Argentina', N'1 win & 2 nominations', N'https://m.media-amazon.com/images/M/MV5BNTczNjY2MjE3NV5BMl5BanBnXkFtZTgwNzM4MjM5NzE@._V1_SX300.jpg', N'N/A', N'2.2', N'13,877', N'tt1754700', N'movie', N'N/A', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (19, N'Luck', N'2022', N'G', N'05 Aug 2022', N'105 min', N'Animation, Adventure, Comedy', N'Peggy Holmes, Javier Abad', N'Kiel Murray, Jonathan Aibel, Glenn Berger', N'Eva Noblezada, Simon Pegg, Jane Fonda', N'The curtain is pulled back on the millennia-old battle between the organizations of good luck and bad luck that secretly affects everyday lives.', N'English', N'Spain, United States', N'N/A', N'https://m.media-amazon.com/images/M/MV5BNzhlNTAyY2YtNWUyYi00YmE3LWE2OTctZDI2MmJkNmZiMmY0XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_SX300.jpg', N'48', N'6.4', N'16,790', N'tt7214954', N'movie', N'05 Aug 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (20, N'Jurassic World Dominion', N'2022', N'PG-13', N'10 Jun 2022', N'147 min', N'Action, Adventure, Sci-Fi', N'Colin Trevorrow', N'Emily Carmichael, Colin Trevorrow, Derek Connolly', N'Chris Pratt, Bryce Dallas Howard, Laura Dern', N'Four years after the destruction of Isla Nublar, Biosyn operatives attempt to track down Maisie Lockwood, while Dr Ellie Sattler investigates a genetically engineered swarm of giant insects.', N'English', N'United States, China, Malta', N'4 nominations', N'https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX300.jpg', N'38', N'5.7', N'145,323', N'tt8041270', N'movie', N'02 Sep 2022', N'$374,817,385', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (22, N'The Gray Man', N'2022', N'PG-13', N'22 Jul 2022', N'122 min', N'Action, Thriller', N'Anthony Russo, Joe Russo', N'Joe Russo, Christopher Markus, Stephen McFeely', N'Ryan Gosling, Chris Evans, Ana de Armas', N'When the CIA''s most skilled operative-whose true identity is known to none-accidentally uncovers dark agency secrets, a psychopathic former colleague puts a bounty on his head, setting off a global manhunt by international assassins.', N'English', N'United States, Czech Republic', N'N/A', N'https://m.media-amazon.com/images/M/MV5BOWY4MmFiY2QtMzE1YS00NTg1LWIwOTQtYTI4ZGUzNWIxNTVmXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg', N'49', N'6.5', N'188,462', N'tt1649418', N'movie', N'22 Jul 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (23, N'Deus', N'2022', N'N/A', N'22 May 2022', N'90 min', N'Sci-Fi', N'Steve Stone', N'Steve Stone', N'Claudia Black, Phil Davis, David O''Hara', N'A mysterious black sphere is discovered in the orbit of Mars. The Achilles is sent to investigate. After the bedraggled six-person crew wake from eight months hibernation, the Sphere is transmitting a single word in every Earth la...', N'English', N'United Kingdom', N'3 nominations', N'https://m.media-amazon.com/images/M/MV5BMDU2ZTRlZjUtMGQ2OC00NDRkLThiNzMtMzhkYWUxODJmNDVhXkEyXkFqcGdeQXVyMTUzOTcyODA5._V1_SX300.jpg', N'N/A', N'4.2', N'1,215', N'tt8980128', N'movie', N'13 Sep 2022', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (24, N'Black Adam', N'2022', N'PG-13', N'21 Oct 2022', N'125 min', N'Action, Adventure, Fantasy', N'Jaume Collet-Serra', N'Adam Sztykiel, Rory Haines, Sohrab Noshirvani', N'Dwayne Johnson, Aldis Hodge, Pierce Brosnan', N'Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods--and imprisoned just as quickly--Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.', N'English', N'United States', N'1 nomination', N'https://m.media-amazon.com/images/M/MV5BYzZkOGUwMzMtMTgyNS00YjFlLTg5NzYtZTE3Y2E5YTA5NWIyXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_SX300.jpg', N'41', N'6.9', N'120,081', N'tt6443346', N'movie', N'N/A', N'N/A', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (25, N'Enola Holmes 2', N'2022', N'PG-13', N'04 Nov 2022', N'129 min', N'Action, Adventure, Crime', N'Harry Bradbeer', N'Jack Thorne, Harry Bradbeer, Nancy Springer', N'Millie Bobby Brown, Henry Cavill, David Thewlis', N'Now a detective-for-hire, Enola Holmes takes on her first official case to find a missing girl as the sparks of a dangerous conspiracy ignite a mystery that requires the help of friends - and Sherlock himself - to unravel.', N'English', N'United Kingdom, United States', N'N/A', N'https://m.media-amazon.com/images/M/MV5BMDI1NWM1ZDItNDFhMi00YWRhLTg1YzItNTNhY2M2N2QzY2FkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_SX300.jpg', NULL, N'6.8', N'37,462', N'tt14641788', N'movie', N'04 Nov 2022', N'N/A', N'Marvel', N'N/A', NULL)
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (28, N'Aykut Enişte 2', N'2021', NULL, N'2021', NULL, N'Komedi', N'Onur Bilgetay', NULL, N'Cem Gelinoğlu, Melis Babadağ, Hakan Yılmaz', N'Türk komedi filmleri hem ülkemizde hem de yurt dışında rağbet gören yapımların başında geliyor. Aykut Enişte serisi de kısa sürede ulaştığı izleyici sayısıyla dikkat çekmeyi başardı. İlk filmin sonunda yeni bir aşka yelken açan Aykut bu bölümde ise dahil olduğu bu yeni ailenin üçkağıtçı damadıyla tanışıyor. Dolandırıcı bacanak Aykut''un başına birçok bela açacaktır.', N'Turkish', N'Turkiye', NULL, NULL, NULL, N'7.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (29, N'Avatar', N'2009', N'PG-13', N'18 Dec 2009', N'162 min', N'Action, Adventure, Fantasy', N'James Cameron', N'James Cameron', N'Sam Worthington, Zoe Saldana, Sigourney Weaver', N'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', N'English, Spanish', N'United States', N'Won 3 Oscars. 89 wins & 131 nominations total', N'https://m.media-amazon.com/images/M/MV5BNjA3NGExZDktNDlhZC00NjYyLTgwNmUtZWUzMDYwMTZjZWUyXkEyXkFqcGdeQXVyMTU1MDM3NDk0._V1_SX300.jpg', N'83', N'7.8', N'1,240,509', N'tt0499549', N'movie', N'22 Apr 2010', N'$785,221,649', N'N/A', N'N/A', N'True')
INSERT [dbo].[Movies] ([Id], [Title], [Year], [Rated], [Released], [Runtime], [Genre], [Director], [Writer], [Actors], [Plot], [Language], [Country], [Awards], [Poster], [Metascore], [imdbRating], [imdbVotes], [imdbID], [Type], [DVD], [BoxOffice], [Production], [Website], [Response]) VALUES (33, N'The Matrix Resurrections', N'2021', N'R', N'22 Dec 2021', N'148 min', N'Action, Sci-Fi', N'Lana Wachowski', N'Lana Wachowski, David Mitchell, Aleksandar Hemon', N'Keanu Reeves, Carrie-Anne Moss, Yahya Abdul-Mateen II', N'Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.', N'English, French, Spanish, Japanese', N'United States, Australia', N'Nominated for 1 BAFTA Award5 wins & 34 nominations total', N'https://m.media-amazon.com/images/M/MV5BMGJkNDJlZWUtOGM1Ny00YjNkLThiM2QtY2ZjMzQxMTIxNWNmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg', N'63', N'5.7', N'246,386', N'tt10838180', N'movie', N'22 Dec 2021', N'$37,686,805', N'N/A', N'N/A', N'True')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (1, N'Internet Movie Database', N'5.1/10', 4)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (2, N'Rotten Tomatoes', N'33%', 4)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (3, N'Internet Movie Database', N'4.6/10', 5)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (4, N'Rotten Tomatoes', N'44%', 5)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (5, N'Metacritic', N'51/100', 5)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (6, N'Internet Movie Database', N'6.7/10', 7)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (7, N'Rotten Tomatoes', N'67%', 7)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (8, N'Metacritic', N'55/100', 7)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (9, N'Internet Movie Database', N'5.2/10', 8)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (10, N'Rotten Tomatoes', N'15%', 8)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (11, N'Metacritic', N'35/100', 8)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (12, N'Internet Movie Database', N'8.4/10', 10)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (13, N'Rotten Tomatoes', N'84%', 10)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (14, N'Metacritic', N'67/100', 10)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (15, N'Internet Movie Database', N'5.1/10', 11)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (16, N'Rotten Tomatoes', N'36%', 11)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (17, N'Metacritic', N'41/100', 11)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (18, N'Internet Movie Database', N'8.4/10', 15)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (19, N'Rotten Tomatoes', N'96%', 15)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (20, N'Metacritic', N'78/100', 15)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (21, N'Internet Movie Database', N'6.3/10', 16)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (22, N'Metacritic', N'45/100', 16)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (23, N'Internet Movie Database', N'2.2/10', 17)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (27, N'Internet Movie Database', N'6.4/10', 19)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (28, N'Rotten Tomatoes', N'48%', 19)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (29, N'Metacritic', N'48/100', 19)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (30, N'Internet Movie Database', N'5.7/10', 20)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (31, N'Rotten Tomatoes', N'29%', 20)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (32, N'Metacritic', N'38/100', 20)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (36, N'Internet Movie Database', N'6.5/10', 22)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (37, N'Rotten Tomatoes', N'46%', 22)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (38, N'Metacritic', N'49/100', 22)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (39, N'Internet Movie Database', N'4.2/10', 23)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (40, N'Internet Movie Database', N'6.9/10', 24)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (41, N'Rotten Tomatoes', N'40%', 24)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (42, N'Metacritic', N'41/100', 24)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (43, N'Internet Movie Database', N'6.8/10', 25)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (44, N'Rotten Tomatoes', N'93%', 25)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (45, N'Metacritic', N'64/100', 25)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (46, N'Internet Movie Database', N'7.8/10', 29)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (47, N'Rotten Tomatoes', N'82%', 29)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (48, N'Metacritic', N'83/100', 29)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (49, N'Internet Movie Database', N'5.7/10', 33)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (50, N'Rotten Tomatoes', N'63%', 33)
INSERT [dbo].[Ratings] ([Id], [Source], [Value], [MovieId]) VALUES (51, N'Metacritic', N'63/100', 33)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [PasswordHash], [PasswordSalt]) VALUES (1, N'burak', N'aydemir', N'kaptan@gmail.com', 0xF831DE39892AED778AA84C171533216A8716B81CBEC8E72327A04D43D3CE0BFCA1056243288C7FDB3B7FB86E7B5284CE6BC74D61F6B42859DC604F0288308B94, 0x6DD496EB787925CF6D0D00F4AB026277CD20BB0ACE4C49B929EECBAD293FBD241DC95AAB6AB797A8DF341D296940C119DB2BF84B72F43F6F2D026654E46F58791CB236482A7C15ECDFB7A20962D9CE2CB1D5972B7A82AAE741E9D6C2BD0B8D709485C2ED446F08314976ED2A3516F6338F47549364E1664F42EE732E8126AC33)
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [PasswordHash], [PasswordSalt]) VALUES (2, N'Admin', N'Admin', N'admin@admin.com', 0xC021068D5A1196D9BE41EFF76809D5099FC068C10C72449D63E16EE35963BD93BF5C6A55B23AA851DBFAEE0C360062BBB71369CD8DEB17C0C05EAFFE8CC8130D, 0x94A112CA80FA75D66E46F73112496978259221FCB289CC7F9E5997E8ABE61B78874F8591B201C147A8B28ED3D4D006DB9E08768F3EFC0AF0064F5F9BF755A4329754B6BBC47D467012FFF057212E0C32E4C210B759D195690A3479267B22286F03BD0313A27A00442C8B8B61CBCCCE80C8B09DEFB8B0257CADEE613D904C5F4D)
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [PasswordHash], [PasswordSalt]) VALUES (3, N'Deneme', N'Deneme', N'deneme@gmail.com', 0x2378CC04BF0E34AA56A91D94F994FB403B4FA903C8FC8F58113371266CF4B314830F6FE397C4E9F65D23BEEE81D5A113EC47971C6B9006B411C1C110CD6F6D9F, 0xAF100134A72A8A7B7C9882652D8119390F65136A2612A036D6674FDA80B415F89E8ED6B9552C905C1EF5563116B39418FA8726D7C95002D36A79039C11C0FF4850A5FDE86A7FFA85F9041FC21DA292209EBDDE6590B698E2AEC064512D8692C8ADB2BFFFDE10B742142791380D34CC6F81D6F8BD17C20077021540B857691F84)
INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [PasswordHash], [PasswordSalt]) VALUES (6, N'Film', N'Film', N'film@gmail.com', 0x3C02673002125BC0C953C0CF9428ED236591EE0C89B0D57A635FF54921E2E91F810E9ABC1FFDB6318219F77C7EF42299F512EE6A2036ABEFD99560E083A8DCF5, 0x1A919400BBA537B12EFD16B61D6F66D699F0B9C7EEBD99DFF0F493F68C6009381246B60DEBFB01873ED8EA7DFD885716CB1EA8C75B7E16793185D00391E640CE1288601250C6E8CDAE83E582A5A4E6DD953797EAC99C367E789DED0A7B289D2D76DEB5459306680D4A6FE2CB3C7A6467650000FC18E4A2C127D4E61AD64C2CA1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Ratings_MovieId]    Script Date: 29.11.2022 12:05:38 ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_MovieId] ON [dbo].[Ratings]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Movies_MovieId]
GO
USE [master]
GO
ALTER DATABASE [MovieWebDb] SET  READ_WRITE 
GO
