USE [master]
GO
/****** Object:  Database [AddressBook]    Script Date: 21.06.2020 19:39:32 ******/
CREATE DATABASE [AddressBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AddressBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AddressBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AddressBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AddressBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AddressBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AddressBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AddressBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AddressBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AddressBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AddressBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AddressBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [AddressBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AddressBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AddressBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AddressBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AddressBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AddressBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AddressBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AddressBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AddressBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AddressBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AddressBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AddressBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AddressBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AddressBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AddressBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AddressBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AddressBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AddressBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AddressBook] SET  MULTI_USER 
GO
ALTER DATABASE [AddressBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AddressBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AddressBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AddressBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AddressBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AddressBook] SET QUERY_STORE = OFF
GO
USE [AddressBook]
GO
/****** Object:  Table [dbo].[TblCities]    Script Date: 21.06.2020 19:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cities] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblCities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblContacts]    Script Date: 21.06.2020 19:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblContacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_TblContacts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDistricts]    Script Date: 21.06.2020 19:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDistricts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cityId] [int] NULL,
	[district] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblDistricts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsers]    Script Date: 21.06.2020 19:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_TblUsers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblCities] ON 

INSERT [dbo].[TblCities] ([id], [cities]) VALUES (1, N'Ankara')
INSERT [dbo].[TblCities] ([id], [cities]) VALUES (2, N'İstanbul')
INSERT [dbo].[TblCities] ([id], [cities]) VALUES (3, N'İzmir')
SET IDENTITY_INSERT [dbo].[TblCities] OFF
SET IDENTITY_INSERT [dbo].[TblContacts] ON 

INSERT [dbo].[TblContacts] ([id], [userId], [FirstName], [LastName], [Street], [City], [District], [Zip], [isActive]) VALUES (1, 1, N'Ece', N'Akdemir', N'Çiçek', N'Ankara', N'Altındağ', N'069002', 1)
INSERT [dbo].[TblContacts] ([id], [userId], [FirstName], [LastName], [Street], [City], [District], [Zip], [isActive]) VALUES (2, 2, N'Melek', N'Akdemir', N'Çiçek', N'Ankara', N'Çankaya', N'069002', 1)
INSERT [dbo].[TblContacts] ([id], [userId], [FirstName], [LastName], [Street], [City], [District], [Zip], [isActive]) VALUES (3, 3, N'Mustafa', N'Akdemir', N'Çiçek', N'Ankara', N'Çankaya', N'069002', 1)
SET IDENTITY_INSERT [dbo].[TblContacts] OFF
SET IDENTITY_INSERT [dbo].[TblDistricts] ON 

INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (1, 1, N'Altındağ')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (2, 1, N'Çankaya')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (3, 1, N'Yenimahalle')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (4, 2, N'Bahçeşehir')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (5, 2, N'Şişli')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (6, 2, N'Kadıköy')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (7, 3, N'Bornova')
INSERT [dbo].[TblDistricts] ([id], [cityId], [district]) VALUES (8, 3, N'Karşıyaka')
SET IDENTITY_INSERT [dbo].[TblDistricts] OFF
SET IDENTITY_INSERT [dbo].[TblUsers] ON 

INSERT [dbo].[TblUsers] ([id], [username], [password], [email], [isActive]) VALUES (1, N'eceakdemir', N'2211', N'ece@gmail.com', NULL)
INSERT [dbo].[TblUsers] ([id], [username], [password], [email], [isActive]) VALUES (2, N'melekakdemir', N'0209', N'melek@gmail.com', NULL)
INSERT [dbo].[TblUsers] ([id], [username], [password], [email], [isActive]) VALUES (3, N'mustafaakdemir', N'0108', N'mustafa@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[TblUsers] OFF
ALTER TABLE [dbo].[TblContacts]  WITH CHECK ADD  CONSTRAINT [FK_TblContacts_TblDistricts] FOREIGN KEY([id])
REFERENCES [dbo].[TblDistricts] ([id])
GO
ALTER TABLE [dbo].[TblContacts] CHECK CONSTRAINT [FK_TblContacts_TblDistricts]
GO
ALTER TABLE [dbo].[TblContacts]  WITH CHECK ADD  CONSTRAINT [FK_TblContacts_TblUsers] FOREIGN KEY([userId])
REFERENCES [dbo].[TblUsers] ([id])
GO
ALTER TABLE [dbo].[TblContacts] CHECK CONSTRAINT [FK_TblContacts_TblUsers]
GO
ALTER TABLE [dbo].[TblDistricts]  WITH CHECK ADD  CONSTRAINT [FK_TblDistricts_TblCities] FOREIGN KEY([cityId])
REFERENCES [dbo].[TblCities] ([id])
GO
ALTER TABLE [dbo].[TblDistricts] CHECK CONSTRAINT [FK_TblDistricts_TblCities]
GO
USE [master]
GO
ALTER DATABASE [AddressBook] SET  READ_WRITE 
GO
