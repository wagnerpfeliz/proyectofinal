USE [master]
GO
/****** Object:  Database [Instituto]    Script Date: 4/8/2019 7:18:18 PM ******/
CREATE DATABASE [Instituto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Instituto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Instituto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Instituto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Instituto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Instituto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Instituto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Instituto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Instituto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Instituto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Instituto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Instituto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Instituto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Instituto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Instituto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Instituto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Instituto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Instituto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Instituto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Instituto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Instituto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Instituto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Instituto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Instituto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Instituto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Instituto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Instituto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Instituto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Instituto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Instituto] SET RECOVERY FULL 
GO
ALTER DATABASE [Instituto] SET  MULTI_USER 
GO
ALTER DATABASE [Instituto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Instituto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Instituto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Instituto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Instituto] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Instituto', N'ON'
GO
ALTER DATABASE [Instituto] SET QUERY_STORE = OFF
GO
USE [Instituto]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 4/8/2019 7:18:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[CalificacionId] [int] NOT NULL,
	[MateriaId] [int] NULL,
	[EstudianteId] [int] NULL,
	[ProfesorId] [int] NULL,
	[Calificacion1] [float] NULL,
	[Calificacion2] [float] NULL,
	[Calificacion3] [float] NULL,
	[Calificacion4] [float] NULL,
	[Promedio] [float] NULL,
	[ExamenFinal] [float] NULL,
	[CalificacionFinal] [int] NULL,
 CONSTRAINT [PK_Calificaciones] PRIMARY KEY CLUSTERED 
(
	[CalificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos-Tecnicos]    Script Date: 4/8/2019 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos-Tecnicos](
	[Curso-tecnicoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](20) NULL,
 CONSTRAINT [PK_Cursos-Tecnicos] PRIMARY KEY CLUSTERED 
(
	[Curso-tecnicoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 4/8/2019 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Matricula] [varchar](15) NULL,
	[Curso-tecnicoId] [int] NULL,
	[Edad] [varchar](2) NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 4/8/2019 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[MateriaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ProfesorId] [int] NULL,
	[Curso-tecnicoId] [int] NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[MateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 4/8/2019 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[CursoimpartidoId] [varchar](30) NULL,
	[Telefono] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [EstudianteId], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [ExamenFinal], [CalificacionFinal]) VALUES (1, 1, 1, 1, 10, 20, 20, 10, 60, 30, 90)
INSERT [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId], [Nombre], [Horario]) VALUES (1, N'Electricidad', N'Mañana')
INSERT [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId], [Nombre], [Horario]) VALUES (2, N'Automotriz', N'Tarde')
INSERT [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId], [Nombre], [Horario]) VALUES (3, N'Electricidad', N'Mañana')
INSERT [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId], [Nombre], [Horario]) VALUES (4, N'Albañileria', N'Tarde')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [Curso-tecnicoId], [Edad], [Sexo]) VALUES (1, N'Wagner Peña', N'15-eiit-1-023', 1, N'22', N'M')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [Curso-tecnicoId], [Edad], [Sexo]) VALUES (2, N'Maria Suaso', N'17-siit-1-??', 3, N'22', N'F')
INSERT [dbo].[Materia] ([MateriaId], [Nombre], [ProfesorId], [Curso-tecnicoId]) VALUES (1, N'Electricidad', 1, 1)
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Sexo], [CursoimpartidoId], [Telefono], [Email]) VALUES (1, N'Nabuconodosor', N'M', N'1', N'8092344245', N'Nabuconodosor@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Sexo], [CursoimpartidoId], [Telefono], [Email]) VALUES (2, N'Jesus Mercedes', N'M', N'3', N'849-123-6545', N'Jesusmercedez@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Sexo], [CursoimpartidoId], [Telefono], [Email]) VALUES (3, N'sadys Garcia', N'F', N'4', N'849-867-8323', N'SadysGarcia16@gmail.com')
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Estudiantes] FOREIGN KEY([EstudianteId])
REFERENCES [dbo].[Estudiantes] ([EstudianteId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Estudiantes]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Materia] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materia] ([MateriaId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Materia]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Profesores]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos-Tecnicos] FOREIGN KEY([Curso-tecnicoId])
REFERENCES [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Cursos-Tecnicos]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Cursos-Tecnicos] FOREIGN KEY([Curso-tecnicoId])
REFERENCES [dbo].[Cursos-Tecnicos] ([Curso-tecnicoId])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Cursos-Tecnicos]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Profesores]
GO
USE [master]
GO
ALTER DATABASE [Instituto] SET  READ_WRITE 
GO
