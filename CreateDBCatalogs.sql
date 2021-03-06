USE [master]
GO
/****** Object:  Database [ArandaCatalogs]    Script Date: 28/06/2022 1:49:54 p. m. ******/
CREATE DATABASE [ArandaCatalogs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArandaCatalogs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ArandaCatalogs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ArandaCatalogs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ArandaCatalogs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ArandaCatalogs] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArandaCatalogs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArandaCatalogs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArandaCatalogs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArandaCatalogs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ArandaCatalogs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArandaCatalogs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ArandaCatalogs] SET  MULTI_USER 
GO
ALTER DATABASE [ArandaCatalogs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArandaCatalogs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArandaCatalogs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArandaCatalogs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ArandaCatalogs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ArandaCatalogs] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ArandaCatalogs] SET QUERY_STORE = OFF
GO
USE [ArandaCatalogs]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28/06/2022 1:49:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Category_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28/06/2022 1:49:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](20) NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ArandaCatalogs] SET  READ_WRITE 
GO
