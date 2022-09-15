SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([GenderId], [GenderShort], [GenderTitle], [Description], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (1, N'M', N'Male', N'', N'admin', CAST(N'2022-09-05T01:18:24.337' AS DateTime), NULL, NULL)
INSERT [dbo].[Genders] ([GenderId], [GenderShort], [GenderTitle], [Description], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (2, N'F', N'Female', N'', N'admin', CAST(N'2022-09-05T01:18:24.337' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO