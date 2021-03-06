/****** Object:  Database [2C2PTest]    Script Date: 29-Feb-20 9:57:47 ******/
CREATE DATABASE [2C2PTest]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 500 MB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [2C2PTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [2C2PTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [2C2PTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [2C2PTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [2C2PTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [2C2PTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [2C2PTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [2C2PTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [2C2PTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [2C2PTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [2C2PTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [2C2PTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [2C2PTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [2C2PTest] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [2C2PTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [2C2PTest] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [2C2PTest] SET  MULTI_USER 
GO
ALTER DATABASE [2C2PTest] SET ENCRYPTION ON
GO
ALTER DATABASE [2C2PTest] SET QUERY_STORE = ON
GO
ALTER DATABASE [2C2PTest] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
/****** Object:  Table [dbo].[CurrencyCodes]    Script Date: 29-Feb-20 9:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyCodes](
	[Code] [varchar](3) NOT NULL,
 CONSTRAINT [PK_CurrencyCodes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 29-Feb-20 9:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLogs](
	[Id] [varchar](128) NOT NULL,
	[Catagory] [varchar](128) NULL,
	[Success] [bit] NULL,
	[Description] [varchar](max) NULL,
	[ErrorMsg] [varchar](max) NULL,
	[LogDateUTC] [datetime] NULL,
 CONSTRAINT [PK_SystemLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 29-Feb-20 9:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionId] [varchar](50) NOT NULL,
	[Amount] [decimal](18, 2) NULL,
	[CurrencyCode] [varchar](3) NULL,
	[TransactionDate] [datetime] NULL,
	[Status] [varchar](1) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ADP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AED')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AFA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AFN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ALK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ALL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AMD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ANG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AOA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AOK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AON')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AOR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ARA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ARP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ARS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ARY')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ATS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AUD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AWG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AYM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AZM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'AZN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BAD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BAM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BBD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BDT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BEC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BEF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BEL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BGJ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BGK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BGL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BGN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BHD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BIF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BMD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BND')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BOB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BOP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BOV')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BRR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BSD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BTN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BUK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BWP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BYB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BYN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BYR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'BZD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CAD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CDF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CHC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CHE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CHF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CHW')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CLF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CLP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CNY')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'COP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'COU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CRC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CSD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CSJ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CSK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CUC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CUP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CVE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CYP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'CZK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DDM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DEM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DJF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DKK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DOP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'DZD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ECS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ECV')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'EEK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'EGP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ERN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ESA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ESB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ESP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ETB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'EUR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'FIM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'FJD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'FKP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'FRF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GBP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GEK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GEL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GHC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GHP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GHS')
GO
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GIP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GMD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GNE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GNF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GNS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GQE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GRD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GTQ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GWE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GWP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'GYD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HKD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HNL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HRD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HRK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HTG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'HUF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'IDR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'IEP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ILP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ILR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ILS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'INR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'IQD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'IRR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ISJ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ISK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ITL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'JMD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'JOD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'JPY')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KES')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KGS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KHR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KMF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KPW')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KRW')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KWD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KYD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'KZT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LAJ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LAK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LBP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LKR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LRD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LSL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LSM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LTL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LTT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LUC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LUF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LUL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LVL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LVR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'LYD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MAD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MDL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MGA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MGF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MKD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MLF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MMK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MNT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MOP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MRO')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MTL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MTP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MUR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MVQ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MVR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MWK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MXN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MXP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MXV')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MYR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MZE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MZM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'MZN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NAD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NGN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NIC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NIO')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NLG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NOK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NPR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'NZD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'OMR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PAB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PEH')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PEI')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PEN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PES')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PGK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PHP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PKR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PLN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PLZ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PTE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'PYG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'QAR')
GO
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RHD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ROK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ROL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RON')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RSD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RUB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RUR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'RWF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SAR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SBD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SCR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SDD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SDG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SDP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SEK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SGD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SHP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SIT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SKK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SLL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SOS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SRD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SRG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SSP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'STD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SUR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SVC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SYP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'SZL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'THB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TJR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TJS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TMM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TMT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TND')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TOP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TPE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TRL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TRY')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TTD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TWD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'TZS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UAH')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UAK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UGS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UGW')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UGX')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'USD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'USN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'USS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UYI')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UYN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UYP')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UYU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'UZS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'VEB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'VEF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'VNC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'VND')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'VUV')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'WST')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XAF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XAG')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XAU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XBA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XBB')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XBC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XBD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XCD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XDR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XEU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XFO')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XFU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XOF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XPD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XPF')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XPT')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XRE')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XSU')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XTS')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XUA')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'XXX')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'YDD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'YER')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'YUD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'YUM')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'YUN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZAL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZAR')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZMK')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZMW')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZRN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZRZ')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZWC')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZWD')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZWL')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZWN')
INSERT [dbo].[CurrencyCodes] ([Code]) VALUES (N'ZWR')
INSERT [dbo].[Transactions] ([TransactionId], [Amount], [CurrencyCode], [TransactionDate], [Status]) VALUES (N'Inv00001', CAST(200.00 AS Decimal(18, 2)), N'USD', CAST(N'2019-01-23T13:45:10.000' AS DateTime), N'D')
INSERT [dbo].[Transactions] ([TransactionId], [Amount], [CurrencyCode], [TransactionDate], [Status]) VALUES (N'Inv00002', CAST(10000.00 AS Decimal(18, 2)), N'EUR', CAST(N'2019-01-24T16:09:15.000' AS DateTime), N'R')
INSERT [dbo].[Transactions] ([TransactionId], [Amount], [CurrencyCode], [TransactionDate], [Status]) VALUES (N'Invoice0000001', CAST(1000.00 AS Decimal(18, 2)), N'USD', CAST(N'2019-02-20T12:33:16.000' AS DateTime), N'A')
INSERT [dbo].[Transactions] ([TransactionId], [Amount], [CurrencyCode], [TransactionDate], [Status]) VALUES (N'Invoice0000002', CAST(300.00 AS Decimal(18, 2)), N'USD', CAST(N'2019-02-21T02:04:59.000' AS DateTime), N'R')
/****** Object:  Index [IX_LogDateDESC]    Script Date: 29-Feb-20 9:57:50 ******/
CREATE NONCLUSTERED INDEX [IX_LogDateDESC] ON [dbo].[SystemLogs]
(
	[LogDateUTC] DESC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransactionDateDESC]    Script Date: 29-Feb-20 9:57:50 ******/
CREATE NONCLUSTERED INDEX [IX_TransactionDateDESC] ON [dbo].[Transactions]
(
	[TransactionDate] DESC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER DATABASE [2C2PTest] SET  READ_WRITE 
GO
