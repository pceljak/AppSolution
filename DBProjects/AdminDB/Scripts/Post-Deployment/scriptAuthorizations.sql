SET IDENTITY_INSERT [dbo].[Authorizations] ON 

INSERT [dbo].[Authorizations] ([AuthorizationId], [AuthorizationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (1, N'Read', N'admin', CAST(N'2022-09-04T13:55:14.840' AS DateTime), NULL, NULL)
INSERT [dbo].[Authorizations] ([AuthorizationId], [AuthorizationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (2, N'Write', N'admin', CAST(N'2022-09-04T13:55:14.840' AS DateTime), NULL, NULL)
INSERT [dbo].[Authorizations] ([AuthorizationId], [AuthorizationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (3, N'Save', N'admin', CAST(N'2022-09-04T13:55:14.840' AS DateTime), NULL, NULL)
INSERT [dbo].[Authorizations] ([AuthorizationId], [AuthorizationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (4, N'Open', N'admin', CAST(N'2022-09-04T13:55:14.840' AS DateTime), NULL, NULL)
INSERT [dbo].[Authorizations] ([AuthorizationId], [AuthorizationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (5, N'Delete', N'admin', CAST(N'2022-09-04T13:55:14.840' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Authorizations] OFF
GO