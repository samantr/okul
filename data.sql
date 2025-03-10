delete from islemler;
delete from student;
delete from personel;
delete from persons;
delete from kitap;
delete from raflar;
go
SET IDENTITY_INSERT [dbo].[persons] ON 
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (1, N'ahmet', N'yilmaz')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (2, N'mehmet', N'ali')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (3, N'zehra', N'anil')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (4, N'Yildiz', N'Tilbe')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (5, N'Haluk', N'Levent')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (6, N'aaa', N'aaa')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (7, N'bbb', N'bbb')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (8, N'ccc', N'ccc')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (9, N'ddd', N'ddd')
GO
INSERT [dbo].[persons] ([person_id], [ad], [soyad]) VALUES (10, N'eee', N'eee')
GO
SET IDENTITY_INSERT [dbo].[persons] OFF
GO
SET IDENTITY_INSERT [dbo].[student] ON 
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (1, N'1111111111', 1)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (3, N'2222222222', 3)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (5, N'111       ', 2)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (6, N'222       ', 6)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (7, N'333       ', 7)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (8, N'444       ', 8)
GO
INSERT [dbo].[student] ([student_id], [sdudent_no], [person_id]) VALUES (9, N'555       ', 9)
GO
SET IDENTITY_INSERT [dbo].[student] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 
GO
INSERT [dbo].[personel] ([personel_id], [personel_no], [person_id]) VALUES (2, 123, 1)
GO
INSERT [dbo].[personel] ([personel_id], [personel_no], [person_id]) VALUES (5, 555, 2)
GO
INSERT [dbo].[personel] ([personel_id], [personel_no], [person_id]) VALUES (6, 27578, 5)
GO
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[raflar] ON 
GO
INSERT [dbo].[raflar] ([raf_id], [raf_baslangic_harf], [raf_bitis_harf]) VALUES (1, N'a', N'c')
GO
INSERT [dbo].[raflar] ([raf_id], [raf_baslangic_harf], [raf_bitis_harf]) VALUES (2, N'd', N'f')
GO
INSERT [dbo].[raflar] ([raf_id], [raf_baslangic_harf], [raf_bitis_harf]) VALUES (3, N'g', N'i')
GO
INSERT [dbo].[raflar] ([raf_id], [raf_baslangic_harf], [raf_bitis_harf]) VALUES (4, N'j', N'm')
GO
SET IDENTITY_INSERT [dbo].[raflar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 
GO
INSERT [dbo].[Kitap] ([kitap_id], [ad], [yazar], [isbn], [publisher], [raf_id]) VALUES (1, N'africa tarihi', N'abc', 123, N'abc', 1)
GO
INSERT [dbo].[Kitap] ([kitap_id], [ad], [yazar], [isbn], [publisher], [raf_id]) VALUES (2, N'beyaz kaplan', N'abc', 321, N'abc', 1)
GO
INSERT [dbo].[Kitap] ([kitap_id], [ad], [yazar], [isbn], [publisher], [raf_id]) VALUES (3, N'danismanlik teorisi', N'mehmet kenan', 999, N'bbb', 2)
GO
INSERT [dbo].[Kitap] ([kitap_id], [ad], [yazar], [isbn], [publisher], [raf_id]) VALUES (4, N'Muhendislik', N'Can celik', 123456, N'Esenyurt', 4)
GO
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
