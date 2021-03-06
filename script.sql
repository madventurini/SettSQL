USE [master]
GO
/****** Object:  Database [MaddalenaVenturini.GestioneStrutture]    Script Date: 2/18/2022 2:43:29 PM ******/
CREATE DATABASE [MaddalenaVenturini.GestioneStrutture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaddalenaVenturini.GestioneStrutture', FILENAME = N'C:\Users\maddalena.venturini\MaddalenaVenturini.GestioneStrutture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MaddalenaVenturini.GestioneStrutture_log', FILENAME = N'C:\Users\maddalena.venturini\MaddalenaVenturini.GestioneStrutture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaddalenaVenturini.GestioneStrutture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET  MULTI_USER 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET QUERY_STORE = OFF
GO
USE [MaddalenaVenturini.GestioneStrutture]
GO
/****** Object:  Table [dbo].[Tipologia]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipologia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Tipologia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Struttura]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Struttura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](30) NOT NULL,
	[Città] [nvarchar](30) NOT NULL,
	[Stato] [nvarchar](30) NOT NULL,
	[Tipologia] [int] NOT NULL,
 CONSTRAINT [PK_Struttura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormulaPernottamento]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormulaPernottamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FormulaPernottamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Data di nascita] [date] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazione]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazione](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id struttura pernottamento] [int] NOT NULL,
	[Id Cliente] [int] NOT NULL,
	[Data di arrivo] [date] NOT NULL,
	[Data di partenza] [date] NOT NULL,
	[Numero ospiti] [int] NOT NULL,
 CONSTRAINT [PK_Prenotazione] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrutturaFormulaPernottamento]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrutturaFormulaPernottamento](
	[Id struttura] [int] NOT NULL,
	[Id formula pernottamento] [int] NOT NULL,
	[Costo al giorno per persona] [decimal](18, 0) NOT NULL,
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_StrutturaFormulaPernottamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[elenco_prenotazioni]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[elenco_prenotazioni]
AS

SELECT C.Nome+' '+C.Cognome AS Cliente, P.[Data di arrivo] AS [Data di arrivo], P.[Data di partenza] AS [Data di partenza], 
		P.[Numero ospiti], T.Descrizione AS [Tipologia struttura], S.Nome, S.Città, S.Stato, FP.Descrizione AS [Tipologia pernottamento] ,(SFP.[Costo al giorno per persona]*P.[Numero ospiti]*(DATEDIFF(DAY, P.[Data di arrivo], P.[Data di partenza]))) AS [Importo totale] 
FROM Prenotazione AS P 
	JOIN StrutturaFormulaPernottamento AS SFP ON SFP.Id=P.[Id struttura pernottamento]
	JOIN FormulaPernottamento AS FP ON SFP.[Id formula pernottamento]=FP.Id
	JOIN Struttura AS S ON S.Id=SFP.[Id struttura]
	JOIN Tipologia AS T ON T.Id=S.Tipologia
	JOIN Cliente AS C ON P.[Id Cliente]=C.Id
GO
/****** Object:  Table [dbo].[Servizio]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servizio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Servizio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrutturaServizio]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrutturaServizio](
	[Id struttura] [int] NOT NULL,
	[Id servizio] [int] NOT NULL,
 CONSTRAINT [struttServ_pk] PRIMARY KEY CLUSTERED 
(
	[Id struttura] ASC,
	[Id servizio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_struttureConElencoServizi]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vista_struttureConElencoServizi]
AS
SELECT T.Descrizione, S.Nome, S.Città, S.Stato, string_agg(SE.Descrizione, ',') as Servizi
FROM Struttura AS S 
	JOIN Tipologia AS T ON T.Id=S.Tipologia
	JOIN StrutturaServizio AS SS ON S.Id=SS.[Id struttura]
	JOIN Servizio AS SE ON SE.Id=SS.[Id servizio]
GROUP BY S.Nome, T.Descrizione, S.Città, S.Stato
GO
/****** Object:  View [dbo].[vista_struttureConGuadagni]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vista_struttureConGuadagni]
AS
SELECT [Tipologia struttura], Nome AS Struttura, sum([Importo totale]) AS [Guadagno struttura]
FROM elenco_prenotazioni
GROUP BY Nome, [Tipologia struttura]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [Data di nascita]) VALUES (1, N'Maddalena', N'Venturini', CAST(N'1995-12-06' AS Date))
INSERT [dbo].[Cliente] ([Id], [Nome], [Cognome], [Data di nascita]) VALUES (2, N'Lorenzo', N'Rossi', CAST(N'1995-06-03' AS Date))
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[FormulaPernottamento] ON 

INSERT [dbo].[FormulaPernottamento] ([Id], [Descrizione]) VALUES (1, N'Solo pernottamento')
INSERT [dbo].[FormulaPernottamento] ([Id], [Descrizione]) VALUES (2, N'Pernottamento e prima colazione')
INSERT [dbo].[FormulaPernottamento] ([Id], [Descrizione]) VALUES (3, N'Mezza pensione')
INSERT [dbo].[FormulaPernottamento] ([Id], [Descrizione]) VALUES (4, N'Pensione completa')
SET IDENTITY_INSERT [dbo].[FormulaPernottamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Prenotazione] ON 

INSERT [dbo].[Prenotazione] ([Id], [Id struttura pernottamento], [Id Cliente], [Data di arrivo], [Data di partenza], [Numero ospiti]) VALUES (1, 3, 1, CAST(N'2022-06-06' AS Date), CAST(N'2022-06-16' AS Date), 2)
INSERT [dbo].[Prenotazione] ([Id], [Id struttura pernottamento], [Id Cliente], [Data di arrivo], [Data di partenza], [Numero ospiti]) VALUES (4, 2, 1, CAST(N'2022-07-06' AS Date), CAST(N'2022-07-16' AS Date), 2)
INSERT [dbo].[Prenotazione] ([Id], [Id struttura pernottamento], [Id Cliente], [Data di arrivo], [Data di partenza], [Numero ospiti]) VALUES (5, 1, 2, CAST(N'2022-08-08' AS Date), CAST(N'2022-08-10' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Prenotazione] OFF
GO
SET IDENTITY_INSERT [dbo].[Servizio] ON 

INSERT [dbo].[Servizio] ([Id], [Descrizione]) VALUES (1, N'Piscina')
INSERT [dbo].[Servizio] ([Id], [Descrizione]) VALUES (2, N'Wi-fi')
INSERT [dbo].[Servizio] ([Id], [Descrizione]) VALUES (3, N'Cassaforte')
INSERT [dbo].[Servizio] ([Id], [Descrizione]) VALUES (4, N'Spa & Centro Benessere')
INSERT [dbo].[Servizio] ([Id], [Descrizione]) VALUES (5, N'Animali Ammessi')
SET IDENTITY_INSERT [dbo].[Servizio] OFF
GO
SET IDENTITY_INSERT [dbo].[Struttura] ON 

INSERT [dbo].[Struttura] ([Id], [Nome], [Città], [Stato], [Tipologia]) VALUES (1, N'Corte Formigar', N'Sant''Ambrogio di Valpolicella', N'Italia', 1)
INSERT [dbo].[Struttura] ([Id], [Nome], [Città], [Stato], [Tipologia]) VALUES (2, N'Villà Amistà', N'San Pietro in Cariano', N'Italia', 2)
INSERT [dbo].[Struttura] ([Id], [Nome], [Città], [Stato], [Tipologia]) VALUES (3, N'Da Giusi', N'Tresnuraghes', N'Italia', 3)
INSERT [dbo].[Struttura] ([Id], [Nome], [Città], [Stato], [Tipologia]) VALUES (4, N'Amor de dios', N'Madrid', N'Spagna', 4)
SET IDENTITY_INSERT [dbo].[Struttura] OFF
GO
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (1, 1, CAST(50 AS Decimal(18, 0)), 1)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (1, 2, CAST(60 AS Decimal(18, 0)), 2)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (2, 1, CAST(200 AS Decimal(18, 0)), 3)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (2, 2, CAST(230 AS Decimal(18, 0)), 4)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (2, 3, CAST(300 AS Decimal(18, 0)), 5)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (2, 4, CAST(400 AS Decimal(18, 0)), 6)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (3, 1, CAST(25 AS Decimal(18, 0)), 7)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (3, 2, CAST(30 AS Decimal(18, 0)), 8)
INSERT [dbo].[StrutturaFormulaPernottamento] ([Id struttura], [Id formula pernottamento], [Costo al giorno per persona], [Id]) VALUES (4, 1, CAST(60 AS Decimal(18, 0)), 9)
GO
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (1, 2)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (1, 3)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (1, 4)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (2, 1)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (2, 2)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (2, 3)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (2, 4)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (3, 2)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (4, 1)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (4, 2)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (4, 3)
INSERT [dbo].[StrutturaServizio] ([Id struttura], [Id servizio]) VALUES (4, 4)
GO
SET IDENTITY_INSERT [dbo].[Tipologia] ON 

INSERT [dbo].[Tipologia] ([Id], [Descrizione]) VALUES (1, N'Agriturismo')
INSERT [dbo].[Tipologia] ([Id], [Descrizione]) VALUES (2, N'Hotel')
INSERT [dbo].[Tipologia] ([Id], [Descrizione]) VALUES (3, N'Casa vacanze')
INSERT [dbo].[Tipologia] ([Id], [Descrizione]) VALUES (4, N'Residence')
SET IDENTITY_INSERT [dbo].[Tipologia] OFF
GO
ALTER TABLE [dbo].[Prenotazione]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazione_Cliente] FOREIGN KEY([Id Cliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Prenotazione] CHECK CONSTRAINT [FK_Prenotazione_Cliente]
GO
ALTER TABLE [dbo].[Prenotazione]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazione_StrutturaFormulaPernottamento] FOREIGN KEY([Id struttura pernottamento])
REFERENCES [dbo].[StrutturaFormulaPernottamento] ([Id])
GO
ALTER TABLE [dbo].[Prenotazione] CHECK CONSTRAINT [FK_Prenotazione_StrutturaFormulaPernottamento]
GO
ALTER TABLE [dbo].[Struttura]  WITH CHECK ADD  CONSTRAINT [FK_Struttura_Tipologia] FOREIGN KEY([Tipologia])
REFERENCES [dbo].[Tipologia] ([Id])
GO
ALTER TABLE [dbo].[Struttura] CHECK CONSTRAINT [FK_Struttura_Tipologia]
GO
ALTER TABLE [dbo].[StrutturaFormulaPernottamento]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaFormulaPernottamento_FormulaPernottamento] FOREIGN KEY([Id formula pernottamento])
REFERENCES [dbo].[FormulaPernottamento] ([Id])
GO
ALTER TABLE [dbo].[StrutturaFormulaPernottamento] CHECK CONSTRAINT [FK_StrutturaFormulaPernottamento_FormulaPernottamento]
GO
ALTER TABLE [dbo].[StrutturaFormulaPernottamento]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaFormulaPernottamento_Struttura] FOREIGN KEY([Id struttura])
REFERENCES [dbo].[Struttura] ([Id])
GO
ALTER TABLE [dbo].[StrutturaFormulaPernottamento] CHECK CONSTRAINT [FK_StrutturaFormulaPernottamento_Struttura]
GO
ALTER TABLE [dbo].[StrutturaServizio]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaServizio_Servizio] FOREIGN KEY([Id servizio])
REFERENCES [dbo].[Servizio] ([Id])
GO
ALTER TABLE [dbo].[StrutturaServizio] CHECK CONSTRAINT [FK_StrutturaServizio_Servizio]
GO
ALTER TABLE [dbo].[StrutturaServizio]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaServizio_Struttura] FOREIGN KEY([Id struttura])
REFERENCES [dbo].[Struttura] ([Id])
GO
ALTER TABLE [dbo].[StrutturaServizio] CHECK CONSTRAINT [FK_StrutturaServizio_Struttura]
GO
/****** Object:  StoredProcedure [dbo].[inserimento_prenotazione]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inserimento_prenotazione]
@strutturaPernottamento int, @arrivo date, @partenza date, @ospiti int, @nome nvarchar(50) , @cognome nvarchar(50), @nascita date
AS

--CONTROLLO SE HO GIà IL CLIENTE A DATABASE
IF EXISTS(
SELECT C.Id AS [Id cliente]
FROM Cliente AS C
WHERE C.Nome=@nome AND C.Cognome=@cognome AND C.[Data di nascita]=@nascita
)
BEGIN
--INSERISCO PRENOTAZIONE
INSERT INTO Prenotazione VALUES (@strutturaPernottamento,(SELECT C.Id AS [Id cliente]
FROM Cliente AS C
WHERE C.Nome=@nome AND C.Cognome=@cognome AND C.[Data di nascita]=@nascita), @arrivo, @partenza, @ospiti) 
END 
ELSE
BEGIN

--ALTRIMENTI PRIMA DEVO INSERIRE IL NUOVO CLIENTE E POI CREARE LA PRENOTAZIONE
INSERT INTO Cliente VALUES (@nome, @cognome, @nascita)
INSERT INTO Prenotazione VALUES (@strutturaPernottamento,(SELECT C.Id AS [Id cliente]
FROM Cliente AS C
WHERE C.Nome=@nome AND C.Cognome=@cognome AND C.[Data di nascita]=@nascita), @arrivo, @partenza, @ospiti)
END
GO
/****** Object:  StoredProcedure [dbo].[strutture_con_servizio]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[strutture_con_servizio]
@servizio nvarchar(50)
AS
SELECT T.Descrizione AS Tipologia, S.Nome, S.Città, S.Stato
FROM Struttura AS S
	JOIN Tipologia AS T ON S.Tipologia=T.Id
	JOIN StrutturaServizio AS SS ON S.Id=SS.[Id struttura]
	JOIN Servizio AS SE ON SS.[Id servizio]=SE.Id
WHERE SE.Descrizione=@servizio
GO
/****** Object:  StoredProcedure [dbo].[strutture_per_formula_pernottamento]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[strutture_per_formula_pernottamento]
@formula nvarchar(50)
AS
SELECT T.Descrizione AS Tipologia, S.Nome, S.Città, S.Stato
FROM Struttura AS S 
	JOIN Tipologia AS T ON T.Id=S.Tipologia
	JOIN StrutturaFormulaPernottamento AS SFP ON S.Id=SFP.[Id struttura]
	JOIN FormulaPernottamento AS FP ON SFP.[Id formula pernottamento]=FP.Id
WHERE FP.Descrizione=@formula
GO
/****** Object:  StoredProcedure [dbo].[strutture_per_tipo]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[strutture_per_tipo]
@tipologia nvarchar(25)
AS
SELECT S.Nome, S.Città, S.Stato
FROM Struttura AS S
	JOIN Tipologia AS T ON S.Tipologia=T.Id
WHERE T.Descrizione=@tipologia
GO
/****** Object:  StoredProcedure [dbo].[strutture_per_TipoServizioPernottamento]    Script Date: 2/18/2022 2:43:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[strutture_per_TipoServizioPernottamento]
@tipo nvarchar(50), @servizio nvarchar(50), @pernottamento nvarchar(50)
AS
SELECT T.Descrizione, S.Nome, S.Città, S.Stato
FROM Struttura AS S
		JOIN Tipologia AS T ON S.Tipologia=T.Id
		JOIN StrutturaServizio AS SS ON S.Id=SS.[Id struttura]
		JOIN Servizio AS SE ON SE.Id=SS.[Id servizio]
		JOIN StrutturaFormulaPernottamento AS SFP ON S.Id=SFP.[Id struttura]
		JOIN FormulaPernottamento AS FP ON SFP.[Id formula pernottamento]=FP.Id
WHERE T.Descrizione=@tipo AND SE.Descrizione=@servizio AND FP.Descrizione=@pernottamento
GO
USE [master]
GO
ALTER DATABASE [MaddalenaVenturini.GestioneStrutture] SET  READ_WRITE 
GO
