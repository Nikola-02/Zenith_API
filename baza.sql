USE [Zenith]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[Albums]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLogs]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[Files]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileTypes]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_FileTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_MediaTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Playlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistTracks]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[Prices]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Prices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackFiles]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[Tracks]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Tracks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 6/17/2024 1:03:52 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/17/2024 1:03:52 PM ******/
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
	[DeletedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 6/17/2024 1:03:52 PM ******/
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
SET IDENTITY_INSERT [dbo].[Albums] ON 

INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-16T13:43:09.8194182' AS DateTime2), NULL, 1, N'Views', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-16T13:43:22.2665284' AS DateTime2), NULL, 1, N'Lemonade', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-16T13:43:33.7613209' AS DateTime2), NULL, 1, N'Take Care', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (4, CAST(N'2024-06-16T13:44:12.1091026' AS DateTime2), NULL, 1, N'Pluto', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (5, CAST(N'2024-06-16T13:44:45.0677683' AS DateTime2), NULL, 1, N'Thank Me Later', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (6, CAST(N'2024-06-16T13:45:30.9719940' AS DateTime2), NULL, 1, N'Future', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (7, CAST(N'2024-06-16T13:45:38.5910562' AS DateTime2), CAST(N'2024-06-16T14:15:24.1358131' AS DateTime2), 1, N'Beast Mode', NULL)
INSERT [dbo].[Albums] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (8, CAST(N'2024-06-16T14:22:13.8781471' AS DateTime2), CAST(N'2024-06-16T14:22:31.9889961' AS DateTime2), 0, N'Novi', CAST(N'2024-06-16T14:22:31.9878433' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Albums] OFF
GO
SET IDENTITY_INSERT [dbo].[Artists] ON 

INSERT [dbo].[Artists] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-15T18:48:05.8404747' AS DateTime2), NULL, 1, N'Drake', NULL)
INSERT [dbo].[Artists] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-15T18:48:39.1255554' AS DateTime2), NULL, 1, N'Ed Sheeran', NULL)
INSERT [dbo].[Artists] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-15T18:49:02.8421662' AS DateTime2), CAST(N'2024-06-16T16:34:17.5484815' AS DateTime2), 1, N'Beyonce', NULL)
INSERT [dbo].[Artists] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (4, CAST(N'2024-06-15T18:49:58.2981791' AS DateTime2), CAST(N'2024-06-15T22:41:35.5332604' AS DateTime2), 1, N'Linkin Park', NULL)
INSERT [dbo].[Artists] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (5, CAST(N'2024-06-15T22:46:12.4857868' AS DateTime2), CAST(N'2024-06-15T22:46:33.6423083' AS DateTime2), 0, N'Noviii', CAST(N'2024-06-15T22:46:33.6420097' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'0df99783-2e1a-40ac-80f9-1ca7a11c3a39', N'Error mapping types.

Mapping types:
List`1 -> List`1
System.Collections.Generic.List`1[[Zenith_API.Domain.FileType, Zenith_API.Domain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.List`1[[Zenith_API.Application.DTO.FileTypes.FileTypeDTO, Zenith_API.Application, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]', N'   at lambda_method78(Closure, Object, List`1, ResolutionContext)
   at Zenith_API.Implementation.UseCases.Queries.FileTypes.EfGetFileTypesQuery.Execute(FileTypeSearch search) in D:\Asp\Zenith_API\Zenith_API.Implementation\UseCases\Queries\FileTypes\EfGetFileTypesQuery.cs:line 40
   at Zenith_API.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in D:\Asp\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 46
   at Zenith_API.API.Controllers.FileTypesController.Get(FileTypeSearch search, IGetFileTypesQuery query) in D:\Asp\Zenith_API\Zenith_API.API\Controllers\FileTypesController.cs:line 30
   at lambda_method18(Closure, Object, Object[])
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in D:\Asp\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-15T08:53:10.7730691' AS DateTime2))
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

INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-13T22:12:52.8131874' AS DateTime2), NULL, 1, N'image', NULL)
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-13T22:13:27.2566380' AS DateTime2), CAST(N'2024-06-14T07:53:51.2794273' AS DateTime2), 1, N'audio', NULL)
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-15T17:58:06.0127933' AS DateTime2), CAST(N'2024-06-15T17:58:37.7798750' AS DateTime2), 0, N'Novi', CAST(N'2024-06-15T17:58:37.7794414' AS DateTime2))
SET IDENTITY_INSERT [dbo].[FileTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-15T16:55:56.8920259' AS DateTime2), NULL, 1, N'Pop', NULL)
INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-15T16:56:02.4392036' AS DateTime2), NULL, 1, N'Rock', NULL)
INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-15T16:56:19.5803112' AS DateTime2), NULL, 1, N'Classic', NULL)
INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (4, CAST(N'2024-06-15T16:56:49.6213217' AS DateTime2), NULL, 1, N'Country', NULL)
INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (5, CAST(N'2024-06-15T16:56:59.3457053' AS DateTime2), CAST(N'2024-06-15T17:13:42.6488974' AS DateTime2), 1, N'Hip hop', NULL)
INSERT [dbo].[Genres] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (6, CAST(N'2024-06-15T17:49:26.1266241' AS DateTime2), CAST(N'2024-06-15T17:49:52.7394577' AS DateTime2), 0, N'Novi', CAST(N'2024-06-15T17:49:52.7380123' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[MediaTypes] ON 

INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-16T14:48:53.9316899' AS DateTime2), NULL, 1, N'mp3', NULL)
INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-16T14:49:04.9463042' AS DateTime2), CAST(N'2024-06-16T16:33:44.7654016' AS DateTime2), 1, N'wav', NULL)
INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-16T15:43:32.8714875' AS DateTime2), CAST(N'2024-06-16T16:00:00.2988111' AS DateTime2), 0, N'mp4', CAST(N'2024-06-16T16:00:00.2724037' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MediaTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1, N'UserRegistration', N'unauthorized', N'{"Username":"admin","FirstName":"AdminIme","LastName":"AdminPrezime","Email":"admin@gmail.com","Password":"Admin1234"}', CAST(N'2024-06-13T22:01:44.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2, N'Insert File Type', N'admin', N'{"Name":"image"}', CAST(N'2024-06-13T22:12:52.4466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3, N'Insert File Type', N'admin', N'{"Name":"audio"}', CAST(N'2024-06-13T22:13:27.2400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4, N'Update FileType', N'admin', N'{"Id":1,"Name":"imagee"}', CAST(N'2024-06-14T06:31:10.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5, N'Insert File Type', N'admin', N'{"Id":null,"Name":"aloo"}', CAST(N'2024-06-14T06:32:03.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (6, N'Update FileType', N'admin', N'{"Id":10,"Name":"aloo"}', CAST(N'2024-06-14T07:00:30.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (7, N'Update FileType', N'admin', N'{"Id":10,"Name":"aloo"}', CAST(N'2024-06-14T07:00:57.8166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (8, N'Update FileType', N'admin', N'{"Id":10,"Name":""}', CAST(N'2024-06-14T07:28:09.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (9, N'Update FileType', N'admin', N'{"Id":10,"Name":""}', CAST(N'2024-06-14T07:31:54.2800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (10, N'Update FileType', N'admin', N'{"Id":10,"Name":"Okeeeeee"}', CAST(N'2024-06-14T07:32:05.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (11, N'Update FileType', N'admin', N'{"Id":10,"Name":"Okeeeeee"}', CAST(N'2024-06-14T07:32:24.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (12, N'Update FileType', N'admin', N'{"Id":2,"Name":"audiooo"}', CAST(N'2024-06-14T07:53:25.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (13, N'Update FileType', N'admin', N'{"Id":2,"Name":"audio"}', CAST(N'2024-06-14T07:53:51.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (14, N'Delete FileType', N'admin', N'3', CAST(N'2024-06-14T08:02:12.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (15, N'Delete FileType', N'admin', N'3', CAST(N'2024-06-14T08:51:44.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (16, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-14T08:51:55.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (17, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T08:46:30.5266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (18, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T08:53:06.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (19, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T08:53:20.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (20, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T09:12:34.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (21, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T09:13:06.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (22, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T09:14:58.7866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (23, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T09:15:29.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (24, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T09:15:39.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (25, N'Create Genre', N'admin', N'{"Id":null,"Name":""}', CAST(N'2024-06-15T16:55:32.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (26, N'Create Genre', N'admin', N'{"Id":null,"Name":"Pop"}', CAST(N'2024-06-15T16:55:56.7200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (27, N'Create Genre', N'admin', N'{"Id":null,"Name":"Rock"}', CAST(N'2024-06-15T16:56:02.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (28, N'Create Genre', N'admin', N'{"Id":null,"Name":"Classic"}', CAST(N'2024-06-15T16:56:19.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (29, N'Create Genre', N'admin', N'{"Id":null,"Name":"Country"}', CAST(N'2024-06-15T16:56:49.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (30, N'Create Genre', N'admin', N'{"Id":null,"Name":"Hip hop"}', CAST(N'2024-06-15T16:56:59.3433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (31, N'Update Genre', N'admin', N'{"Id":5,"Name":"Hip hopp"}', CAST(N'2024-06-15T17:13:27.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (32, N'Update Genre', N'admin', N'{"Id":5,"Name":"Hip hop"}', CAST(N'2024-06-15T17:13:42.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (33, N'Create Genre', N'admin', N'{"Id":null,"Name":"Novi"}', CAST(N'2024-06-15T17:49:25.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (34, N'Delete Genre', N'admin', N'6', CAST(N'2024-06-15T17:49:52.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (35, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:49:58.4100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (36, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:51:16.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (37, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:52:28.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (38, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:54:19.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (39, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:54:37.7366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (40, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:54:42.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (41, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:55:38.9500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (42, N'Search Genres', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:56:59.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (43, N'Insert File Type', N'admin', N'{"Id":null,"Name":"Novi"}', CAST(N'2024-06-15T17:58:05.8533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (44, N'Insert File Type', N'admin', N'{"Id":null,"Name":"Novi"}', CAST(N'2024-06-15T17:58:18.0166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (45, N'Delete FileType', N'admin', N'3', CAST(N'2024-06-15T17:58:37.7566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (46, N'Search FileTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T17:58:50.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (47, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T18:38:28.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (48, N'Create Artist', N'admin', N'{"Id":null,"Name":"Drake"}', CAST(N'2024-06-15T18:48:05.5866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (49, N'Create Artist', N'admin', N'{"Id":null,"Name":"Ed Sheeran"}', CAST(N'2024-06-15T18:48:39.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (50, N'Create Artist', N'admin', N'{"Id":null,"Name":"Beyonce"}', CAST(N'2024-06-15T18:49:02.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (51, N'Create Artist', N'admin', N'{"Id":null,"Name":"Linkin Park"}', CAST(N'2024-06-15T18:49:58.2700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (52, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T18:50:08.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (53, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T22:41:06.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (54, N'Update Artist', N'admin', N'{"Id":4,"Name":"Linkin Parkkkk"}', CAST(N'2024-06-15T22:41:22.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (55, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T22:41:27.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (56, N'Update Artist', N'admin', N'{"Id":4,"Name":"Linkin Park"}', CAST(N'2024-06-15T22:41:35.5033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (57, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T22:41:39.7366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (58, N'Create Artist', N'admin', N'{"Id":null,"Name":"Noviii"}', CAST(N'2024-06-15T22:46:12.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (59, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T22:46:16.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (60, N'Delete Artist', N'admin', N'5', CAST(N'2024-06-15T22:46:33.6333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (61, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-15T22:46:37.8466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (62, N'Get Albums', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-16T13:32:41.0700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (63, N'Create Album', N'admin', N'{"Id":null,"Name":"Views"}', CAST(N'2024-06-16T13:43:09.5933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (64, N'Create Album', N'admin', N'{"Id":null,"Name":"Lemonade"}', CAST(N'2024-06-16T13:43:22.2066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (65, N'Create Album', N'admin', N'{"Id":null,"Name":"Take Care"}', CAST(N'2024-06-16T13:43:33.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (66, N'Create Album', N'admin', N'{"Id":null,"Name":"Pluto"}', CAST(N'2024-06-16T13:44:12.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (67, N'Create Album', N'admin', N'{"Id":null,"Name":"Thank Me Later"}', CAST(N'2024-06-16T13:44:45.0600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (68, N'Create Album', N'admin', N'{"Id":null,"Name":"Future"}', CAST(N'2024-06-16T13:45:30.9633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (69, N'Create Album', N'admin', N'{"Id":null,"Name":"Beast Mode"}', CAST(N'2024-06-16T13:45:38.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (70, N'Get Albums', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-16T13:45:52.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (71, N'Update Album', N'admin', N'{"Id":7,"Name":"Beast Mode"}', CAST(N'2024-06-16T14:11:09.2833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (72, N'Update Album', N'admin', N'{"Id":7,"Name":"Beast Modeeee"}', CAST(N'2024-06-16T14:15:12.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (73, N'Update Album', N'admin', N'{"Id":7,"Name":"Beast Mode"}', CAST(N'2024-06-16T14:15:24.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (74, N'Create Album', N'admin', N'{"Id":null,"Name":"Novi"}', CAST(N'2024-06-16T14:22:13.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (75, N'Delete Album', N'admin', N'8', CAST(N'2024-06-16T14:22:31.8533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (76, N'Get Albums', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-16T14:31:50.7966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (77, N'Create MediaType', N'admin', N'{"Id":null,"Name":"mp3"}', CAST(N'2024-06-16T14:48:53.7066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (78, N'Create MediaType', N'admin', N'{"Id":null,"Name":"wav"}', CAST(N'2024-06-16T14:49:04.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (79, N'Search MediaTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-16T14:49:08.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (80, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wav"}', CAST(N'2024-06-16T15:42:56.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (81, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wavv"}', CAST(N'2024-06-16T15:43:14.1933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (82, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wav"}', CAST(N'2024-06-16T15:43:20.2966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (83, N'Search MediaTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-16T15:43:25.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (84, N'Create MediaType', N'admin', N'{"Id":null,"Name":"mp4"}', CAST(N'2024-06-16T15:43:32.8333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (85, N'Delete MediaType', N'admin', N'3', CAST(N'2024-06-16T16:00:00.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (86, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wav"}', CAST(N'2024-06-16T16:32:44.0266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (87, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wavg"}', CAST(N'2024-06-16T16:33:23.5933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (88, N'Update MediaType', N'admin', N'{"Id":2,"Name":"wav"}', CAST(N'2024-06-16T16:33:44.7600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (89, N'Update Artist', N'admin', N'{"Id":3,"Name":"Beyonce"}', CAST(N'2024-06-16T16:34:05.4066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (90, N'Update Artist', N'admin', N'{"Id":3,"Name":"Beyoncee"}', CAST(N'2024-06-16T16:34:11.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (91, N'Update Artist', N'admin', N'{"Id":3,"Name":"Beyonce"}', CAST(N'2024-06-16T16:34:17.5466667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, N'admin@gmail.com', N'admin', N'AdminIme', N'AdminPrezime', N'$2a$10$e3o060gixl2/nlDl4tcHsO5DEhTKdEN.J5ReK0yaWbEYRBJD2rN9i', CAST(N'2024-06-13T22:01:47.6295723' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 2)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 4)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 5)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 6)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 7)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 8)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 9)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 10)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 11)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 12)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 13)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 14)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 15)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 16)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 17)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 18)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 19)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 20)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 21)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 22)
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
/****** Object:  StoredProcedure [dbo].[AddUseCaseLog]    Script Date: 6/17/2024 1:03:52 PM ******/
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
