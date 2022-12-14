USE [master]
GO
/****** Object:  Database [Proyecto_POO]    Script Date: 30/10/2020 17:38:06 ******/
CREATE DATABASE [Proyecto_POO]
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
/****** Object:  Table [dbo].[bitacora]    Script Date: 30/10/2020 17:38:06 ******/
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
/****** Object:  Table [dbo].[caso]    Script Date: 30/10/2020 17:38:06 ******/
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
/****** Object:  Table [dbo].[departamento]    Script Date: 30/10/2020 17:38:06 ******/
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
/****** Object:  Table [dbo].[estados]    Script Date: 30/10/2020 17:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK__estados__86989FB27CAFCF88] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 30/10/2020 17:38:06 ******/
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
/****** Object:  Table [dbo].[solicitud]    Script Date: 30/10/2020 17:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](4000) NULL,
	[fechaEntrega] [datetime] NOT NULL,
	[idJefeDesarrollo] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[argumento] [varchar](4000) NULL,
 CONSTRAINT [PK_solicitud] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 30/10/2020 17:38:06 ******/
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
SET IDENTITY_INSERT [dbo].[bitacora] ON 

INSERT [dbo].[bitacora] ([id], [idCaso], [descripcion]) VALUES (1, N'DF30102020851', N'Añadido login')
INSERT [dbo].[bitacora] ([id], [idCaso], [descripcion]) VALUES (2, N'DF30102020851', N'Añadido web service')
SET IDENTITY_INSERT [dbo].[bitacora] OFF
INSERT [dbo].[caso] ([id], [idSolicitud], [descripcion], [porcentaje_avance], [observaciones], [fecha_limite], [usuario_creacion], [tester], [programador], [fecha_produccion]) VALUES (N'DF30102020851', 1, N'Uso de JS', 100, N'Finalizado', CAST(N'2020-11-06T17:25:30.373' AS DateTime), 3, 4, 5, CAST(N'2020-11-06T17:31:27.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[departamento] ON 

INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (1, N'Departamento de finanzas')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (2, N'Departamento de ventas')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (3, N'Departamento de facturación')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (4, N'Departamento de facturación Móvil')
INSERT [dbo].[departamento] ([id], [descripcion]) VALUES (5, N'Departamento de Emergencia')
SET IDENTITY_INSERT [dbo].[departamento] OFF
SET IDENTITY_INSERT [dbo].[estados] ON 

INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (1, N'En espera de respuesta')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (2, N'Solicituda aceptada')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (3, N'Solicitud rechazada')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (4, N'En desarrollo')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (5, N'Esperando aprobación de área solicitante')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (6, N'Vencido')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (7, N'Devuelto con observaciones')
INSERT [dbo].[estados] ([id_estado], [nombre]) VALUES (8, N'Finalizado')
SET IDENTITY_INSERT [dbo].[estados] OFF
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([id], [descripcion]) VALUES (1, N'Administrador')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (2, N'Jefe de áreas funcionales')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (3, N'Jefe de desarrollo')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (4, N'Empleado de las áreas funcionales')
INSERT [dbo].[rol] ([id], [descripcion]) VALUES (5, N'Programador')
SET IDENTITY_INSERT [dbo].[rol] OFF
SET IDENTITY_INSERT [dbo].[solicitud] ON 

INSERT [dbo].[solicitud] ([id], [descripcion], [fechaEntrega], [idJefeDesarrollo], [estado], [usuarioCreacion], [argumento]) VALUES (1, N'Creación de proyecto enfocado al área de salud', CAST(N'2020-10-30T17:15:49.570' AS DateTime), 3, 8, 2, N'En Desarrollo')
INSERT [dbo].[solicitud] ([id], [descripcion], [fechaEntrega], [idJefeDesarrollo], [estado], [usuarioCreacion], [argumento]) VALUES (2, N'idk', CAST(N'2020-10-30T17:18:52.643' AS DateTime), 3, 3, 2, N'denegado por falta de indicaciones')
SET IDENTITY_INSERT [dbo].[solicitud] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (1, 1, 4, N'Hugo Vides', N'Hugo13', N'1234')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (2, 2, 4, N'Pablo Acosta', N'Pablo14', N'14Pablo')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (3, 3, 4, N'Nicole Cruz', N'Nicole14', N'1234')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (4, 4, 4, N'Erick', N'Erick14', N'1234')
INSERT [dbo].[usuario] ([id], [idRol], [idDepartamento], [nombre], [usuario], [pass]) VALUES (5, 5, 4, N'Diego Martinez', N'Dieg14', N'1234')
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
ALTER TABLE [dbo].[solicitud]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_estados] FOREIGN KEY([estado])
REFERENCES [dbo].[estados] ([id_estado])
GO
ALTER TABLE [dbo].[solicitud] CHECK CONSTRAINT [FK_solicitud_estados]
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
