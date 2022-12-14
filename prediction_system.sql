USE [master]
GO
/****** Object:  Database [dbo_Futbol_Maç_Tahmin_Sistemi]    Script Date: 22.10.2022 14:00:13 ******/
CREATE DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbo_Futbol_Maç_Tahmin_Sistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_Futbol_Maç_Tahmin_Sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbo_Futbol_Maç_Tahmin_Sistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_Futbol_Maç_Tahmin_Sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo_Futbol_Maç_Tahmin_Sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET QUERY_STORE = OFF
GO
USE [dbo_Futbol_Maç_Tahmin_Sistemi]
GO
/****** Object:  Table [dbo].[Maclar]    Script Date: 22.10.2022 14:00:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maclar](
	[takim_id] [smallint] IDENTITY(1,1) NOT NULL,
	[Takim_adi] [varchar](50) NULL,
	[Maç_yaptiği_takim] [varchar](50) NULL,
	[İlk_takim_gol] [decimal](10, 2) NULL,
	[İkinci_takim_gol] [decimal](10, 2) NULL,
	[İlk_takim_toplaoynama] [decimal](10, 2) NULL,
	[İkinci_takim_toplaoynama] [decimal](10, 2) NULL,
	[İlk_takim_toplamşut] [decimal](10, 2) NULL,
	[İkinci_takim_toplamşut] [decimal](10, 2) NULL,
	[İlk_takim_isabetli_şut] [decimal](10, 2) NULL,
	[İkinci_takim_isabetli_şut] [decimal](10, 2) NULL,
	[İlk_takim_pasbaşari] [decimal](10, 2) NULL,
	[İkinci_takim_pasbaşari] [decimal](10, 2) NULL,
	[İlk_takim_korner] [decimal](10, 2) NULL,
	[İkinci_takim_korner] [decimal](10, 2) NULL,
	[İlk_takim_orta] [decimal](10, 2) NULL,
	[İkinci_takim_orta] [decimal](10, 2) NULL,
	[İlk_takim_faul] [decimal](10, 2) NULL,
	[İkinci_takim_faul] [decimal](10, 2) NULL,
	[İlk_takim_ofsayt] [decimal](10, 2) NULL,
	[İkinci_takim_ofsayt] [decimal](10, 2) NULL,
	[kazanan] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [dbo_Futbol_Maç_Tahmin_Sistemi] SET  READ_WRITE 
GO
