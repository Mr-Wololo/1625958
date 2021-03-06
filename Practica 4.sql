USE [HorarioEscolar]
GO
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Alumno]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Maestro]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Maestro]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Dia]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK_Alumno_Carrera]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Semestre]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Dia]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP TABLE [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 29/03/2019 02:40:10 a. m. ******/
DROP DATABASE [HorarioEscolar]
GO
/****** Object:  Database [HorarioEscolar]    Script Date: 29/03/2019 02:40:10 a. m. ******/
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
/****** Object:  Table [dbo].[Alumno]    Script Date: 29/03/2019 02:40:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[idAlumno] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 29/03/2019 02:40:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[idCarrera] [int] NOT NULL,
	[nomCarrera] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dia]    Script Date: 29/03/2019 02:40:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dia](
	[idDia] [int] NOT NULL,
	[nomDia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 29/03/2019 02:40:10 a. m. ******/
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
/****** Object:  Table [dbo].[Maestro]    Script Date: 29/03/2019 02:40:10 a. m. ******/
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
/****** Object:  Table [dbo].[Materia]    Script Date: 29/03/2019 02:40:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[idMateria] [int] NOT NULL,
	[nomMateria] [varchar](50) NOT NULL,
	[idCarrera] [int] NOT NULL,
	[idSemestre] [int] NOT NULL,
	[idMaestro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 29/03/2019 02:40:10 a. m. ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/03/2019 02:40:10 a. m. ******/
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
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
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
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Alumno]
GO
USE [master]
GO
ALTER DATABASE [HorarioEscolar] SET  READ_WRITE 
GO
