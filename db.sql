USE [master]
GO
/****** Object:  Database [Plakaten]    Script Date: 03/20/2015 11:40:18 ******/
CREATE DATABASE [Plakaten] ON  PRIMARY 
( NAME = N'Plakaten', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Plakaten.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Plakaten_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Plakaten_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Plakaten] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Plakaten].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Plakaten] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Plakaten] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Plakaten] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Plakaten] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Plakaten] SET ARITHABORT OFF
GO
ALTER DATABASE [Plakaten] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Plakaten] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Plakaten] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Plakaten] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Plakaten] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Plakaten] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Plakaten] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Plakaten] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Plakaten] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Plakaten] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Plakaten] SET  DISABLE_BROKER
GO
ALTER DATABASE [Plakaten] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Plakaten] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Plakaten] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Plakaten] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Plakaten] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Plakaten] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Plakaten] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Plakaten] SET  READ_WRITE
GO
ALTER DATABASE [Plakaten] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Plakaten] SET  MULTI_USER
GO
ALTER DATABASE [Plakaten] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Plakaten] SET DB_CHAINING OFF
GO
USE [Plakaten]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 03/20/2015 11:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([Id], [Username], [Password]) VALUES (1, N'admin', N'7C4A8D09CA3762AF61E59520943DC26494F8941B')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblProdukt]    Script Date: 03/20/2015 11:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProdukt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](50) NOT NULL,
	[Beskrivelse] [varchar](250) NOT NULL,
	[Stoerelse] [varchar](50) NOT NULL,
	[Pris] [int] NOT NULL,
	[Antal] [int] NOT NULL,
	[Fk_KategoriId] [int] NOT NULL,
	[Billede] [varchar](250) NOT NULL,
 CONSTRAINT [PK_tblProdukt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblProdukt] ON
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (14, N'Test Titel 4', N'Lkfaffalkf<br />lafm', N'120x100', 2400, 3, 6, N'rocky.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (15, N'Despicable Me', N'Godard XOXO meggings Tumblr street art scenester.', N'120x100', 1200, 2, 6, N'me.jpeg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (16, N'Plakat 2', N'alkfn<br />alfkn', N'100x100', 1200, 4, 7, N'funk.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (17, N'Plakat 3', N'anafaæff<br />alfknafgihrg ks', N'110x50', 500, 4, 8, N'grafik.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (18, N'Plakat 4', N'aflkjnaf', N'100x100', 900, 2, 6, N'gorillaz.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (19, N'test', N'dh', N'120x100', 1212, 5, 7, N'dexter.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (21, N'Cinma City', N'Godard XOXO meggings Tumblr street art scenester.
', N'70x100', 1700, 1, 7, N'cine.png')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (22, N'Streams', N'Crucifix blog lumbersexual Godard aesthetic post-ironic, Wes Anderson beard jean shorts synth pop-up cold-pressed.', N'120x70', 800, 4, 11, N'streams.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (23, N'Alice', N'Truffaut salvia Thundercats tattooed meggings Schlitz bespoke put a bird on it.<br /><br />Plaid gentrify Odd Future, before they sold out selvage raw denim wayfarers tattooed.', N'80x110', 1900, 5, 6, N'alice.jpg')
INSERT [dbo].[tblProdukt] ([Id], [Titel], [Beskrivelse], [Stoerelse], [Pris], [Antal], [Fk_KategoriId], [Billede]) VALUES (24, N'Breakdown', N'Godard XOXO meggings Tumblr street art scenester.', N'70x100', 900, 2, 6, N'breakdown.png')
SET IDENTITY_INSERT [dbo].[tblProdukt] OFF
/****** Object:  Table [dbo].[tblOrdrer]    Script Date: 03/20/2015 11:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrdrer](
	[OrdrerId] [int] IDENTITY(1,1) NOT NULL,
	[Navn] [varchar](150) NOT NULL,
	[Adresse] [varchar](150) NOT NULL,
	[Postnr] [int] NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Mail] [varchar](150) NOT NULL,
	[Fk_ProduktId] [int] NOT NULL,
	[Antal] [int] NULL,
	[AntalBestilt] [int] NOT NULL,
 CONSTRAINT [PK_tblOrdrer] PRIMARY KEY CLUSTERED 
(
	[OrdrerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrdrer] ON
INSERT [dbo].[tblOrdrer] ([OrdrerId], [Navn], [Adresse], [Postnr], [City], [Mail], [Fk_ProduktId], [Antal], [AntalBestilt]) VALUES (4, N'Zoey', N'alfnanfaf anf 92', 3440, N'aflkn', N'af@galk.dk', 16, NULL, 3)
INSERT [dbo].[tblOrdrer] ([OrdrerId], [Navn], [Adresse], [Postnr], [City], [Mail], [Fk_ProduktId], [Antal], [AntalBestilt]) VALUES (6, N'Kasper', N'Gothersgade 14, 3. Th.', 6542, N'Horsens', N'kaped82@gmail.com', 14, NULL, 12)
INSERT [dbo].[tblOrdrer] ([OrdrerId], [Navn], [Adresse], [Postnr], [City], [Mail], [Fk_ProduktId], [Antal], [AntalBestilt]) VALUES (8, N'Peter', N'Skt. Clemens Torv 2-6', 8210, N'Aarhus C', N'peter@peter.dk', 22, NULL, 2)
INSERT [dbo].[tblOrdrer] ([OrdrerId], [Navn], [Adresse], [Postnr], [City], [Mail], [Fk_ProduktId], [Antal], [AntalBestilt]) VALUES (9, N'Finn', N'Vibeholmsalle', 8700, N'Horsens', N'finn@finn.dk', 17, NULL, 1)
INSERT [dbo].[tblOrdrer] ([OrdrerId], [Navn], [Adresse], [Postnr], [City], [Mail], [Fk_ProduktId], [Antal], [AntalBestilt]) VALUES (10, N'Kasper', N'Gothersgade 14, 3. Th.', 8700, N'Horsens', N'kaped82@gmail.com', 23, NULL, 2)
SET IDENTITY_INSERT [dbo].[tblOrdrer] OFF
/****** Object:  Table [dbo].[tblKontakt]    Script Date: 03/20/2015 11:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKontakt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Navn] [varchar](100) NOT NULL,
	[Mail] [varchar](150) NOT NULL,
	[Kommentar] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblKontakt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKontakt] ON
INSERT [dbo].[tblKontakt] ([Id], [Navn], [Mail], [Kommentar]) VALUES (2, N'Peter', N'peter@peter.dk', N'Tak for servicen!')
INSERT [dbo].[tblKontakt] ([Id], [Navn], [Mail], [Kommentar]) VALUES (3, N'Trold', N'trold@trold.dk', N'Jeg er en trold?')
INSERT [dbo].[tblKontakt] ([Id], [Navn], [Mail], [Kommentar]) VALUES (4, N'Kasper', N'kaped82@gmail.com', N' Four loko locavore Pitchfork, selfies letterpress authentic paleo banjo viral seitan Tumblr. 8-bit twee paleo hoodie.<br /><br />Synth mlkshk sustainable High Life selvage cronut. Heirloom try-hard wolf semiotics, you probably haven''t heard of them hoodie raw denim organic. Neutra fashion axe 3 wolf moon, drinking vinegar hoodie art party swag Brooklyn. Godard keytar tote bag aesthetic church-key. Twee Pinterest Blue Bottle shabby chic street art, McSweeney''s VHS viral selfies iPhone Banksy Brooklyn craft beer PBR&B forage. Forage Thundercats craft beer try-hard, pork belly quinoa actually. Tousled Schlitz taxidermy, street art you probably haven''t heard of them vinyl food truck.')
SET IDENTITY_INSERT [dbo].[tblKontakt] OFF
/****** Object:  Table [dbo].[tblKategori]    Script Date: 03/20/2015 11:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKategori](
	[KatId] [int] IDENTITY(1,1) NOT NULL,
	[Kategori] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tblKategori] PRIMARY KEY CLUSTERED 
(
	[KatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKategori] ON
INSERT [dbo].[tblKategori] ([KatId], [Kategori]) VALUES (6, N'Film')
INSERT [dbo].[tblKategori] ([KatId], [Kategori]) VALUES (7, N'Kunst')
INSERT [dbo].[tblKategori] ([KatId], [Kategori]) VALUES (8, N'Grafik')
INSERT [dbo].[tblKategori] ([KatId], [Kategori]) VALUES (11, N'Blandet')
SET IDENTITY_INSERT [dbo].[tblKategori] OFF
