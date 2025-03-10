
CREATE TABLE [dbo].[islemler](
	[islem_id] [int] IDENTITY(1,1) NOT NULL,
	[islem_tarih] [date] NULL,
	[teslim_tarihi] [date] NULL,
	[student_id] [int] NULL,
	[personel_id] [int] NULL,
	[kitap_id] [int] NULL,
 CONSTRAINT [PK_islemler] PRIMARY KEY CLUSTERED 
(
	[islem_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 3/10/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[kitap_id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
	[yazar] [varchar](50) NULL,
	[isbn] [int] NULL,
	[publisher] [varchar](50) NULL,
	[raf_id] [int] NULL,
 CONSTRAINT [PK_Kitap] PRIMARY KEY CLUSTERED 
(
	[kitap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 3/10/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[personel_id] [int] IDENTITY(1,1) NOT NULL,
	[personel_no] [int] NULL,
	[person_id] [int] NULL,
 CONSTRAINT [PK_personel] PRIMARY KEY CLUSTERED 
(
	[personel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persons]    Script Date: 3/10/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persons](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL,
 CONSTRAINT [PK_persons] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[raflar]    Script Date: 3/10/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raflar](
	[raf_id] [int] IDENTITY(1,1) NOT NULL,
	[raf_baslangic_harf] [char](1) NULL,
	[raf_bitis_harf] [char](1) NULL,
 CONSTRAINT [PK_raflar] PRIMARY KEY CLUSTERED 
(
	[raf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 3/10/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[sdudent_no] [char](10) NULL,
	[person_id] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[islemler]  WITH CHECK ADD  CONSTRAINT [FK_islemler_Kitap] FOREIGN KEY([kitap_id])
REFERENCES [dbo].[Kitap] ([kitap_id])
GO
ALTER TABLE [dbo].[islemler] CHECK CONSTRAINT [FK_islemler_Kitap]
GO
ALTER TABLE [dbo].[islemler]  WITH CHECK ADD  CONSTRAINT [FK_islemler_personel] FOREIGN KEY([personel_id])
REFERENCES [dbo].[personel] ([personel_id])
GO
ALTER TABLE [dbo].[islemler] CHECK CONSTRAINT [FK_islemler_personel]
GO
ALTER TABLE [dbo].[islemler]  WITH CHECK ADD  CONSTRAINT [FK_islemler_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([student_id])
GO
ALTER TABLE [dbo].[islemler] CHECK CONSTRAINT [FK_islemler_student]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [FK_Kitap_raflar] FOREIGN KEY([raf_id])
REFERENCES [dbo].[raflar] ([raf_id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [FK_Kitap_raflar]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_personel_persons] FOREIGN KEY([person_id])
REFERENCES [dbo].[persons] ([person_id])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_personel_persons]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_persons] FOREIGN KEY([person_id])
REFERENCES [dbo].[persons] ([person_id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_persons]
GO
