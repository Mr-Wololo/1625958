USE [HorarioEscolar]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista9]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista9]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista8]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista8]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista7]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista7]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista6]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista6]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista5]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista5]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista4]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista4]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista3]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista3]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista2]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista2]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista10]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista10]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista1]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP PROCEDURE [dbo].[sp_vista1]
GO
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Alumno]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Maestro]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Carrera1]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Maestro]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Dia]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK_Alumno_Carrera]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Semestre]
GO
/****** Object:  Table [dbo].[RegistroTrigger]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[RegistroTrigger]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Dia]
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Aula]
GO
/****** Object:  View [dbo].[Vista10]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP VIEW [dbo].[Vista10]
GO
/****** Object:  View [dbo].[Vista9]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP VIEW [dbo].[Vista9]
GO
/****** Object:  View [dbo].[Vista3]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP VIEW [dbo].[Vista3]
GO
/****** Object:  View [dbo].[Vista2]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP VIEW [dbo].[Vista2]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  View [dbo].[Vista1]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP VIEW [dbo].[Vista1]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP TABLE [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 05/05/2019 07:05:51 p. m. ******/
DROP DATABASE [HorarioEscolar]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 05/05/2019 07:05:51 p. m. ******/
CREATE DATABASE [HorarioEscolar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HorarioEscolar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HorarioEscolar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HorarioEscolar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HorarioEscolar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HorarioEscolar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HorarioEscolar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HorarioEscolar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HorarioEscolar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HorarioEscolar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HorarioEscolar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HorarioEscolar] SET ARITHABORT OFF 
GO
ALTER DATABASE [HorarioEscolar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HorarioEscolar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HorarioEscolar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HorarioEscolar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HorarioEscolar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HorarioEscolar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HorarioEscolar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HorarioEscolar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HorarioEscolar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HorarioEscolar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HorarioEscolar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HorarioEscolar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HorarioEscolar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HorarioEscolar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HorarioEscolar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HorarioEscolar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HorarioEscolar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HorarioEscolar] SET RECOVERY FULL 
GO
ALTER DATABASE [HorarioEscolar] SET  MULTI_USER 
GO
ALTER DATABASE [HorarioEscolar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HorarioEscolar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HorarioEscolar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HorarioEscolar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HorarioEscolar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HorarioEscolar', N'ON'
GO
ALTER DATABASE [HorarioEscolar] SET QUERY_STORE = OFF
GO
USE [HorarioEscolar]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 05/05/2019 07:05:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[idAlumno] [int] NOT NULL,
	[claveAlumno] [int] NOT NULL,
	[nomAlumno] [varchar](50) NOT NULL,
	[apellidopAlumno] [varchar](50) NOT NULL,
	[apellidomAlumno] [varchar](50) NOT NULL,
	[fdnAlumno] [date] NOT NULL,
	[sexoAlumno] [char](1) NOT NULL,
	[idCarrera] [int] NOT NULL,
	[estatusAlumno] [char](1) NOT NULL,
	[nomCompletoAlumno]  AS (((([nomAlumno]+' ')+[apellidopAlumno])+' ')+[apellidomAlumno]),
	[edadAlumno]  AS (datediff(year,[fdnAlumno],getdate())),
 CONSTRAINT [PK__Alumno__43FBBAC74C109462] PRIMARY KEY CLUSTERED 
(
	[idAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2019 07:05:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[idCarrera] [int] NOT NULL,
	[nomCarrera] [varchar](50) NOT NULL,
	[planEstudios] [int] NOT NULL,
 CONSTRAINT [PK__Carrera__7B19E7916A8FAACF] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista1]    Script Date: 05/05/2019 07:05:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista1] AS
SELECT  (Alumno.idAlumno), (Alumno.nomCompletoAlumno), (Carrera.nomCarrera) FROM Carrera JOIN Alumno  ON Carrera.idCarrera = Alumno.idCarrera 
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[idMaestro] [int] NOT NULL,
	[nomMaestro] [varchar](50) NOT NULL,
	[apellidopMaestro] [varchar](50) NOT NULL,
	[apellidomMaestro] [varchar](50) NOT NULL,
	[nomCompletoMaestro]  AS (((([nomMaestro]+' ')+[apellidopMaestro])+' ')+[apellidomMaestro]),
PRIMARY KEY CLUSTERED 
(
	[idMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[idMateria] [int] NOT NULL,
	[nomMateria] [varchar](150) NOT NULL,
	[idCarrera] [int] NOT NULL,
	[idSemestre] [int] NOT NULL,
	[idMaestro] [int] NOT NULL,
 CONSTRAINT [PK__Materia__4B740AB37CEA7030] PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista2]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista2] AS
SELECT (Maestro.idMaestro), (Maestro.nomCompletoMaestro), (Materia.nomMateria) FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro
GO
/****** Object:  View [dbo].[Vista3]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista3] AS
SELECT (Materia.nomMateria), (Materia.idSemestre), (Carrera.nomCarrera) FROM Carrera JOIN Materia ON Carrera.idCarrera = Materia.idCarrera
GO
/****** Object:  View [dbo].[Vista9]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista9] AS
SELECT COUNT(*) AS 'Materias LSTI' FROM Materia WHERE IDCarrera = 1
GO
/****** Object:  View [dbo].[Vista10]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista10] AS
SELECT COUNT(*) AS 'Materias LCC'  FROM Materia WHERE IDCarrera = 2
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aula](
	[idAula] [int] NOT NULL,
	[capacidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dia](
	[idDia] [int] NOT NULL,
	[nomDia] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Semana__3E416597807B4CDA] PRIMARY KEY CLUSTERED 
(
	[idDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idHorario] [int] NOT NULL,
	[horaInicio] [varchar](50) NOT NULL,
	[horaFin] [varchar](50) NOT NULL,
	[idDia] [int] NOT NULL,
	[idAula] [int] NOT NULL,
	[idMateria] [int] NOT NULL,
	[idMaestro] [int] NOT NULL,
	[horaClase]  AS ((((CONVERT([varchar](10),[idAula])+' ')+CONVERT([varchar](10),[horaInicio]))+'-')+CONVERT([varchar](10),[horaFin])),
 CONSTRAINT [PK__Horario__DE60F33A2F7572A3] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroTrigger]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroTrigger](
	[id] [int] NOT NULL,
	[Registro] [varchar](50) NULL,
	[fecha] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semestre](
	[idSemestre] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
	[idMateria] [int] NOT NULL,
 CONSTRAINT [PK__Semestre__C6BF9EC2AD9D7A96] PRIMARY KEY CLUSTERED 
(
	[idSemestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idAlumno] [int] NOT NULL,
	[claveUsuario] [varchar](50) NOT NULL,
	[fechaCreacion]  AS (getdate()),
PRIMARY KEY CLUSTERED 
(
	[idAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1430288, 369444, N'EDUARDO', N'ASTIAZARAN', N'FERREIRA', CAST(N'1996-11-20' AS Date), N'H', 3, N'B')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1442941, 287374, N'JUAN MANUEL', N'GILGORRI', N'CARRO', CAST(N'1998-02-07' AS Date), N'H', 5, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1502093, 533618, N'LAURA', N'CARRERA', N'ORMANDO', CAST(N'1999-02-23' AS Date), N'M', 2, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1511764, 598665, N'ALFONSO', N'FONTES', N'PEREIRO', CAST(N'1996-12-15' AS Date), N'H', 3, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1527012, 393480, N'EDUARDO', N'VELASCO', N'CABRAL', CAST(N'1997-03-04' AS Date), N'H', 3, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1530676, 760118, N'JULIO', N'DUARTE', N'AMARO', CAST(N'1998-05-24' AS Date), N'H', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1531289, 720008, N'MARIO', N'HERNANDEZ', N'DÁCOSTA', CAST(N'1997-12-05' AS Date), N'H', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1533162, 724565, N'MARCOS', N'ECHEVERRIA', N'GARCIA', CAST(N'1997-07-06' AS Date), N'H', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1537109, 509882, N'VICTOR', N'RANDALL', N'FERNANDEZ', CAST(N'1998-01-25' AS Date), N'H', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1563575, 392389, N'MARIA', N'SILVERA', N'ARRARTE', CAST(N'1995-01-25' AS Date), N'M', 2, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1603964, 902532, N'ISABEL', N'ALMEDA', N'ANDRADE', CAST(N'1995-01-04' AS Date), N'M', 2, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1625958, 567647, N'BRANDON ALONSO', N'DAVILA', N'SANCHEZ', CAST(N'1996-09-21' AS Date), N'H', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1682056, 165559, N'RICARDO', N'CASTILLO', N'MARTIN', CAST(N'1996-10-01' AS Date), N'H', 5, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1687902, 613715, N'JORDI', N'CALABUIG', N'MARICHAL', CAST(N'1998-06-01' AS Date), N'H', 4, N'B')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1702988, 906765, N'CRISTINA', N'RADICCIONI', N'ACOSTA', CAST(N'1998-10-28' AS Date), N'M', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1707449, 181558, N'JAIME', N'LECUONA', N'PEREIRA', CAST(N'1996-07-18' AS Date), N'H', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1714447, 960086, N'SALVADOR', N'HOSTA', N'HOURCADE', CAST(N'1997-04-04' AS Date), N'H', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1715474, 128453, N'MARIA CARMEN', N'BATISTA', N'OJEDA', CAST(N'1998-01-19' AS Date), N'M', 3, N'B')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1718183, 396569, N'CARMEN', N'RISSO', N'ABERO', CAST(N'1998-06-14' AS Date), N'M', 5, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1733205, 550092, N'MARIA ANGELES', N'DE LEON', N'CABRERA', CAST(N'1999-10-27' AS Date), N'M', 5, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1733255, 550032, N'MARIo ANGELES', N'DE LEON', N'CABRERA', CAST(N'1999-10-27' AS Date), N'M', 5, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1734654, 905745, N'ROBERTO', N'RIVA', N'DELGADO', CAST(N'1995-02-04' AS Date), N'H', 6, N'B')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1742607, 791448, N'JOSEFA', N'INFANTE', N'SUAREZ', CAST(N'1995-08-12' AS Date), N'M', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1777902, 989605, N'MARIA PILAR', N'PEREIRA', N'SOSA', CAST(N'1995-01-12' AS Date), N'M', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1813368, 562337, N'ANA', N'ALZA', N'DE LA FUENTE', CAST(N'1997-02-27' AS Date), N'M', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1820584, 358034, N'MARIA DOLORES', N'ARROYAL', N'PELAEZ', CAST(N'1999-12-24' AS Date), N'M', 1, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1835228, 696453, N'FRANCISCO JOSE', N'LEYES', N'COMAS', CAST(N'1998-01-01' AS Date), N'H', 6, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1836343, 355956, N'SANTIAGO', N'LOPEZ', N'RODRIGUEZ', CAST(N'1997-08-18' AS Date), N'H', 6, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1845916, 152863, N'ANA MARIA', N'ALEGRETTI', N'DA SILVA', CAST(N'1998-04-03' AS Date), N'M', 3, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1848583, 571889, N'MARIA TERESA', N'VALIENTE', N'ELOSEGUI', CAST(N'1999-03-27' AS Date), N'M', 4, N'A')
INSERT [dbo].[Alumno] ([idAlumno], [claveAlumno], [nomAlumno], [apellidopAlumno], [apellidomAlumno], [fdnAlumno], [sexoAlumno], [idCarrera], [estatusAlumno]) VALUES (1995894, 782651, N'IGNACIO', N'ALZUGARAY', N'COMAS', CAST(N'1996-11-24' AS Date), N'H', 6, N'B')
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (1, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (2, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (3, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (4, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (5, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (6, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (7, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (8, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (9, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (10, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (11, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (12, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (13, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (14, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (15, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (16, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (17, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (18, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (19, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (20, 50)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (21, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (22, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (23, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (24, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (25, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (26, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (27, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (28, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (29, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (30, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (31, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (32, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (33, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (34, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (35, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (36, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (37, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (38, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (39, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (40, 30)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (41, 20)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (42, 20)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (43, 20)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (44, 20)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (45, 20)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (46, 15)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (47, 15)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (48, 15)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (49, 15)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (50, 15)
INSERT [dbo].[Aula] ([idAula], [capacidad]) VALUES (51, 15)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (1, N'LSTI', 2019)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (2, N'LCC', 2017)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (3, N'LF', 2009)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (4, N'LM', 2009)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (5, N'LMAD', 2017)
INSERT [dbo].[Carrera] ([idCarrera], [nomCarrera], [planEstudios]) VALUES (6, N'LA', 2015)
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (1, N'Lunes')
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (2, N'Martes')
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (3, N'Miercoles')
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (4, N'Jueves')
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (5, N'Viernes')
INSERT [dbo].[Dia] ([idDia], [nomDia]) VALUES (6, N'Sabado')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5000, N'MARLENE', N'HUILCA', N'GONZALES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5030, N'CASTILLA', N'DE', N'RUIZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5049, N'SANCHEZ', N'GOMEZ', N'ROMERO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5081, N'DANIEL', N'JHONG', N'ACEVEDO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5130, N'LEONCIA', N'CASTILLO', N'BEDOYA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5149, N'ANGEL', N'DAVILA', N'TENORIO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5222, N'ZARITA', N'MENDOZA', N'CHANCOS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5227, N'ROSARIO', N'HERNANDEZ', N'ARIAS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5234, N'ROSA', N'VALVERDE', N'ROBLES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5238, N'EDUARDO', N'MONTEMAYOR', N'BLANCO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5378, N'PINO', N'DEL', N'SALCEDO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5490, N'ROSA', N'FARIAS', N'RODRIGUEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5508, N'CARLOS', N'GUZMAN', N'FERNANDEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5547, N'JOSE', N'APOLINAR', N'LOYOLA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5605, N'SANDRA', N'TINCO', N'MALDONADO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5675, N'CONTERNO', N'LOAYZA', N'DE')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5747, N'JORGE', N'NEIRA', N'CARRIÓN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5779, N'VERA', N'VELAZCO', N'ALOSILLA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5814, N'JAVIER', N'ESPEJO', N'BENAVIDES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5890, N'ISABEL', N'VILLEGAS', N'CARAZA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5910, N'SONIA', N'VILCHEZ', N'PRADA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5956, N'CESAR', N'URETA', N'BAIOCCHI')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5980, N'MARIA', N'VALDIVIA', N'ROJAS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (5989, N'OSCAR', N'ZUTA', N'MEDINA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6009, N'CARMEN', N'CAMACHO', N'PARDAVE')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6194, N'ENRIQUE', N'NUÑEZ', N'PINEDO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6236, N'GIZELLA', N'ABANTO', N'CARRERA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6288, N'MANUEL', N'CASTILLO', N'NUÑEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6311, N'FABIAN', N'ROSA', N'LA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6351, N'JUAN JOSE', N'TOMAS', N'CARMONA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6360, N'ANA', N'SALINAS', N'DIAZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6395, N'OLGA', N'REYES', N'ORE')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6422, N'BENSSA', N'CRUZ', N'SANTA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6564, N'ANTONIO', N'ARISTISABAL', N'DUEÑAS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6618, N'ANGEL', N'QUISPE', N'CRISPIN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6661, N'VALLE', N'DEL', N'GONZALES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (6702, N'VICTOR', N'CAMPOS', N'ALVA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7092, N'JOSUÉ', N'ORTIZ', N'ORRILLO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7172, N'JOSE', N'LUNA', N'TEJEDO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7200, N'EFRAÍN', N'RAMÍREZ', N'ARROYO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7270, N'CLARA', N'QUISPE', N'GUZMAN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7272, N'COSME', N'QUISPE', N'MALDONADO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7349, N'ROBERTO', N'TAFUR', N'LLAJA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7475, N'MIGUELVICENTE', N'RONDOY', N'AGURTO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7592, N'MANUEL', N'RAMIREZ', N'MORI')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7609, N'ISELA', N'ROJAS', N'BAYLÓN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7628, N'HECTOR', N'VENEGAS', N'LUJAN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7685, N'ELSA', N'MEDINA', N'GONZALES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7871, N'CIELITO', N'BETANCOURT', N'CALLE')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7885, N'OLGA', N'SALAS', N'FERRO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (7938, N'GLORIA', N'LOZANO', N'GAMIO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8044, N'YULIANA', N'ARANA', N'ESPINOZA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8098, N'GUILLERMO', N'VALDIVIA', N'CASAPIA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8120, N'ANGEL', N'VARGAS', N'SOLANO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8144, N'MARTIN', N'MARQUEZ', N'MARTINEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8190, N'LUIS', N'RAYGADA', N'HUAPAYA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8273, N'ARTURO', N'PORRAS', N'PASTOR')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8333, N'JAVIER', N'VELEZ', N'GUTIERREZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8383, N'MARCOS', N'QUISPE', N'HUARCAYA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8488, N'MAGDA', N'NAVARRO', N'MARAVI')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8521, N'ESTHER', N'MATTA', N'FERNANDEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8532, N'GERARDO', N'CALLE', N'RIEGA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8578, N'ESTALINS', N'SEGURA', N'CARRILLO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8624, N'CARINA', N'FLORES', N'ROSALES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8650, N'ELENA', N'CHINAG', N'GUZMAN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8666, N'VIOLETA', N'PUCCIO', N'SALINAS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8677, N'MIRIAM', N'PERALTA', N'GARCÍA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8780, N'LOURDES', N'FLORES', N'HUAMANI')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8794, N'SANTIAGO', N'UCHASARA', N'MAMANI')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8873, N'ELIZABETH', N'HOLGADO', N'MIGUEL')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8909, N'JUAN', N'MIRANDA', N'RIQUELME')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8930, N'ROBERTO', N'ASTETE', N'GAMARRA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8943, N'RAMIRO', N'TORRES', N'BEJAR')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (8980, N'WALTER', N'SAUÑE', N'HUAYTAN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9045, N'CARLOS', N'BONIFAZ', N'ROSAS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9057, N'CARLOS', N'VIBES', N'MELGAREJO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9058, N'ORFELINA', N'NUÑEZ', N'LLENPEN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9093, N'GEORGINA', N'YANAC', N'ROA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9107, N'AUGUSTO', N'ARONE', N'SANCHEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9115, N'JOSUE', N'ORTIZ', N'ORRILLO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9120, N'DORIS', N'MORENO', N'CORES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9122, N'MARIBEL', N'LOZANO', N'CORTEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9158, N'TERESA', N'LIMA', N'RIOS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9163, N'CARLOS', N'HUAYANAY', N'NUÑEZ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9166, N'CARLOS', N'LACOTERA', N'CHIRINOS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9424, N'EDWIN', N'ROMERO', N'FLORES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9505, N'FREDDY', N'LIMA', N'RIOS')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9535, N'RAUL', N'HERNANDEZ', N'ALMORA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9543, N'CHRISTIAN', N'NEGRÓN', N'ALCALÁ')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9581, N'MILAGROS', N'CARBAJAL', N'HERRERA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9632, N'LUZ', N'CANALES', N'BEDREGAL')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9643, N'MARCO', N'BARRERA', N'ALOCEN')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9654, N'NELSON', N'SOLIS', N'BOZA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9854, N'YEN', N'SAN', N'MAGUIÑA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9900, N'SANTIAGO', N'JARAMILLO', N'PAREDES')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9916, N'PEDRO', N'GINOCCHIO', N'LANDA')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9983, N'JAVIER', N'LOPEZ', N'AREVALO')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9990, N'GUILLERMO', N'MARTINEZ', N'HORRUITINER')
INSERT [dbo].[Maestro] ([idMaestro], [nomMaestro], [apellidopMaestro], [apellidomMaestro]) VALUES (9996, N'JUAN CARLOS', N'RUIZ', N'TORRES')
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1001, N'INGENIERÍA SOCIAL', 1, 1, 5508)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1002, N'PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL', 1, 1, 9916)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1003, N'PROGRAMACION ORIENTADA A OBJETOS', 1, 1, 9854)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1004, N'LAB. PROGRAMACIÓN ORIENTADA A OBJETOS', 1, 1, 8383)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1005, N'ÁLGEBRA', 1, 1, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1006, N'NORMATIVIDAD Y REGULACIONES', 1, 1, 5049)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1007, N'FUNDAMENTOS DE LA SEGURIDAD INFORMÁTICA', 1, 1, 9424)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1008, N'APLICACION DE LAS TECNOLOGIAS DE INFORMACION', 1, 1, 8333)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1009, N'COMPETENCIA COMUNICATIVA', 1, 1, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1010, N'TOPICOS SELECTOS DE DESARROLLO HUMANO, SALUD Y DEPORTES', 1, 1, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1011, N'CIRCUITOS DIGITALES', 1, 2, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1012, N'DISEÑO ORIENTADO A OBJETOS', 1, 2, 5890)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1013, N'LABORATORIO DISEÑO ORIENTADO A OBJETOS', 1, 2, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1014, N'CÁLCULO DIFERENCIAL Y GEOMETRÍA ANALÍTICA', 1, 2, 8780)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1015, N'TELECOMUNICACIONES I', 1, 2, 8383)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1016, N'LABORATORIO TELECOMUNICACIONES I', 1, 2, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1017, N'LABORATORIO CIRCUITOS DIGITALES', 1, 2, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1018, N'OPTATIVA I', 1, 2, 7628)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1019, N'TOPICOS SELECTOS DE CIENCIAS SOCIALES, ARTES Y HUMANIDADES', 1, 2, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1020, N'MEDIOS DE TRANSMISIÓN Y NORMATIVIDAD', 1, 2, 5081)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1021, N'ADMINISTRACION', 1, 2, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1022, N'EVIDENCIAS DIGITALES', 1, 2, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1023, N'SISTEMAS OPERATIVOS', 1, 3, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1024, N'BASE DE DATOS', 1, 3, 5490)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1025, N'LABORATORIO BASE DE DATOS', 1, 3, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1026, N'CÁLCULO INTEGRAL', 1, 3, 5130)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1027, N'TELECOMUNICACIONES II', 1, 3, 8383)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1028, N'LABORATORIO TELECOMUNICACIONES II', 1, 3, 9058)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1029, N'ANALISIS Y ADMINISTRACION DEL RIESGO', 1, 3, 9543)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1030, N'APRECIACION A LAS ARTES', 1, 3, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1031, N'OPTATIVA II', 1, 3, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1032, N'RECONOCIMIENTO Y DETECCION DE AMENAZAS', 1, 3, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1033, N'DERECHO INFORMATICO', 1, 3, 9654)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1034, N'CONTABILIDAD', 1, 3, 8044)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1035, N'HERRAMIENTAS Y PROTOCOLOS', 1, 3, 5910)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1036, N'COMPORTAMIENTO ORGANIZACIONAL', 1, 3, 5675)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1037, N'SEGURIDAD EN APLICACIONES', 1, 4, 7685)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1038, N'LABORATORIO SEGURIDAD EN APLICACIONES', 1, 4, 5238)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1039, N'TEORÍA DE LA INFORMACIÓN I', 1, 4, 8677)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1040, N'TEORIA DE AUTOMATAS', 1, 4, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1041, N'ÁLGEBRA LINEAL', 1, 4, 9632)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1042, N'TELECOMUNICACIONES III', 1, 4, 9166)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1043, N'LABORATORIO TELECOMUNICACIONES III', 1, 4, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1044, N'SEGURIDAD FÍSICA', 1, 4, 8521)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1045, N'AMBIENTE Y SUSTENTABILIDAD', 1, 4, 8780)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1046, N'OPTATIVA III', 1, 4, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1047, N'OPTATIVA IV', 1, 4, 8930)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1048, N'PROGRAMACION I', 1, 4, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1049, N'PROGRAMACIÒN C ++', 1, 4, 5980)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1050, N'LABORATORIO DE PROGRAMACION I', 1, 4, 5675)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1051, N'LABORATORIO DE PROGRAMACIÒN C++', 1, 4, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1052, N'METODOLOGÍA Y SISTEMAS DE CONTROL DE ACCESO', 1, 5, 5989)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1053, N'LABORATORIO METODOLOGÍA Y SISTEMAS DE CONTROL DE A', 1, 5, 7270)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1054, N'TEORÍA DE LA INFORMACIÓN II', 1, 5, 6009)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1055, N'CRIPTOGRAFÍA APLICADA', 1, 5, 8532)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1056, N'DISEÑO DE ARQUITECTURAS DE SEGURIDAD', 1, 5, 5227)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1057, N'TELECOMUNICACIONES IV', 1, 5, 8930)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1058, N'LABORATORIO TELECOMUNICACIONES IV', 1, 5, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1059, N'OPERACIÓN DE LA SEGURIDAD', 1, 5, 8794)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1060, N'CONTEXTO SOCIAL DE LA PROFESION', 1, 5, 5049)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1061, N'OPTATIVA V', 1, 5, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1062, N'ESTRUCTURA DE DATOS', 1, 5, 6236)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1063, N'ATAQUE DE INGENIERIA SOCIAL', 1, 5, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1064, N'TÓPICOS DE TECNOLOGÍAS I', 1, 5, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1065, N'COMUNICACIÒN DIGITAL', 1, 5, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1066, N'SEGURIDAD EN BASES DE DATOS', 1, 5, 7685)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1067, N'SEGURIDAD EN SISTEMAS OPERATIVOS', 1, 5, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1068, N'ANÁLISIS FORENSE', 1, 6, 7272)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1069, N'LABORATORIO ANÁLISIS FORENSE', 1, 6, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1070, N'PRÁCTICAS AVANZADAS DE SEGURIDAD INFORMÁTICA', 1, 6, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1071, N'LABORATORIO PRÁCTICAS AVANZADAS DE SEGURIDAD INFOR', 1, 6, 6236)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1072, N'DISEÑO DE POLÍTICAS Y PROGRAMAS EMPRESARIALES', 1, 6, 8666)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1073, N'COMPETENCIA COMUNICATIVA EN INGLES', 1, 6, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1074, N'CONTINUIDAD DE NEGOCIO Y PLANEACIÓN DE RECUPERACION', 1, 6, 5605)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1075, N'OPTATIVA VI', 1, 6, 9643)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1076, N'INVESTIGACION DE OPERACIONES', 1, 6, 6351)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1077, N'PRUEBAS DE PENETRACION A REDES', 1, 6, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1078, N'SISTEMAS DE CONMUTACIÓN Y TELEFONÍA', 1, 6, 5000)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1079, N'TÓPICOS DE TECNOLOGÍAS II', 1, 6, 6395)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1080, N'SEGURIDAD EN DESARROLLO DE SOFTWARE', 1, 6, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1081, N'SEGURIDAD EN REDES DE VOZ SOBRE IP', 1, 6, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1082, N'SEGURIDAD DE REDES INALAMBRICAS', 1, 6, 7349)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1083, N'TÒPICOS DE SEGURIDAD', 1, 6, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1084, N'SEGURIDAD DE LAS TELECOMUNICACIONES Y REDES', 1, 7, 8190)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1085, N'LABORATORIO SEGURIDAD DE LAS TELECOMUNICACIONES', 1, 7, 7272)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1086, N'SERVICIO SOCIAL', 1, 7, 8873)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1087, N'OPTATIVA VII', 1, 7, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1088, N'ANALISIS DE VULNERABILIDADES', 1, 7, 9535)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1089, N'SIMULACIÒN DE COMPUTADORAS', 1, 7, 6194)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1090, N'ANÀLISIS DE BRECHA', 1, 7, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1091, N'TENDENCIAS TECNOLÒGICAS', 1, 7, 9058)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1092, N'ETICA SOCIEDAD Y PROFESION', 1, 8, 9581)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1093, N'LIBRE ELECCIÓN', 1, 8, 5490)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (1094, N'TOPICOS SELECTOS PARA EL DESARROLLO ACADÉMICO Y PROFESIONAL', 1, 8, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2001, N'Metodología de la Programación', 2, 1, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2002, N'Física Básica', 2, 1, 5956)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2003, N'Geometría Analítica', 2, 1, 5814)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2004, N'Álgebra', 2, 1, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2005, N'Cálculo Diferencial', 2, 1, 7475)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2006, N'Cálculo Integral', 2, 2, 7349)
GO
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2007, N'Matemáticas Discretas', 2, 2, 6395)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2008, N'Programación Estructurada', 2, 2, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2009, N'Física', 2, 2, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2010, N'Tópicos de Álgebra', 2, 2, 8980)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2011, N'Laboratorio de Programación Estructurada', 2, 2, 6661)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2012, N'Laboratorio de Física', 2, 2, 8333)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2013, N'Programación Orientada a Objetos', 2, 3, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2014, N'Circuitos Digitales', 2, 3, 9166)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2015, N'Álgebra Lineal', 2, 3, 7092)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2016, N'Tecnologías Multimedia', 2, 3, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2017, N'Cálculo de Varías Variables', 2, 3, 7592)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2018, N'Estructura de Datos', 2, 3, 9632)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2019, N'Laboratorio de Programación Orientada a Objetos', 2, 3, 6236)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2020, N'Laboratorio de Circuitos Digitales', 2, 3, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2021, N'Aplicaciones Móviles', 2, 4, 5130)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2022, N'Base de Datos', 2, 4, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2023, N'Teoría de Autómatas', 2, 4, 9163)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2024, N'Ecuaciones Diferenciales', 2, 4, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2025, N'Probabilidad', 2, 4, 9643)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2026, N'Cultura de Paz', 2, 4, 8578)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2027, N'Laboratorio de Aplicaciones Móviles', 2, 4, 7475)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2028, N'Laboratorio de Base de Datos', 2, 4, 8532)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2029, N'Análisis Numéricos', 2, 5, 5030)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2030, N'Sistemas Electrónicos', 2, 5, 8273)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2031, N'Organización y Arquitectura de Computadoras', 2, 5, 5605)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2032, N'Lenguajes Modernos de Programación', 2, 5, 9854)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2033, N'Estadística', 2, 5, 7871)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2034, N'Programación Lineal', 2, 5, 6422)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2035, N'Responsabilidad Social y Desarrollo Sustentable', 2, 5, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2036, N'Laboratorio de Sistemas Electrónicos', 2, 5, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2037, N'Microprocesadores', 2, 6, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2038, N'Redes de Computadoras', 2, 6, 6422)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2039, N'Liderazgo, Emprendimiento e Innovación', 2, 6, 7172)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2040, N'Inteligencia Artificial', 2, 6, 9166)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2041, N'Laboratorio de Microprocesadores', 2, 6, 5130)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2042, N'Laboratorio de Redes de Computadoras', 2, 6, 6702)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2043, N'Investigación de Operaciones', 2, 6, 8120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2044, N'Optativa I Área Curricular de Formación Profesional Fundamental', 2, 6, 5490)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2045, N'Optativa II Área Curricular de Formación Profesional Fundamental', 2, 6, 6702)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2046, N'Sistemas Operativos', 2, 7, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2047, N'Administración', 2, 7, 5490)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2048, N'Análisis de Sistemas', 2, 7, 6288)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2049, N'Criptografía y Seguridad', 2, 7, 8120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2050, N'Ética y Cultura de la Legalidad', 2, 7, 5000)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2051, N'Optativa III Área Curricular de Formación Profesional Fundamental', 2, 7, 6702)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2052, N'Optativa IV Área Curricular de Formación Profesional Fundamental', 2, 7, 6360)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2053, N'Seminario de Computación', 2, 8, 7200)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2054, N'Comportamiento Organizacional', 2, 8, 9058)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2055, N'Optativa V Área Curricular de Formación Profesional Fundamental', 2, 8, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2056, N'Optativa VI Área Curricular de Formación Profesional Fundamental', 2, 8, 8780)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2057, N'Administración de Proyectos de Software', 2, 9, 8120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2058, N'Servicio Social', 2, 9, 6351)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2059, N'Seminario de Egreso', 2, 9, 7628)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2060, N'Seminario para el Desempeño Profesional', 2, 9, 5227)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2061, N'Seminario para el Desempeño Profesional', 2, 9, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2062, N'Optativa VII Área Curricular de Formación Profesional Fundamental', 2, 9, 6009)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2063, N'Sexto Semestre', 2, 6, 6395)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2064, N'Introducción a las Telecomunicaciones', 2, 6, 5149)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2065, N'Tópicos de Tecnologías', 2, 6, 9900)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2066, N'Lenguaje Ensamblador', 2, 6, 5547)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2067, N'Fundamentos de Networking', 2, 6, 8909)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2068, N'Videojuegos', 2, 6, 5956)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2069, N'Compiladores', 2, 6, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2070, N'Sistemas Embebidos', 2, 6, 9632)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2071, N'Sistema Administrador de Base de Datos', 2, 6, 5814)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2072, N'Desarrollo Web: Back-End', 2, 6, 9996)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2073, N'Simulación', 2, 7, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2074, N'Contabilidad', 2, 7, 7272)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2075, N'Redes Inalámbricas y Móviles', 2, 7, 5238)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2076, N'Minería de Datos', 2, 7, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2077, N'Estándares y Protocolos de Enrutamiento. Ruteo', 2, 7, 7172)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2078, N'Diseño de Soluciones Computacionales', 2, 7, 9158)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2079, N'Nanotecnología', 2, 7, 5910)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2080, N'Biotecnología', 2, 7, 5049)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2081, N'Desarrollo Web: Front-End', 2, 7, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2082, N'Seguridad en Desarrollo de Software', 2, 7, 8794)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2083, N'Introducción al Aprendizaje Automático', 2, 7, 6360)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2084, N'Sistemas Embebidos Avanzados', 2, 8, 9535)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2085, N'Ingeniería de Software', 2, 8, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2086, N'Técnicas para Presentaciones Ejecutivas', 2, 8, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2087, N'Estándares y Protocolos de Conmutación. Switcheo', 2, 8, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2088, N'Estimación de Proyectos de Software', 2, 8, 6194)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2089, N'Proyectos de Software Enfocados a Nanotecnología', 2, 8, 7885)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2090, N'Introducción al Aprendizaje Profundo', 2, 8, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2091, N'Seguridad Avanzada en Tecnologías de Información', 2, 8, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2092, N'Nuevas Tecnologías', 2, 9, 5989)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2093, N'Seminario de Análisis Empresarial', 2, 9, 8273)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2094, N'Interconectividad Segura de Redes Corporativas', 2, 9, 7628)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (2095, N'Modelos de Negocio', 2, 9, 6702)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3001, N'METODOLOGÍA DE LA PROGRAMACIÓN', 3, 1, 7685)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3002, N'COMPETENCIA COMUNICATIVA', 3, 1, 6351)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3003, N'CÁLCULO DIFERENCIAL', 3, 1, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3004, N'ÁLGEBRA', 3, 1, 5000)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3005, N'MECÁNICA TRASLACIONAL', 3, 1, 8333)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3006, N'GEOMETRÍA ANALÍTICA', 3, 1, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3007, N'APLICACIÓN DE LAS TECNOLOGÍAS DE INFORMACIÓN', 3, 1, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3008, N'INTRODUCCIÓN A LA NANOTECNOLOGÍA', 3, 2, 8521)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3009, N'DERECHOS HUMANOS', 3, 2, 9996)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3010, N'DESARROLLO HUMANO Y COMPETITIVIDAD PROFESIONAL', 3, 2, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3011, N'EQUIDAD DE GENERO', 3, 2, 5238)
GO
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3012, N'AUTOCUIDADO Y ESTILOS DE VIDA SALUDABLE', 3, 2, 5890)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3013, N'CÁLCULO INTEGRAL', 3, 2, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3014, N'TÓPICOS DE ÁLGEBRA', 3, 2, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3015, N'MECÁNICA ROTACIONAL FLUIDOS Y CALOR', 3, 2, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3016, N'PROGRAMACIÓN', 3, 2, 9424)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3017, N'ASTROMETRÍA ESFÉRICA', 3, 2, 9163)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3018, N'CULTURA REGIONAL', 3, 2, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3019, N'ANTROPOLOGÍA SOCIAL', 3, 2, 7200)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3020, N'MÉTODOS ALTERNOS DE LA SOLUCIÓN DE CONTROVERSIAS', 3, 2, 8532)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3021, N'PSICOLOGÍA Y DESARROLLO PROFESIONAL', 3, 2, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3022, N'CULTURA DE CALIDAD', 3, 2, 5490)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3023, N'EDUCACIÓN FÍSICA', 3, 2, 5675)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3024, N'ASTRONOMÍA GENERAL I', 3, 3, 8677)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3025, N'CÁLCULO DE VARIAS VARIABLES', 3, 3, 6236)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3026, N'ÁLGEBRA LINEAL', 3, 3, 6311)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3027, N'ELECTRICIDAD Y MAGNETÍSMO', 3, 3, 7885)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3028, N'ECUACIONES DIFERENCIALES', 3, 3, 9643)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3029, N'ANÁLISIS Y TÉCNICAS EXPERIMENTALES', 3, 3, 9654)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3030, N'APRECIACIÓN A LAS ARTES', 3, 3, 6661)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3031, N'COMPETENCIA COMUNICATIVA EN ÍNGLES', 3, 3, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3032, N'INTRODUCCIÓN A LA NANOBIOTECNOLOGÍA', 3, 4, 7270)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3033, N'ASTRONOMÍA GENERAL II Y CÁLCULO NUMÉRICO', 3, 4, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3034, N'CÁLCULO VECTORIAL', 3, 4, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3035, N'VARIABLE COMPLEJA', 3, 4, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3036, N'ONDAS Y ELECTROMAGNETISMO', 3, 4, 7092)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3037, N'PROBABILIDAD', 3, 4, 7270)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3038, N'METROLOGÍA', 3, 4, 9900)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3039, N'QUÍMICA', 3, 4, 7885)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3040, N'CONTEXTO SOCIAL DE LA PROFESIÓN', 3, 4, 9163)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3041, N'AMBIENTE Y SUSTENTABILIDAD', 3, 4, 7475)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3042, N'FÍSICA MODERNA', 3, 5, 8120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3043, N'HISTORIA DE LA FÍSICA', 3, 5, 5779)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3044, N'FÍSICA DEL SISTEMA SOLAR', 3, 5, 5547)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3045, N'MECÁNICA CELESTE', 3, 5, 9166)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3046, N'ELECTRÓNICA DIGITAL', 3, 5, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3047, N'FÍSICA TÉRMICA', 3, 5, 8578)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3048, N'MECÁNICA TEÓRICA', 3, 5, 8333)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3049, N'MÉTODOS MATEMÁTICOS DE LA FÍSICA I', 3, 5, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3050, N'FÍSICA COMPUTACIONAL', 3, 5, 8873)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3051, N'CIENCIA DE MATERIALES', 3, 5, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3052, N'FORMACIÓN Y EVOLUCIÓN ESTELAR', 3, 6, 5234)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3053, N'SEMANARIO DE FÍSICA', 3, 6, 6288)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3054, N'QUÍMICA COMPUTACIONAL PARA NANOTECNOLOGÍA', 3, 6, 5508)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3055, N'APLICACIONES DE NANOTECNOLOGÍA COMPUTACIONAL', 3, 6, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3056, N'MATERIALES NANOESTRUCTURADOS', 3, 6, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3057, N'CIRCUITOS ELECTRÓNICOS', 3, 6, 7628)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3058, N'FÍSICA ESTADÍSTICA', 3, 6, 8120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3059, N'TEORÍA ELECTROMAGNÉTICA', 3, 6, 5779)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3060, N'MECÁNICA CUÁNTICA I', 3, 6, 8909)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3061, N'MÉTODOS MATEMÁTICOS DE LA FÍSICA II', 3, 6, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3062, N'ENSEÑANZA DE LAS CIENCIAS FÍSICO MATEMÁTICAS', 3, 6, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3063, N'FÍSICA EXPERIMENTAL', 3, 6, 8532)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3064, N'FÍSICA NUCLEAR', 3, 7, 6360)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3065, N'MAGNETISMO EN SISTEMAS DE BAJA DIMENSIONALIDAD', 3, 7, 8677)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3066, N'TÓPICOS DE FÍSICA MATEMÁTICA', 3, 7, 9505)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3067, N'SERVICIO SOCIAL', 3, 7, 5605)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3068, N'ESTADO SÓLIDO', 3, 7, 8666)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3069, N'MECÁNICA CUÁNTICA II', 3, 7, 5049)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3070, N'ÓPTICA Y APLICACIONES', 3, 7, 7092)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3071, N'MATEMATICAS', 3, 8, 8098)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3072, N'ÉTICA, SOCIEDAD Y PROFESIÓN', 3, 8, 9115)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3073, N'METODOLOGÍA CIENTÍFICA', 3, 8, 6009)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3074, N'FORMACIÓN DE EMPRENDEDORES', 3, 8, 7349)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (3075, N'LIBRE ELECCIÓN', 3, 8, 9158)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4001, N'CÁLCULO DIFERENCIAL', 4, 1, 9854)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4002, N'ÁLGEBRA', 4, 1, 9115)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4003, N'GEOMETRÍA ANALÍTICA', 4, 1, 6194)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4004, N'LÓGICA Y CONJUNTOS', 4, 1, 5130)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4005, N'C. G 1 (COMPETENCIA COMUNICATIVA)', 4, 1, 8794)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4006, N'C. G 2 (APLICACIÓN DE LAS TECNOLOGÍAS DE INFORMACIÓN)', 4, 1, 8873)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4007, N'CÁLCULO INTEGRAL', 4, 2, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4008, N'GEOMETRÍA MODERNA', 4, 2, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4009, N'TÓPICOS DE ÁLGEBRA', 4, 2, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4010, N'PROGRAMACIÓN', 4, 2, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4011, N'CG3 (TÓPICOS SELECTOS DE CIENCIAS SOCIALES, ARTES Y HUMANIDADES)', 4, 2, 9163)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4012, N'CG4(TÓPICOS SELECTOS DE DESARROLLO HUMANO, SALUD Y DEPORTES)', 4, 2, 5378)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4013, N'OPTATIVA I ACFBP', 4, 2, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4014, N'CÁLCULO DE VARIAS VARIABLES', 4, 3, 8794)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4015, N'ÁLGEBRA LINEAL', 4, 3, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4016, N'HISTORIA DE LAS MATEMÁTICAS', 4, 3, 5378)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4017, N'CG5(APRECIACIÓN A LAS ARTES)', 4, 3, 5508)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4018, N'CG6 (TÓPICOS SELECTOS PARA EL DESARROLLO ACADÉMICO Y PROFESIONAL)', 4, 3, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4019, N'OPTATIVA II ACFBP', 4, 3, 5378)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4020, N'OPTATIVA III ACFBP', 4, 3, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4021, N'CÁLCULO VECTORIAL', 4, 4, 5980)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4022, N'VARIABLE COMPLEJA', 4, 4, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4023, N'ECUACIONES DIFERENCIALES', 4, 4, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4024, N'PROBABILIDAD', 4, 4, 7349)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4025, N'TÓPICOS DE ÁLGEBRA LINEAL', 4, 4, 5980)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4026, N'CG7(AMBIENTE Y SUSTENTABILIDAD)', 4, 4, 9654)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4027, N'OPTATIVA IV ACFBP', 4, 4, 8273)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4028, N'TEORÍA DE GRUPOS', 4, 5, 8578)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4029, N'ESTADÍSTICA', 4, 5, 8677)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4030, N'TÓPICOS DE ECUACIONES DIFERENCIALES', 4, 5, 5890)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4031, N'TÓPICOS DE VARIABLE COMPLEJA', 4, 5, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4032, N'CG8(CONTEXTO SOCIAL DE LA PROFESIÓN)', 4, 5, 5814)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4033, N'OPTATIVA I ACFP', 4, 5, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4034, N'OPTATIVA II ACFP', 4, 5, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4035, N'ANALISIS MATEMÁTICO', 4, 6, 9424)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4036, N'TEORÍA DE ANILLOS Y CAMPOS', 4, 6, 5238)
GO
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4037, N'INVESTIGACIÓN DE OPERACIONES', 4, 6, 9900)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4038, N'MATEMÁTICA EDUCATIVA', 4, 6, 9900)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4039, N'CG9(TÓPICOS SELECTOS DE LENGUA Y CULTURA EXTRANJERA)', 4, 6, 8532)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4040, N'OPTATIVA III ACFP', 4, 6, 5227)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4041, N'OPTATIVA IV ACFP', 4, 6, 7871)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4042, N'TÓPICOS DE ANÁLISIS MATEMÁTICO', 4, 7, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4043, N'TOPOLOGÍA', 4, 7, 8273)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4044, N'SIMULACIÓN', 4, 7, 8873)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4045, N'ENSEÑANZA DE LAS CIENCIAS FÍSICO MATEMÁTICAS', 4, 7, 7475)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4046, N'CG10(ÉTICA, SOCIEDAD Y PROFESIÓN)', 4, 7, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4047, N'OPTATIVA V ACFP', 4, 7, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4048, N'OPTATIVA VI ACFP', 4, 7, 5149)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4049, N'TEORÍA DE LA MEDIDA', 4, 8, 5779)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4050, N'SERVICIO SOCIAL', 4, 8, 6661)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4051, N'OPTATIVA VII ACFP', 4, 8, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4052, N'LIBRE ELECCIÓN', 4, 9, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (4053, N'OPTATIVA VIII ACFP', 4, 9, 9900)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5001, N'Metodología de la programación', 5, 1, 6618)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5002, N'Álgebra', 5, 1, 6422)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5003, N'Geometría analítica', 5, 1, 9581)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5004, N'Cálculo diferencial', 5, 1, 7871)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5005, N'Física básica', 5, 1, 8930)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5006, N'Programación básica', 5, 2, 9996)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5007, N'Matemáticas para videojuegos I', 5, 2, 9996)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5008, N'Tecnologías multimedia', 5, 2, 8943)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5009, N'Dibujo de la anatomía humana', 5, 2, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5010, N'Expresiones artísticas y socioculturales', 5, 2, 9916)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5011, N'Responsabilidad social y desarrollo sustentable', 5, 2, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5012, N'Programación avanzada', 5, 3, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5013, N'Matemáticas para videojuegos II', 5, 3, 5989)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5014, N'Producción multimedia', 5, 3, 7200)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5015, N'Fundamentos de los videojuegos', 5, 3, 9854)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5016, N'Modelado arquitectónico', 5, 3, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5017, N'Ética y cultura de la legalidad', 5, 3, 9058)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5018, N'Programación orientada a objetos', 5, 4, 7349)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5019, N'Estructura de datos', 5, 4, 8488)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5020, N'Lógica digital', 5, 4, 9107)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5021, N'Sistemas operativos', 5, 4, 7609)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5022, N'Propiedad intelectual', 5, 4, 9158)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5023, N'Optativa I Área Curricular de Formación Profesional Fundamental', 5, 4, 5238)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5024, N'Cultura de la paz', 5, 5, 9643)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5025, N'Gráficas computacionales I', 5, 5, 9424)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5026, N'Modelos de administración de datos', 5, 5, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5027, N'Diseño de hápticos', 5, 5, 9158)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5028, N'Fotografía digital', 5, 5, 8780)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5029, N'Cinematrografia', 5, 5, 5890)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5030, N'Liderazgo, emprendimiento e innovación', 5, 5, 9632)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5031, N'Optativa II Área Curricular de Formación Profesional Fundamental', 5, 5, 8044)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5032, N'Gráficas computacionales II', 5, 6, 5222)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5033, N'Programación web I', 5, 6, 5910)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5034, N'Redes computacionales', 5, 6, 9983)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5035, N'Escenarios de videojuegos', 5, 6, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5036, N'Guionismo', 5, 6, 5130)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5037, N'Optativa III Área Curricular de Formación Profesional Fundamental', 5, 6, 8794)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5038, N'Gráficas computacionales en web', 5, 7, 9424)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5039, N'Base de datos multimedia', 5, 7, 5234)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5040, N'Programación orientada a la internet', 5, 7, 8044)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5041, N'Optimización de videojuegos', 5, 7, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5042, N'Administración de proyectos', 5, 7, 7592)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5043, N'Programación web de capa intermedia', 5, 7, 8624)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5044, N'Optativa IV Área Curricular de Formación Profesional Fundamental', 5, 7, 8333)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5045, N'Realidad Virtual', 5, 8, 8273)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5046, N'Programación web II', 5, 8, 5605)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5047, N'Procesamiento de imágenes', 5, 8, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5048, N'Diseño de videojuegos en línea', 5, 8, 5547)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5049, N'Mercadotecnia', 5, 8, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5050, N'Optativa V Área Curricular de Formación Profesional Fundamental', 5, 8, 6702)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5051, N'Servicio', 5, 9, 6661)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5052, N'Proyección personal y de productos', 5, 9, 7685)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (5053, N'Optativa VI Área Curricular de Formación Profesional Fundamental', 5, 9, 9990)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6001, N'Álgebra', 6, 1, 8144)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6002, N'Cálculo diferencial', 6, 1, 7609)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6003, N'Geometría analítica', 6, 1, 7092)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6004, N'Metodología de la programación', 6, 1, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6005, N'Física básica', 6, 1, 5081)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6006, N'Tópicos de álgebra', 6, 2, 7609)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6007, N'Cálculo integral', 6, 2, 9632)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6008, N'Programación I', 6, 2, 8044)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6009, N'Matemáticas financieras', 6, 2, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6010, N'Seguro de vida', 6, 2, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6011, N'Análisis de datos', 6, 3, 5000)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6012, N'Álgebra lineal', 6, 3, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6013, N'Cálculo de varias variables', 6, 3, 8044)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6014, N'Probabilidad básica', 6, 3, 7938)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6015, N'Economía', 6, 3, 6311)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6016, N'Seguro de daños', 6, 3, 5980)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6017, N'Contexto económico geopolítico', 6, 3, 8578)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6018, N'Ecuaciones diferenciales', 6, 4, 5747)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6019, N'Probabilidad avanzada', 6, 4, 6360)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6020, N'Matemáticas financieras avanzadas', 6, 4, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6021, N'Contabilidad', 6, 4, 6422)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6022, N'Análisis de datos avanzados', 6, 4, 9115)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6023, N'Cultura de paz', 6, 4, 5378)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6024, N'Inferencia estadística', 6, 5, 7592)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6025, N'Portafolios de inversión', 6, 5, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6026, N'Métodos numéricos', 6, 5, 9120)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6027, N'Cálculo actuarial', 6, 5, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6028, N'Optativa I Área curricular de Formación profesional fundamental', 6, 5, 8650)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6029, N'Optativa II Área curricular de formación profesional fundamental', 6, 5, 8521)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6030, N'Responsabilidad social y desarrollo sustentable', 6, 5, 8144)
GO
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6031, N'Procesos estocásticos', 6, 6, 6009)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6032, N'Métodos estadísticos', 6, 6, 6009)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6033, N'Matemáticas actuariales del seguro de vida', 6, 6, 9163)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6034, N'Investigación de operaciones', 6, 6, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6035, N'Optativa III Área curricular de formación profesional fundamental', 6, 6, 5814)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6036, N'Optativa IV Área curricular de formación profesional fundamental', 6, 6, 9543)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6037, N'Liderazgo, emprendimiento e innovación', 6, 6, 5989)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6038, N'Demografía', 6, 7, 9045)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6039, N'Estadística aplicada', 6, 7, 8666)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6040, N'Productos financieros derivados', 6, 7, 8780)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6041, N'Simulación', 6, 7, 9916)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6042, N'Planeación estratégica', 6, 7, 9093)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6043, N'Optativa V Área curricular de formación profesional fundamental', 6, 7, 6194)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6044, N'Ética y cultura de la legalidad', 6, 7, 7938)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6045, N'Pensiones', 6, 8, 7270)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6046, N'Administración del riesgo empresarial', 6, 8, 5547)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6047, N'Finanzas corporativas', 6, 8, 5989)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6048, N'Matemáticas actuariales del seguro de daños', 6, 8, 9996)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6049, N'Servicio social', 6, 8, 9122)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6050, N'Teoría del riesgo', 6, 9, 5890)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6051, N'Administración actuarial', 6, 9, 9057)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6052, N'Administración del riesgo empresarial aplicada', 6, 9, 7172)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6053, N'Teoría del comportamiento', 6, 9, 6564)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6054, N'Optativa VI Área curricular de formación profesional fundamental', 6, 9, 9854)
INSERT [dbo].[Materia] ([idMateria], [nomMateria], [idCarrera], [idSemestre], [idMaestro]) VALUES (6055, N'Optativa Área curricular de formación profesional integradora', 6, 9, 6661)
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Dia] FOREIGN KEY([idDia])
REFERENCES [dbo].[Dia] ([idDia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Dia]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Maestro] FOREIGN KEY([idMaestro])
REFERENCES [dbo].[Maestro] ([idMaestro])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Maestro]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Materia] FOREIGN KEY([idMateria])
REFERENCES [dbo].[Materia] ([idMateria])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera1] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera1]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Maestro] FOREIGN KEY([idMaestro])
REFERENCES [dbo].[Maestro] ([idMaestro])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Maestro]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Alumno] FOREIGN KEY([idAlumno])
REFERENCES [dbo].[Alumno] ([idAlumno])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Alumno]
GO
/****** Object:  StoredProcedure [dbo].[sp_vista1]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista1]
AS
SELECT * FROM Vista1
GO
/****** Object:  StoredProcedure [dbo].[sp_vista10]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista10]
AS
SELECT * FROM vista10
GO
/****** Object:  StoredProcedure [dbo].[sp_vista2]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista2]
AS
SELECT * FROM vista2
GO
/****** Object:  StoredProcedure [dbo].[sp_vista3]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista3]
AS
SELECT * FROM vista3
GO
/****** Object:  StoredProcedure [dbo].[sp_vista4]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista4]
AS
SELECT * FROM vista4
GO
/****** Object:  StoredProcedure [dbo].[sp_vista5]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista5]
AS
SELECT * FROM vista5
GO
/****** Object:  StoredProcedure [dbo].[sp_vista6]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista6]
AS
SELECT * FROM vista6
GO
/****** Object:  StoredProcedure [dbo].[sp_vista7]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista7]
AS
SELECT * FROM vista7
GO
/****** Object:  StoredProcedure [dbo].[sp_vista8]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_vista8]
AS
SELECT * FROM vista8
GO
/****** Object:  StoredProcedure [dbo].[sp_vista9]    Script Date: 05/05/2019 07:05:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_vista9]
AS
SELECT * FROM vista9
GO
USE [master]
GO
ALTER DATABASE [HorarioEscolar] SET  READ_WRITE 
GO
