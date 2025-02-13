USE [hospital]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 15.04.2024 9:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FSP] [nvarchar](max) NOT NULL,
	[Proffecion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[food] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kayko_mesto]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kayko_mesto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number_mesto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kayko_mesto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lekarstva]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lekarstva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Count] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lekarstva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical_procedures]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical_procedures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[medical_proceduress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Medical_procedures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FSP] [nvarchar](50) NOT NULL,
	[Birthday] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[address] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[IdPatient] [int] NOT NULL,
	[IdMedicalProcedures] [int] NOT NULL,
	[IdKoykoMesto] [int] NOT NULL,
	[IdLekarstva] [int] NOT NULL,
	[IdFood] [int] NOT NULL,
	[Data] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15.04.2024 9:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([Id], [FSP], [Proffecion]) VALUES (1, N'Ковалев Дмитрий Алексеевич', N'Терапевт')
INSERT [dbo].[Doctor] ([Id], [FSP], [Proffecion]) VALUES (2, N'Федорчук Максим Александрович', N'Уролог')
INSERT [dbo].[Doctor] ([Id], [FSP], [Proffecion]) VALUES (3, N'Крылов Никита Александрович', N'Педиатор')
INSERT [dbo].[Doctor] ([Id], [FSP], [Proffecion]) VALUES (4, N'Гудкова Анастасия Андреевна', N'Гинеколог')
INSERT [dbo].[Doctor] ([Id], [FSP], [Proffecion]) VALUES (5, N'Архипова Мария Александровна', N'Нарколог')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([Id], [food]) VALUES (1, N'Макароны')
INSERT [dbo].[Food] ([Id], [food]) VALUES (2, N'Гречка')
INSERT [dbo].[Food] ([Id], [food]) VALUES (3, N'Рис')
INSERT [dbo].[Food] ([Id], [food]) VALUES (4, N'Борщ')
INSERT [dbo].[Food] ([Id], [food]) VALUES (5, N'Щи')
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Kayko_mesto] ON 

INSERT [dbo].[Kayko_mesto] ([Id], [Number_mesto]) VALUES (1, N'26')
INSERT [dbo].[Kayko_mesto] ([Id], [Number_mesto]) VALUES (2, N'30')
INSERT [dbo].[Kayko_mesto] ([Id], [Number_mesto]) VALUES (3, N'11')
INSERT [dbo].[Kayko_mesto] ([Id], [Number_mesto]) VALUES (4, N'15')
INSERT [dbo].[Kayko_mesto] ([Id], [Number_mesto]) VALUES (5, N'64')
SET IDENTITY_INSERT [dbo].[Kayko_mesto] OFF
GO
SET IDENTITY_INSERT [dbo].[Lekarstva] ON 

INSERT [dbo].[Lekarstva] ([Id], [Name], [Count]) VALUES (1, N'Асперин', N'10')
INSERT [dbo].[Lekarstva] ([Id], [Name], [Count]) VALUES (3, N'Процитомол', N'3')
INSERT [dbo].[Lekarstva] ([Id], [Name], [Count]) VALUES (4, N'Анальгин', N'5')
INSERT [dbo].[Lekarstva] ([Id], [Name], [Count]) VALUES (5, N'Обезбол', N'8')
INSERT [dbo].[Lekarstva] ([Id], [Name], [Count]) VALUES (6, N'Нексилюген', N'17')
SET IDENTITY_INSERT [dbo].[Lekarstva] OFF
GO
SET IDENTITY_INSERT [dbo].[Medical_procedures] ON 

INSERT [dbo].[Medical_procedures] ([Id], [medical_proceduress]) VALUES (1, N'Промывание')
INSERT [dbo].[Medical_procedures] ([Id], [medical_proceduress]) VALUES (2, N'Масссаж')
INSERT [dbo].[Medical_procedures] ([Id], [medical_proceduress]) VALUES (3, N'Капельница')
INSERT [dbo].[Medical_procedures] ([Id], [medical_proceduress]) VALUES (4, N'Укол')
INSERT [dbo].[Medical_procedures] ([Id], [medical_proceduress]) VALUES (5, N'Дыхание')
SET IDENTITY_INSERT [dbo].[Medical_procedures] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([Id], [FSP], [Birthday], [Phone], [address]) VALUES (1, N'Марушкин Кирилл Денисович', N'03.09.2004', N'89524715031', N'Ленина 72')
INSERT [dbo].[Patient] ([Id], [FSP], [Birthday], [Phone], [address]) VALUES (5, N'Голубева Татьяна Александрован', N'25.02.2004', N'88005553535', N'Держинского 57')
INSERT [dbo].[Patient] ([Id], [FSP], [Birthday], [Phone], [address]) VALUES (8, N'Каликанов Ярослав Дмитриевич', N'20.11.2004', N'89506220344', N'Державина 50')
INSERT [dbo].[Patient] ([Id], [FSP], [Birthday], [Phone], [address]) VALUES (10, N'Захаров Виктор Алксандрович', N'14.06.2004', N'89534455677', N'Западная 35')
INSERT [dbo].[Patient] ([Id], [FSP], [Birthday], [Phone], [address]) VALUES (12, N'Перевезнцев Владимер Павлович', N'15.03.2004', N'895237612054', N'Новая 21')
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([Id], [IdDoctor], [IdPatient], [IdMedicalProcedures], [IdKoykoMesto], [IdLekarstva], [IdFood], [Data]) VALUES (16, 1, 5, 2, 4, 4, 2, N'15.04.2024')
INSERT [dbo].[Report] ([Id], [IdDoctor], [IdPatient], [IdMedicalProcedures], [IdKoykoMesto], [IdLekarstva], [IdFood], [Data]) VALUES (17, 4, 1, 5, 2, 5, 1, N'13.03.2024')
INSERT [dbo].[Report] ([Id], [IdDoctor], [IdPatient], [IdMedicalProcedures], [IdKoykoMesto], [IdLekarstva], [IdFood], [Data]) VALUES (20, 2, 10, 1, 1, 6, 5, N'20.02.2024')
INSERT [dbo].[Report] ([Id], [IdDoctor], [IdPatient], [IdMedicalProcedures], [IdKoykoMesto], [IdLekarstva], [IdFood], [Data]) VALUES (22, 5, 12, 3, 5, 1, 3, N'10.04.2024')
INSERT [dbo].[Report] ([Id], [IdDoctor], [IdPatient], [IdMedicalProcedures], [IdKoykoMesto], [IdLekarstva], [IdFood], [Data]) VALUES (23, 3, 8, 4, 4, 3, 4, N'05.04.2024')
SET IDENTITY_INSERT [dbo].[Report] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password]) VALUES (1, N'222', N'222')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Doctor]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Food] FOREIGN KEY([IdFood])
REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Food]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Kayko_mesto] FOREIGN KEY([IdKoykoMesto])
REFERENCES [dbo].[Kayko_mesto] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Kayko_mesto]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Lekarstva] FOREIGN KEY([IdLekarstva])
REFERENCES [dbo].[Lekarstva] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Lekarstva]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Medical_procedures] FOREIGN KEY([IdMedicalProcedures])
REFERENCES [dbo].[Medical_procedures] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Medical_procedures]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Patient] FOREIGN KEY([IdPatient])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Patient]
GO
