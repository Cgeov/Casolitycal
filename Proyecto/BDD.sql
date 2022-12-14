USE [master]
GO
/****** Object:  Database [Proyecto_POO]    Script Date: 19/9/2020 20:24:04 ******/
CREATE DATABASE [Proyecto_POO]
ALTER DATABASE [Proyecto_POO] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_POO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_POO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_POO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_POO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_POO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_POO] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_POO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto_POO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_POO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_POO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_POO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_POO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_POO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_POO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_POO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_POO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto_POO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_POO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_POO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_POO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_POO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_POO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_POO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_POO] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyecto_POO] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_POO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_POO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_POO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_POO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Proyecto_POO]
GO
/****** Object:  Table [dbo].[bitacora]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacora](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCaso] [varchar](60) NOT NULL,
	[descripcion] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_bitacora] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caso]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caso](
	[id] [varchar](60) NOT NULL,
	[idSolicitud] [int] NULL,
	[descripcion] [varchar](4000) NULL,
	[porcentaje_avance] [int] NULL,
	[observaciones] [varchar](4000) NULL,
	[fecha_limite] [datetime] NULL,
	[usuario_creacion] [int] NULL,
	[tester] [int] NULL,
	[programador] [int] NULL,
	[fecha_produccion] [datetime] NULL,
 CONSTRAINT [PK_caso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](4000) NULL,
	[fechaEntrega] [datetime] NOT NULL,
	[idJefeDesarrollo] [int] NOT NULL,
	[estado] [varchar](100) NULL,
	[usuarioCreacion] [int] NULL,
	[argumento] [varchar](4000) NULL,
 CONSTRAINT [PK_solicitud] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 19/9/2020 20:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idDepartamento] [int] NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[usuario] [varchar](30) NOT NULL,
	[pass] [varchar](30) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[departamento] ON 

INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (1, N'Departamento de finanzas')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (2, N'Departamento de ventas')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (3, N'Departamento de facturación')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (4, N'Departamento de facturación Móvil')
SET IDENTITY_INSERT [dbo].[departamento] OFF
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([id], [descripcion]) VALUES (1, N'Administrador')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (2, N'Jefe de áreas funcionales')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (3, N'Jefe de desarrollo')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (4, N'Empleado de las áreas funcionales')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (5, N'Programador')
SET IDENTITY_INSERT [dbo].[rol] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (1, 1, 4, N'Hugo Vides', N'Hugo13', N'1234')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (2, 5, 4, N'Pablo Acosta', N'Pablo14', N'14Pablo')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (3, 3, 4, N'Nicole Cruz', N'Nicole', N'Nicole')
SET IDENTITY_INSERT [dbo].[usuario] OFF
ALTER TABLE [dbo].[bitacora]  WITH CHECK ADD  CONSTRAINT [FK_bitacora_caso] FOREIGN KEY([idCaso])
REFERENCES [dbo].[caso] ([id])
GO
ALTER TABLE [dbo].[bitacora] CHECK CONSTRAINT [FK_bitacora_caso]
GO
ALTER TABLE [dbo].[caso]  WITH CHECK ADD  CONSTRAINT [FK_caso_solicitud] FOREIGN KEY([idSolicitud])
REFERENCES [dbo].[solicitud] ([id])
GO
ALTER TABLE [dbo].[caso] CHECK CONSTRAINT [FK_caso_solicitud]
GO
ALTER TABLE [dbo].[caso]  WITH CHECK ADD  CONSTRAINT [FK_caso_usuario] FOREIGN KEY([usuario_creacion])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[caso] CHECK CONSTRAINT [FK_caso_usuario]
GO
ALTER TABLE [dbo].[caso]  WITH CHECK ADD  CONSTRAINT [FK_caso_usuario1] FOREIGN KEY([tester])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[caso] CHECK CONSTRAINT [FK_caso_usuario1]
GO
ALTER TABLE [dbo].[caso]  WITH CHECK ADD  CONSTRAINT [FK_caso_usuario2] FOREIGN KEY([programador])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[caso] CHECK CONSTRAINT [FK_caso_usuario2]
GO
ALTER TABLE [dbo].[solicitud]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_usuario] FOREIGN KEY([idJefeDesarrollo])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[solicitud] CHECK CONSTRAINT [FK_solicitud_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[departamento] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_departamento]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
USE [master]
GO
ALTER DATABASE [Proyecto_POO] SET  READ_WRITE 
GO
