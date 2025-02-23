USE [master]
GO
/****** Object:  Database [kantinStokTablo]    Script Date: 4.5.2015 23:28:55 ******/
CREATE DATABASE [kantinStokTablo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kantinStokTablo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\kantinStokTablo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kantinStokTablo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\kantinStokTablo_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kantinStokTablo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kantinStokTablo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kantinStokTablo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kantinStokTablo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kantinStokTablo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kantinStokTablo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kantinStokTablo] SET ARITHABORT OFF 
GO
ALTER DATABASE [kantinStokTablo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kantinStokTablo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kantinStokTablo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kantinStokTablo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kantinStokTablo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kantinStokTablo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kantinStokTablo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kantinStokTablo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kantinStokTablo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kantinStokTablo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kantinStokTablo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kantinStokTablo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kantinStokTablo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kantinStokTablo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kantinStokTablo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kantinStokTablo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kantinStokTablo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kantinStokTablo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kantinStokTablo] SET  MULTI_USER 
GO
ALTER DATABASE [kantinStokTablo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kantinStokTablo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kantinStokTablo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kantinStokTablo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [kantinStokTablo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [kantinStokTablo]
GO
/****** Object:  Table [dbo].[biskuvi]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[biskuvi](
	[biskuviID] [int] IDENTITY(1,1) NOT NULL,
	[biskuviAdi] [varchar](50) NOT NULL,
	[biskuviFiyat] [money] NOT NULL,
	[biskuviAdet] [int] NOT NULL,
	[biskuviSkt] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cikolata]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cikolata](
	[cikolataID] [int] IDENTITY(1,1) NOT NULL,
	[cikolataAdi] [varchar](50) NOT NULL,
	[cikolataFiyat] [money] NOT NULL,
	[cikolataAdet] [int] NOT NULL,
	[cikolataSkt] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ekmekArasi]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ekmekArasi](
	[ekmekArasiID] [int] IDENTITY(1,1) NOT NULL,
	[ekmekArasiAdi] [varchar](50) NOT NULL,
	[ekmekArasiFiyat] [money] NOT NULL,
	[ekmekArasiAdet] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kek]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kek](
	[kekID] [int] IDENTITY(1,1) NOT NULL,
	[kekAdi] [varchar](50) NOT NULL,
	[kekFiyat] [money] NOT NULL,
	[kekAdet] [int] NOT NULL,
	[kekSkt] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sicakicecek]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sicakicecek](
	[sicakicecekID] [int] IDENTITY(1,1) NOT NULL,
	[sicakicecekAdi] [varchar](50) NOT NULL,
	[sicakicecekFiyat] [money] NOT NULL,
	[sicakicecekAdet] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sogukicecek]    Script Date: 4.5.2015 23:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sogukicecek](
	[sogukicecekID] [int] IDENTITY(1,1) NOT NULL,
	[sogukicecekAdi] [varchar](50) NOT NULL,
	[sogukicecekFiyat] [money] NOT NULL,
	[sogukicecekAdet] [int] NOT NULL,
	[sogukicecekSkt] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[biskuvi] ON 

INSERT [dbo].[biskuvi] ([biskuviID], [biskuviAdi], [biskuviFiyat], [biskuviAdet], [biskuviSkt]) VALUES (1, N'İkram', 0.7500, 10, CAST(N'2015-05-15' AS Date))
INSERT [dbo].[biskuvi] ([biskuviID], [biskuviAdi], [biskuviFiyat], [biskuviAdet], [biskuviSkt]) VALUES (2, N'Benimo', 1.0000, 10, CAST(N'2015-05-15' AS Date))
INSERT [dbo].[biskuvi] ([biskuviID], [biskuviAdi], [biskuviFiyat], [biskuviAdet], [biskuviSkt]) VALUES (5, N'Çizi', 1.5000, 15, CAST(N'2015-04-30' AS Date))
INSERT [dbo].[biskuvi] ([biskuviID], [biskuviAdi], [biskuviFiyat], [biskuviAdet], [biskuviSkt]) VALUES (6, N'Torku Davet', 1.0000, 20, CAST(N'2015-05-30' AS Date))
SET IDENTITY_INSERT [dbo].[biskuvi] OFF
SET IDENTITY_INSERT [dbo].[cikolata] ON 

INSERT [dbo].[cikolata] ([cikolataID], [cikolataAdi], [cikolataFiyat], [cikolataAdet], [cikolataSkt]) VALUES (1, N'Torku No 1', 0.5000, 50, CAST(N'2015-12-30' AS Date))
INSERT [dbo].[cikolata] ([cikolataID], [cikolataAdi], [cikolataFiyat], [cikolataAdet], [cikolataSkt]) VALUES (2, N'Tadelle', 1.2500, 20, CAST(N'2015-06-15' AS Date))
INSERT [dbo].[cikolata] ([cikolataID], [cikolataAdi], [cikolataFiyat], [cikolataAdet], [cikolataSkt]) VALUES (3, N'Torku Classic', 1.0000, 30, CAST(N'2015-05-30' AS Date))
SET IDENTITY_INSERT [dbo].[cikolata] OFF
SET IDENTITY_INSERT [dbo].[ekmekArasi] ON 

INSERT [dbo].[ekmekArasi] ([ekmekArasiID], [ekmekArasiAdi], [ekmekArasiFiyat], [ekmekArasiAdet]) VALUES (1, N'Köfte', 1.5000, 5)
INSERT [dbo].[ekmekArasi] ([ekmekArasiID], [ekmekArasiAdi], [ekmekArasiFiyat], [ekmekArasiAdet]) VALUES (2, N'Tavuk', 1.0000, 10)
INSERT [dbo].[ekmekArasi] ([ekmekArasiID], [ekmekArasiAdi], [ekmekArasiFiyat], [ekmekArasiAdet]) VALUES (3, N'Sucuk', 2.0000, 15)
SET IDENTITY_INSERT [dbo].[ekmekArasi] OFF
SET IDENTITY_INSERT [dbo].[kek] ON 

INSERT [dbo].[kek] ([kekID], [kekAdi], [kekFiyat], [kekAdet], [kekSkt]) VALUES (1, N'Torku Tam', 0.7500, 30, CAST(N'2015-06-30' AS Date))
INSERT [dbo].[kek] ([kekID], [kekAdi], [kekFiyat], [kekAdet], [kekSkt]) VALUES (2, N'Popkek(Muzlu)', 0.5000, 20, CAST(N'2015-07-20' AS Date))
INSERT [dbo].[kek] ([kekID], [kekAdi], [kekFiyat], [kekAdet], [kekSkt]) VALUES (3, N'Torku 8:15', 0.5000, 50, CAST(N'2015-06-30' AS Date))
INSERT [dbo].[kek] ([kekID], [kekAdi], [kekFiyat], [kekAdet], [kekSkt]) VALUES (4, N'Dankek(Çikolatalı)', 0.5000, 50, CAST(N'2015-06-20' AS Date))
SET IDENTITY_INSERT [dbo].[kek] OFF
SET IDENTITY_INSERT [dbo].[sicakicecek] ON 

INSERT [dbo].[sicakicecek] ([sicakicecekID], [sicakicecekAdi], [sicakicecekFiyat], [sicakicecekAdet]) VALUES (1, N'Çay', 0.5000, 100)
INSERT [dbo].[sicakicecek] ([sicakicecekID], [sicakicecekAdi], [sicakicecekFiyat], [sicakicecekAdet]) VALUES (2, N'Nescafe', 50.0000, 50)
INSERT [dbo].[sicakicecek] ([sicakicecekID], [sicakicecekAdi], [sicakicecekFiyat], [sicakicecekAdet]) VALUES (3, N'Türk Kahvesi', 2.0000, 40)
INSERT [dbo].[sicakicecek] ([sicakicecekID], [sicakicecekAdi], [sicakicecekFiyat], [sicakicecekAdet]) VALUES (4, N'ASD', 15.0000, 35)
SET IDENTITY_INSERT [dbo].[sicakicecek] OFF
SET IDENTITY_INSERT [dbo].[sogukicecek] ON 

INSERT [dbo].[sogukicecek] ([sogukicecekID], [sogukicecekAdi], [sogukicecekFiyat], [sogukicecekAdet], [sogukicecekSkt]) VALUES (1, N'Cola Turka', 3.2500, 20, CAST(N'2015-06-15' AS Date))
INSERT [dbo].[sogukicecek] ([sogukicecekID], [sogukicecekAdi], [sogukicecekFiyat], [sogukicecekAdet], [sogukicecekSkt]) VALUES (2, N'Didi', 2.5000, 70, CAST(N'2015-05-31' AS Date))
INSERT [dbo].[sogukicecek] ([sogukicecekID], [sogukicecekAdi], [sogukicecekFiyat], [sogukicecekAdet], [sogukicecekSkt]) VALUES (3, N'Fuse Tea', 2.2500, 30, CAST(N'2015-01-31' AS Date))
INSERT [dbo].[sogukicecek] ([sogukicecekID], [sogukicecekAdi], [sogukicecekFiyat], [sogukicecekAdet], [sogukicecekSkt]) VALUES (4, N'Pepsi', 3.5000, 30, CAST(N'2015-06-27' AS Date))
SET IDENTITY_INSERT [dbo].[sogukicecek] OFF
USE [master]
GO
ALTER DATABASE [kantinStokTablo] SET  READ_WRITE 
GO
