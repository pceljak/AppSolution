
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (1, N'Admin', N'admin', CAST(N'2022-09-04T13:53:50.787' AS DateTime), NULL, NULL)
INSERT [dbo].[Roles] ([RoleId], [RoleTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (2, N'Reader', N'admin', CAST(N'2022-09-04T13:53:50.787' AS DateTime), NULL, NULL)
INSERT [dbo].[Roles] ([RoleId], [RoleTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (3, N'Writer', N'admin', CAST(N'2022-09-04T13:53:50.787' AS DateTime), NULL, NULL)
INSERT [dbo].[Roles] ([RoleId], [RoleTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (4, N'Guest', N'admin', CAST(N'2022-09-04T13:53:50.787' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO