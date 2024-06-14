USE [Zenith]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/14/2024 9:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLogs]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLogs](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[StrackTrace] [nvarchar](max) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ErrorLogs] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](50) NOT NULL,
	[FileTypeId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileTypes]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_FileTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[UserId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_MediaTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Playlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistTracks]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistTracks](
	[PlaylistId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
 CONSTRAINT [PK_PlaylistTracks] PRIMARY KEY CLUSTERED 
(
	[PlaylistId] ASC,
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[TrackId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Prices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackFiles]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackFiles](
	[TrackId] [int] NOT NULL,
	[FileId] [int] NOT NULL,
 CONSTRAINT [PK_TrackFiles] PRIMARY KEY CLUSTERED 
(
	[TrackId] ASC,
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracks]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Duration] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
	[GenreId] [int] NOT NULL,
	[MediaTypeId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Tracks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UseCaseName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[UseCaseData] [nvarchar](max) NULL,
	[ExecutedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Username] [nvarchar](30) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](120) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUseCases](
	[UserId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UserUseCases] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[UseCaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240613215940_Initial_Commit', N'8.0.6')
GO
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'8d469448-6e1b-4b57-8a0b-f1abaccd4b13', N'Object reference not set to an instance of an object.', N'   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.FileTypes.EfUpdateFileTypeCommand.Execute(LookupTablesInsertUpdateDTO data)
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data)
   at Zenith_API.API.Controllers.FileTypesController.Put(Int32 id, LookupTablesInsertUpdateDTO dto, IUpdateFileTypeCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\FileTypesController.cs:line 46
   at lambda_method45(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-14T07:28:29.7402069' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[FileTypes] ON 

INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-13T22:12:52.8131874' AS DateTime2), NULL, 1, N'image')
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, CAST(N'2024-06-13T22:13:27.2566380' AS DateTime2), CAST(N'2024-06-14T07:53:51.2794273' AS DateTime2), 1, N'audio')
SET IDENTITY_INSERT [dbo].[FileTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (14, N'Delete FileType', N'admin', N'3', CAST(N'2024-06-14T08:02:12.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (15, N'Delete FileType', N'admin', N'3', CAST(N'2024-06-14T08:51:44.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2, N'Insert File Type', N'admin', N'{"Name":"image"}', CAST(N'2024-06-13T22:12:52.4466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3, N'Insert File Type', N'admin', N'{"Name":"audio"}', CAST(N'2024-06-13T22:13:27.2400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5, N'Insert File Type', N'admin', N'{"Id":null,"Name":"aloo"}', CAST(N'2024-06-14T06:32:03.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (16, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-14T08:51:55.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4, N'Update FileType', N'admin', N'{"Id":1,"Name":"imagee"}', CAST(N'2024-06-14T06:31:10.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (6, N'Update FileType', N'admin', N'{"Id":10,"Name":"aloo"}', CAST(N'2024-06-14T07:00:30.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (7, N'Update FileType', N'admin', N'{"Id":10,"Name":"aloo"}', CAST(N'2024-06-14T07:00:57.8166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (8, N'Update FileType', N'admin', N'{"Id":10,"Name":""}', CAST(N'2024-06-14T07:28:09.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (9, N'Update FileType', N'admin', N'{"Id":10,"Name":""}', CAST(N'2024-06-14T07:31:54.2800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (10, N'Update FileType', N'admin', N'{"Id":10,"Name":"Okeeeeee"}', CAST(N'2024-06-14T07:32:05.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (11, N'Update FileType', N'admin', N'{"Id":10,"Name":"Okeeeeee"}', CAST(N'2024-06-14T07:32:24.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (12, N'Update FileType', N'admin', N'{"Id":2,"Name":"audiooo"}', CAST(N'2024-06-14T07:53:25.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (13, N'Update FileType', N'admin', N'{"Id":2,"Name":"audio"}', CAST(N'2024-06-14T07:53:51.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1, N'UserRegistration', N'unauthorized', N'{"Username":"admin","FirstName":"AdminIme","LastName":"AdminPrezime","Email":"admin@gmail.com","Password":"Admin1234"}', CAST(N'2024-06-13T22:01:44.9800000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, N'admin@gmail.com', N'admin', N'AdminIme', N'AdminPrezime', N'$2a$10$e3o060gixl2/nlDl4tcHsO5DEhTKdEN.J5ReK0yaWbEYRBJD2rN9i', CAST(N'2024-06-13T22:01:47.6295723' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 2)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 4)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 5)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 6)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 7)
GO
ALTER TABLE [dbo].[Albums] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Albums] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Artists] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Artists] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Files] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Files] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[FileTypes] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[FileTypes] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Genres] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Genres] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Playlists] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Playlists] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Prices] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Prices] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tracks] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Tracks] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_FileTypes_FileTypeId] FOREIGN KEY([FileTypeId])
REFERENCES [dbo].[FileTypes] ([Id])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_FileTypes_FileTypeId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Tracks_TrackId] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Tracks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Tracks_TrackId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Users_UserId]
GO
ALTER TABLE [dbo].[Playlists]  WITH CHECK ADD  CONSTRAINT [FK_Playlists_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Playlists] CHECK CONSTRAINT [FK_Playlists_Users_UserId]
GO
ALTER TABLE [dbo].[PlaylistTracks]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistTracks_Playlists_PlaylistId] FOREIGN KEY([PlaylistId])
REFERENCES [dbo].[Playlists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlaylistTracks] CHECK CONSTRAINT [FK_PlaylistTracks_Playlists_PlaylistId]
GO
ALTER TABLE [dbo].[PlaylistTracks]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistTracks_Tracks_TrackId] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Tracks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlaylistTracks] CHECK CONSTRAINT [FK_PlaylistTracks_Tracks_TrackId]
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD  CONSTRAINT [FK_Prices_Tracks_TrackId] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Tracks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prices] CHECK CONSTRAINT [FK_Prices_Tracks_TrackId]
GO
ALTER TABLE [dbo].[TrackFiles]  WITH CHECK ADD  CONSTRAINT [FK_TrackFiles_Files_FileId] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrackFiles] CHECK CONSTRAINT [FK_TrackFiles_Files_FileId]
GO
ALTER TABLE [dbo].[TrackFiles]  WITH CHECK ADD  CONSTRAINT [FK_TrackFiles_Tracks_TrackId] FOREIGN KEY([TrackId])
REFERENCES [dbo].[Tracks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrackFiles] CHECK CONSTRAINT [FK_TrackFiles_Tracks_TrackId]
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD  CONSTRAINT [FK_Tracks_Albums_AlbumId] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([Id])
GO
ALTER TABLE [dbo].[Tracks] CHECK CONSTRAINT [FK_Tracks_Albums_AlbumId]
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD  CONSTRAINT [FK_Tracks_Artists_ArtistId] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists] ([Id])
GO
ALTER TABLE [dbo].[Tracks] CHECK CONSTRAINT [FK_Tracks_Artists_ArtistId]
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD  CONSTRAINT [FK_Tracks_Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Tracks] CHECK CONSTRAINT [FK_Tracks_Genres_GenreId]
GO
ALTER TABLE [dbo].[Tracks]  WITH CHECK ADD  CONSTRAINT [FK_Tracks_MediaTypes_MediaTypeId] FOREIGN KEY([MediaTypeId])
REFERENCES [dbo].[MediaTypes] ([Id])
GO
ALTER TABLE [dbo].[Tracks] CHECK CONSTRAINT [FK_Tracks_MediaTypes_MediaTypeId]
GO
ALTER TABLE [dbo].[UserUseCases]  WITH CHECK ADD  CONSTRAINT [FK_UserUseCases_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserUseCases] CHECK CONSTRAINT [FK_UserUseCases_Users_UserId]
GO
/****** Object:  StoredProcedure [dbo].[AddUseCaseLog]    Script Date: 6/14/2024 9:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[AddUseCaseLog] @UseCaseName nvarchar(50), @Username nvarchar(20), @Data nvarchar(MAX), @ExecutedAt Datetime
as begin
	insert into UseCaseLogs (UseCaseName, Username, UseCaseData, ExecutedAt) 
	VALUES (@useCaseName,@username, @data, @executedAt)
end
GO
