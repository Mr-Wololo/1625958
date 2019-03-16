USE [HorarioEscolar]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  Table [dbo].[Edificio]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Edificio]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Deportes]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Becario]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Becario]
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Aula]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP TABLE [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 07/03/2019 08:24:34 p. m. ******/
DROP DATABASE [HorarioEscolar]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 07/03/2019 08:24:34 p. m. ******/
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
ALTER DATABASE [HorarioEscolar] SET AUTO_CLOSE ON 
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
ALTER DATABASE [HorarioEscolar] SET RECOVERY SIMPLE 
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
ALTER DATABASE [HorarioEscolar] SET QUERY_STORE = OFF
GO
USE [HorarioEscolar]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IDAlumno] [int] NOT NULL,
	[NomAlumno] [varchar](20) NOT NULL,
	[ApePatAlumno] [varchar](20) NOT NULL,
	[ApeMatAlumno] [varchar](20) NOT NULL,
	[Semestre] [int] NOT NULL,
	[IDCarrera] [int] NOT NULL,
	[Estatus] [char](1) NOT NULL,
	[NomCompleto]  AS (((([NomAlumno]+' ')+[ApePatAlumno])+' ')+[ApeMatAlumno]),
 CONSTRAINT [PK__Alumno__2A8067BFEFD57C3F] PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aula](
	[IDAula] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Becario]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Becario](
	[IDBecario] [int] NOT NULL,
	[IDAlumno] [int] NOT NULL,
	[IDCarrera] [int] NOT NULL,
	[Departamento] [varchar](20) NOT NULL,
	[PuestoAlumno]  AS (([IDAlumno]+' ')+[Departamento]),
PRIMARY KEY CLUSTERED 
(
	[IDBecario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[IDCarrera] [int] NOT NULL,
	[NombreCarrera] [varchar](25) NOT NULL,
	[NumPlan] [smallint] NOT NULL,
	[IDMaestroCoord] [int] NOT NULL,
 CONSTRAINT [PK__Carrera__C9EBEE64A3B3E4F1] PRIMARY KEY CLUSTERED 
(
	[IDCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IDDeporte] [int] NOT NULL,
	[Deporte] [varchar](20) NOT NULL,
	[IDMaestroResponsable] [int] NOT NULL,
	[DeporteResponsable]  AS (([Deporte]+' ')+[IDMaestroResponsable]),
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[IDDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edificio]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edificio](
	[IDEdificio] [int] NOT NULL,
	[NumEdificio] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEdificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[IDGrupo] [int] NOT NULL,
	[Materia] [int] NOT NULL,
	[Maestro] [int] NOT NULL,
	[IDAula] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IDHora] [int] NOT NULL,
	[Dia] [varchar](10) NOT NULL,
	[Materia] [varchar](25) NOT NULL,
	[Aula] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[IDMaestro] [int] NOT NULL,
	[NomMaestro] [varchar](20) NOT NULL,
	[ApePatMaestro] [varchar](20) NOT NULL,
	[ApeMatMaestro] [varchar](20) NOT NULL,
	[Materia] [varchar](25) NOT NULL,
	[NomCompletoMaestro]  AS (((([NomMaestro]+' ')+[ApePatMaestro])+' ')+[ApeMatMaestro]),
PRIMARY KEY CLUSTERED 
(
	[IDMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 07/03/2019 08:24:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[IDMateria] [int] NOT NULL,
	[NombreMateria] [varchar](25) NOT NULL,
	[Horario] [varchar](20) NOT NULL,
	[Carrera] [varchar](20) NOT NULL,
	[Semestre] [int] NOT NULL,
	[IDMaestro] [int] NOT NULL,
	[DatosMateria]  AS (((([NombreMateria]+' ')+[Horario])+' ')+[Carrera]),
 CONSTRAINT [PK__Materia__DBEC8474E64C1DD1] PRIMARY KEY CLUSTERED 
(
	[IDMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [ApePatAlumno], [ApeMatAlumno], [Semestre], [IDCarrera], [Estatus]) VALUES (1, N'Eduardo', N'Lino', N'de Leon', 4, 5, N'A')
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [ApePatAlumno], [ApeMatAlumno], [Semestre], [IDCarrera], [Estatus]) VALUES (2, N'Brandon', N'Davila', N'Sanchez', 4, 5, N'A')
USE [master]
GO
ALTER DATABASE [HorarioEscolar] SET  READ_WRITE 
GO
