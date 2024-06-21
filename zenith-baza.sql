USE [Zenith]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/21/2024 3:35:44 PM ******/
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
/****** Object:  Table [dbo].[Albums]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Artists]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[ErrorLogs]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Files]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[FileTypes]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Genres]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Likes]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Playlists]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[PlaylistTracks]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Prices]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[TrackFiles]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Tracks]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/21/2024 3:35:45 PM ******/
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
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 6/21/2024 3:35:45 PM ******/
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
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'b2a06d9a-5b17-4740-b79b-11b064f68eeb', N'Could not find a part of the path.', N'   at System.IO.FileSystem.MoveFile(String sourceFullPath, String destFullPath, Boolean overwrite)
   at Zenith_API.Implementation.Utilities.FileHelper.MoveFile(String sourceFolder, String destinationFolder, String fileName) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\Utilities\FileHelper.cs:line 19
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 34
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:23:25.9537689' AS DateTime2))
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
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'7aa385f7-09e2-41e1-a164-31e7f89eb41d', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:04:51.6878133' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'a7920ae1-523a-4d7e-b8c6-41108e3776e8', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfUpdateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfUpdateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Put(Int32 id, TrackInsertUpdateDTO dto, IUpdateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 55
   at lambda_method125(Closure, Object, Object[])
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T21:56:47.4021450' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'0216a816-eea3-4fa8-a926-4f4fa710f3bf', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:00:45.2744342' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'94a05766-8a63-46de-bb61-549730273bbf', N'Could not find file ''C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\wwwroot\temp''.', N'   at System.IO.File.Move(String sourceFileName, String destFileName, Boolean overwrite)
   at Zenith_API.Implementation.Utilities.FileHelper.MoveFile(String sourceFolder, String destinationFolder, String fileName)
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfUpdateTrackCommand.Execute(TrackInsertUpdateDTO data)
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data)
   at Zenith_API.API.Controllers.TracksController.Put(Int32 id, TrackInsertUpdateDTO dto, IUpdateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 55
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T22:18:53.3400437' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'40174a10-4347-4747-8a74-689c04e00e75', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:04:59.8036019' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'741b7054-dd0d-48f1-93cc-68a382cc033d', N'Unexpected end of request content.', N'   at Microsoft.AspNetCore.Server.Kestrel.Core.Internal.Http.Http1ContentLengthMessageBody.ReadAsyncInternal(CancellationToken cancellationToken)
   at System.Runtime.CompilerServices.PoolingAsyncValueTaskMethodBuilder`1.StateMachineBox`1.System.Threading.Tasks.Sources.IValueTaskSource<TResult>.GetResult(Int16 token)
   at Microsoft.AspNetCore.Server.Kestrel.Core.Internal.Http.HttpRequestStream.ReadAsyncInternal(Memory`1 destination, CancellationToken cancellationToken)
   at System.Runtime.CompilerServices.PoolingAsyncValueTaskMethodBuilder`1.StateMachineBox`1.System.Threading.Tasks.Sources.IValueTaskSource<TResult>.GetResult(Int16 token)
   at System.Text.Json.Serialization.ReadBufferState.ReadFromStreamAsync(Stream utf8Json, CancellationToken cancellationToken, Boolean fillBuffer)
   at System.Text.Json.Serialization.Metadata.JsonTypeInfo`1.DeserializeAsync(Stream utf8Json, CancellationToken cancellationToken)
   at System.Text.Json.Serialization.Metadata.JsonTypeInfo`1.DeserializeAsObjectAsync(Stream utf8Json, CancellationToken cancellationToken)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonInputFormatter.ReadRequestBodyAsync(InputFormatterContext context, Encoding encoding)
   at Microsoft.AspNetCore.Mvc.Formatters.SystemTextJsonInputFormatter.ReadRequestBodyAsync(InputFormatterContext context, Encoding encoding)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.BodyModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:00:45.2177963' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'e2d3d2ea-4919-4734-b515-73edf55728bf', N'No service for type ''Zenith_API.Application.UseCases.Commands.Tracks.IUpdateTrackCommand'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.ServicesModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T21:43:22.3533895' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'ca04db7b-a234-4c9a-ae61-795893f3f335', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfUpdateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfUpdateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Put(Int32 id, TrackInsertUpdateDTO dto, IUpdateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 55
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T21:54:46.4496594' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'9c8a5cca-6fbd-4c9c-b16a-8014cfb08af5', N'Endpoint Zenith_API.API.Controllers.UsersController.Post (Zenith_API.API) contains CORS metadata, but a middleware was not found that supports CORS.
Configure your application startup by adding app.UseCors() in the application startup code. If there are calls to app.UseRouting() and app.UseEndpoints(...), the call to app.UseCors() must go between them.', N'   at Microsoft.AspNetCore.Routing.EndpointMiddleware.ThrowMissingCorsMiddlewareException(Endpoint endpoint)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in D:\Asp\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-20T19:25:39.4660285' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'3cb0ff58-dabd-4d28-85c6-943a216e746f', N'Endpoint Zenith_API.API.Controllers.UsersController.Post (Zenith_API.API) contains CORS metadata, but a middleware was not found that supports CORS.
Configure your application startup by adding app.UseCors() in the application startup code. If there are calls to app.UseRouting() and app.UseEndpoints(...), the call to app.UseCors() must go between them.', N'   at Microsoft.AspNetCore.Routing.EndpointMiddleware.ThrowMissingCorsMiddlewareException(Endpoint endpoint)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in D:\Asp\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-20T19:26:12.6214840' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'b3ff8c62-29e6-4f78-9f91-9b832c2e969e', N'Endpoint Zenith_API.API.Controllers.UsersController.Post (Zenith_API.API) contains CORS metadata, but a middleware was not found that supports CORS.
Configure your application startup by adding app.UseCors() in the application startup code. If there are calls to app.UseRouting() and app.UseEndpoints(...), the call to app.UseCors() must go between them.', N'   at Microsoft.AspNetCore.Routing.EndpointMiddleware.ThrowMissingCorsMiddlewareException(Endpoint endpoint)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in D:\Asp\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-20T19:20:17.5769142' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'bd851067-4227-4b22-991c-daf8e6587a47', N'NullReferenceException occurred when executing rule for x => x.TrackFiles.ImagePath. If this property can be null you should add a null check using a When condition', N'   at FluentValidation.Internal.PropertyRule`2.ValidateAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/Internal/PropertyRule.cs:line 152
   at FluentValidation.AbstractValidator`1.ValidateInternalAsync(ValidationContext`1 context, Boolean useAsync, CancellationToken cancellation) in /_/src/FluentValidation/AbstractValidator.cs:line 246
   at FluentValidation.AbstractValidator`1.Validate(ValidationContext`1 context) in /_/src/FluentValidation/AbstractValidator.cs:line 202
   at FluentValidation.AbstractValidator`1.FluentValidation.IValidator.Validate(IValidationContext context) in /_/src/FluentValidation/AbstractValidator.cs:line 153
   at FluentValidation.DefaultValidatorExtensions.Validate[T](IValidator`1 validator, T instance, Action`1 options) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 38
   at FluentValidation.DefaultValidatorExtensions.ValidateAndThrow[T](IValidator`1 validator, T instance) in /_/src/FluentValidation/DefaultValidatorExtensions_Validate.cs:line 59
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 32
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:00:45.2743784' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'11bfe349-7c9b-412a-af81-e8b7283a28aa', N'Could not find a part of the path.', N'   at System.IO.FileSystem.MoveFile(String sourceFullPath, String destFullPath, Boolean overwrite)
   at Zenith_API.Implementation.Utilities.FileHelper.MoveFile(String sourceFolder, String destinationFolder, String fileName) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\Utilities\FileHelper.cs:line 19
   at Zenith_API.Implementation.UseCases.Commands.Tracks.EfCreateTrackCommand.Execute(TrackInsertUpdateDTO data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCases\Commands\Tracks\EfCreateTrackCommand.cs:line 34
   at Zenith_API.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.Implementation\UseCaseHandler.cs:line 31
   at Zenith_API.API.Controllers.TracksController.Post(TrackInsertUpdateDTO dto, ICreateTrackCommand command) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Controllers\TracksController.cs:line 44
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
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\Nikola\Desktop\ASP\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-17T20:08:47.7983028' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'c5a94a1b-1442-4108-94ef-e91d280caa7c', N'Endpoint Zenith_API.API.Controllers.UsersController.Post (Zenith_API.API) contains CORS metadata, but a middleware was not found that supports CORS.
Configure your application startup by adding app.UseCors() in the application startup code. If there are calls to app.UseRouting() and app.UseEndpoints(...), the call to app.UseCors() must go between them.', N'   at Microsoft.AspNetCore.Routing.EndpointMiddleware.ThrowMissingCorsMiddlewareException(Endpoint endpoint)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Zenith_API.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in D:\Asp\Zenith_API\Zenith_API.API\Core\GlobalExceptionHandlingMiddleware.cs:line 25', CAST(N'2024-06-20T19:19:55.8877530' AS DateTime2))
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
SET IDENTITY_INSERT [dbo].[Files] ON 

INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, N'c45c67fd-72e5-4399-b665-cb9e831be310.jpg', 1, CAST(N'2024-06-17T20:32:22.7066856' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (2, N'30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3', 2, CAST(N'2024-06-17T20:32:22.7066863' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (3, N'0dee1327-a901-455d-a4e4-86d1cdab1c50.jpg', 1, CAST(N'2024-06-17T20:50:14.3470037' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (4, N'dcae786a-3ae3-4173-8fad-48418a2f03f4.mp3', 2, CAST(N'2024-06-17T20:50:14.3470043' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (5, N'99e1bf73-8050-4fea-88d1-61114e76bdec.jpg', 1, CAST(N'2024-06-18T19:47:25.2900009' AS DateTime2), CAST(N'2024-06-18T19:55:58.7258408' AS DateTime2), 0, CAST(N'2024-06-18T19:55:58.7120296' AS DateTime2))
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (6, N'243a6541-b9d7-499b-896e-627c81dbe141.mp3', 2, CAST(N'2024-06-18T19:47:25.2900016' AS DateTime2), CAST(N'2024-06-18T19:55:58.7258410' AS DateTime2), 0, CAST(N'2024-06-18T19:55:58.7120299' AS DateTime2))
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (7, N'012bc64c-f94a-4910-ae0d-7c93d9094c3e.jpg', 1, CAST(N'2024-06-19T10:43:16.9769248' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (8, N'8dbba3ee-f6f6-479f-a6e6-1934e55b128f.mp3', 2, CAST(N'2024-06-19T10:43:16.9769271' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (9, N'df0654fe-3f7b-4e2d-b8a5-d349d58f4feb.jpg', 1, CAST(N'2024-06-19T10:50:14.5022346' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (10, N'e7460852-9499-4de4-bc07-743bd28ef146.mp3', 2, CAST(N'2024-06-19T10:50:14.5022349' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (11, N'1cdbfe37-880a-4b09-896d-cf900d056a37.jpg', 1, CAST(N'2024-06-19T10:50:53.4368064' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (12, N'3d8df56a-0cd4-4dca-ab3a-a88210d8ed27.mp3', 2, CAST(N'2024-06-19T10:50:53.4368069' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (13, N'bd4cc53d-4245-4be7-895a-b04ab4e318db.jpg', 1, CAST(N'2024-06-19T10:51:28.0827649' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (14, N'e1cd7bc8-8b69-46ad-b5cb-8dc82ac32d9b.mp3', 2, CAST(N'2024-06-19T10:51:28.0827652' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (15, N'f3a6d307-481d-4678-a520-c0fc0103180c.jpg', 1, CAST(N'2024-06-19T10:52:02.3290635' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (16, N'9fce161d-d82c-4f18-b6fa-3084541a390d.mp3', 2, CAST(N'2024-06-19T10:52:02.3290637' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (17, N'9212c99c-9b3d-4691-83da-17a16e252cb9.jpg', 1, CAST(N'2024-06-19T10:53:04.5727496' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (18, N'ba910508-53a2-4ac9-8f04-a99e10680d8a.mp3', 2, CAST(N'2024-06-19T10:53:04.5727497' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (19, N'00203184-c224-4139-b112-7f7b5a96e37a.jpg', 1, CAST(N'2024-06-19T10:53:43.1325271' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (20, N'c52ec6d4-5b18-42a3-8de7-da528e1c4073.mp3', 2, CAST(N'2024-06-19T10:53:43.1325272' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (21, N'd74ecdd8-802a-4a62-bd65-a6daa105d70f.jpg', 1, CAST(N'2024-06-19T10:54:40.6676368' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (22, N'e56961e9-872c-429b-8d04-6cd84dcea9d7.mp3', 2, CAST(N'2024-06-19T10:54:40.6676369' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (23, N'e8bbd5e4-9093-4a1a-a064-b10b89900da3.jpg', 1, CAST(N'2024-06-19T10:55:35.5614727' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (24, N'5f94a6ab-8ae0-4c37-8775-8c2fc4ba85cc.mp3', 2, CAST(N'2024-06-19T10:55:35.5614728' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (25, N'7a42fed8-84ec-4bc5-b251-fd6955ec5446.jpg', 1, CAST(N'2024-06-19T10:58:10.4279644' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Files] ([Id], [FileName], [FileTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (26, N'7ee45945-bffc-4be0-9bb5-8bc1444a8b22.mp3', 2, CAST(N'2024-06-19T10:58:10.4279649' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Files] OFF
GO
SET IDENTITY_INSERT [dbo].[FileTypes] ON 

INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-13T22:12:52.8131874' AS DateTime2), NULL, 1, N'image', NULL)
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-13T22:13:27.2566380' AS DateTime2), CAST(N'2024-06-14T07:53:51.2794273' AS DateTime2), 1, N'audio', NULL)
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-15T17:58:06.0127933' AS DateTime2), CAST(N'2024-06-15T17:58:37.7798750' AS DateTime2), 0, N'Novi', CAST(N'2024-06-15T17:58:37.7794414' AS DateTime2))
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (4, CAST(N'2024-06-17T13:47:04.9600467' AS DateTime2), NULL, 1, N'mp3', NULL)
INSERT [dbo].[FileTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (5, CAST(N'2024-06-17T13:47:20.9749674' AS DateTime2), NULL, 1, N'Novi', NULL)
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
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 1)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 4)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 6)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 8)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 9)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 10)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 11)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (1, 13)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 2)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 4)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 5)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 6)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 8)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 12)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (3, 13)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 1)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 4)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 5)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 6)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 9)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 10)
INSERT [dbo].[Likes] ([UserId], [TrackId]) VALUES (4, 13)
GO
SET IDENTITY_INSERT [dbo].[MediaTypes] ON 

INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (1, CAST(N'2024-06-16T14:48:53.9316899' AS DateTime2), NULL, 1, N'mp3', NULL)
INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (2, CAST(N'2024-06-16T14:49:04.9463042' AS DateTime2), CAST(N'2024-06-16T16:33:44.7654016' AS DateTime2), 1, N'wav', NULL)
INSERT [dbo].[MediaTypes] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name], [DeletedAt]) VALUES (3, CAST(N'2024-06-16T15:43:32.8714875' AS DateTime2), CAST(N'2024-06-16T16:00:00.2988111' AS DateTime2), 0, N'mp4', CAST(N'2024-06-16T16:00:00.2724037' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MediaTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Playlists] ON 

INSERT [dbo].[Playlists] ([Id], [Name], [UserId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, N'Plejlista 1', 1, CAST(N'2024-06-18T22:46:06.0149160' AS DateTime2), CAST(N'2024-06-18T23:04:48.7120114' AS DateTime2), 0, CAST(N'2024-06-18T23:04:48.6467446' AS DateTime2))
INSERT [dbo].[Playlists] ([Id], [Name], [UserId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (2, N'Plejlista 2', 1, CAST(N'2024-06-19T07:41:12.7442592' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Playlists] ([Id], [Name], [UserId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (3, N'Plejlista 3', 1, CAST(N'2024-06-19T10:24:31.1400639' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Playlists] ([Id], [Name], [UserId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (4, N'Plejlista 4', 1, CAST(N'2024-06-19T10:24:40.6171371' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Playlists] OFF
GO
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 1)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 2)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 4)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 6)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 8)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (2, 11)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (3, 1)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (3, 4)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (3, 6)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (3, 8)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (3, 12)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (4, 1)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (4, 5)
INSERT [dbo].[PlaylistTracks] ([PlaylistId], [TrackId]) VALUES (4, 10)
GO
SET IDENTITY_INSERT [dbo].[Prices] ON 

INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, CAST(1.99 AS Decimal(10, 2)), 1, CAST(N'2024-06-17T20:32:22.7066847' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (2, CAST(2.99 AS Decimal(10, 2)), 2, CAST(N'2024-06-17T20:50:14.3470028' AS DateTime2), CAST(N'2024-06-17T22:08:10.1025131' AS DateTime2), 0, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (3, CAST(2.99 AS Decimal(10, 2)), 2, CAST(N'2024-06-17T22:08:10.1021291' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (4, CAST(2.99 AS Decimal(10, 2)), 3, CAST(N'2024-06-18T19:47:25.2899962' AS DateTime2), CAST(N'2024-06-18T19:55:58.7258405' AS DateTime2), 0, CAST(N'2024-06-18T19:55:58.5755394' AS DateTime2))
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (5, CAST(3.99 AS Decimal(10, 2)), 4, CAST(N'2024-06-19T10:43:16.9769238' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (6, CAST(3.59 AS Decimal(10, 2)), 5, CAST(N'2024-06-19T10:50:14.5022342' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (7, CAST(4.59 AS Decimal(10, 2)), 6, CAST(N'2024-06-19T10:50:53.4368060' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (8, CAST(0.59 AS Decimal(10, 2)), 7, CAST(N'2024-06-19T10:51:28.0827645' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (9, CAST(1.59 AS Decimal(10, 2)), 8, CAST(N'2024-06-19T10:52:02.3290633' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (10, CAST(1.79 AS Decimal(10, 2)), 9, CAST(N'2024-06-19T10:53:04.5727495' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (11, CAST(1.79 AS Decimal(10, 2)), 10, CAST(N'2024-06-19T10:53:43.1325269' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (12, CAST(6.79 AS Decimal(10, 2)), 11, CAST(N'2024-06-19T10:54:40.6676367' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (13, CAST(3.49 AS Decimal(10, 2)), 12, CAST(N'2024-06-19T10:55:35.5614726' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Prices] ([Id], [Amount], [TrackId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (14, CAST(3.49 AS Decimal(10, 2)), 13, CAST(N'2024-06-19T10:58:10.4279623' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Prices] OFF
GO
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (1, 1)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (1, 2)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (2, 3)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (2, 4)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (3, 5)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (3, 6)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (4, 7)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (4, 8)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (5, 9)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (5, 10)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (6, 11)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (6, 12)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (7, 13)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (7, 14)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (8, 15)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (8, 16)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (9, 17)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (9, 18)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (10, 19)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (10, 20)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (11, 21)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (11, 22)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (12, 23)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (12, 24)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (13, 25)
INSERT [dbo].[TrackFiles] ([TrackId], [FileId]) VALUES (13, 26)
GO
SET IDENTITY_INSERT [dbo].[Tracks] ON 

INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, N'In My Feelings', N'Opis pesme', 120, 1, 1, 1, 1, CAST(N'2024-06-17T20:32:22.7065874' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (2, N'Love', N'Opis pesme', 125, 2, 2, 3, 1, CAST(N'2024-06-17T20:50:14.3468974' AS DateTime2), CAST(N'2024-06-17T22:18:56.6496745' AS DateTime2), 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (3, N'Nova', N'Opis pesme', 125, 2, 2, 3, 1, CAST(N'2024-06-18T19:47:25.2897079' AS DateTime2), CAST(N'2024-06-18T19:55:58.7257904' AS DateTime2), 0, CAST(N'2024-06-18T19:55:58.4907991' AS DateTime2))
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (4, N'Rocket', N'Opis pesme', 130, 4, 1, 2, 1, CAST(N'2024-06-19T10:43:16.9769220' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (5, N'Shape of You', N'Opis pesme', 120, 3, 4, 2, 1, CAST(N'2024-06-19T10:50:14.5022335' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (6, N'Your song', N'Opis pesme', 50, 2, 1, 4, 1, CAST(N'2024-06-19T10:50:53.4368050' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (7, N'Yesterday', N'Opis pesme', 90, 2, 2, 1, 1, CAST(N'2024-06-19T10:51:28.0827631' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (8, N'Same thing', N'Opis pesme', 80, 3, 5, 4, 1, CAST(N'2024-06-19T10:52:02.3290627' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (9, N'Again', N'Opis pesme', 80, 2, 7, 5, 1, CAST(N'2024-06-19T10:53:04.5727492' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (10, N'Love yourself', N'Opis pesme', 50, 3, 6, 5, 1, CAST(N'2024-06-19T10:53:43.1325265' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (11, N'Imagine', N'Opis pesme', 140, 1, 5, 2, 1, CAST(N'2024-06-19T10:54:40.6676364' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (12, N'Hotel', N'Opis pesme', 135, 2, 3, 4, 1, CAST(N'2024-06-19T10:55:35.5614723' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Tracks] ([Id], [Name], [Description], [Duration], [ArtistId], [AlbumId], [GenreId], [MediaTypeId], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (13, N'Rapsody', N'Opis pesme', 135, 2, 3, 4, 1, CAST(N'2024-06-19T10:58:10.4279036' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Tracks] OFF
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
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (92, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T13:18:49.9400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (93, N'Update User', N'admin', N'{"Id":2,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":""}', CAST(N'2024-06-17T13:20:25.3500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (94, N'Update User', N'admin', N'{"Id":2,"Username":"testt","FirstName":"TestImee","LastName":"TestPrezimee","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T13:20:47.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (95, N'Update User', N'admin', N'{"Id":2,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T13:21:05.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (96, N'Delete User', N'admin', N'2', CAST(N'2024-06-17T13:29:12.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (97, N'Get Albums', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:35:06.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (98, N'Search Artists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:35:20.5966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (99, N'Search MediaTypes', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:35:28.0866667' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (100, N'Search Users', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:44:39.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (101, N'Search Users', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:44:55.1333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (102, N'Search Users', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T13:45:12.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (103, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T13:45:33.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (104, N'Insert File Type', N'admin', N'{"Id":null,"Name":"mp3"}', CAST(N'2024-06-17T13:47:04.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (105, N'Insert File Type', N'admin', N'{"Id":null,"Name":"Novi"}', CAST(N'2024-06-17T13:47:20.9533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (106, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T14:58:01.7433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (107, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T14:59:14.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (108, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"test","FirstName":"TestIme","LastName":"TestPrezime","Email":"test@gmail.com","Password":"Test1234"}', CAST(N'2024-06-17T15:02:01.2166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (109, N'Search Users', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T15:04:20.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (110, N'Search Users', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-17T15:04:36.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (111, N'Search Users', N'admin', N'{"Keyword":"te","PerPage":10,"Page":1}', CAST(N'2024-06-17T15:05:00.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (112, N'Search Users', N'admin', N'{"Keyword":"ad","PerPage":10,"Page":1}', CAST(N'2024-06-17T15:05:06.0100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (113, N'Insert Track', N'admin', N'{"Id":null,"Name":"","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T19:59:55.0100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (114, N'Insert Track', N'admin', N'{"Id":null,"Name":"","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T20:00:41.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (115, N'Insert Track', N'admin', N'{"Id":null,"Name":"","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T20:02:12.4166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (116, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T20:04:51.7000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (117, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:06:56.8866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (118, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be31.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:08:14.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (119, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:08:30.9633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (120, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:17:28.2433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (121, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:18:32.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (122, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:19:09.4700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (123, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:24:03.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (124, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:28:10.6533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (125, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:32:11.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (126, N'Insert Track', N'admin', N'{"Id":null,"Name":"In My Feelings","Description":"Opis pesme","Duration":120,"Price":1.99,"AlbumId":1,"ArtistId":1,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"c45c67fd-72e5-4399-b665-cb9e831be310.jpg","SongPath":"30f7192b-2f4e-4f3e-9af0-80f804bc9a18.mp3"}}', CAST(N'2024-06-17T20:35:02.3633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (127, N'Insert Track', N'admin', N'{"Id":null,"Name":"New song","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"0dee1327-a901-455d-a4e4-86d1cdab1c50.jpg","SongPath":"dcae786a-3ae3-4173-8fad-48418a2f03f4.mp3"}}', CAST(N'2024-06-17T20:50:12.9900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (128, N'Insert Track', N'admin', N'{"Id":null,"Name":"New song","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"0dee1327-a901-455d-a4e4-86d1cdab1c50.jpg","SongPath":"dcae786a-3ae3-4173-8fad-48418a2f03f.mp3"}}', CAST(N'2024-06-17T20:51:28.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (129, N'Insert Track', N'admin', N'{"Id":null,"Name":"New song","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"0dee1327-a901-455d-a4e4-86d1cdab1c50.jpg","SongPath":"dcae786a-3ae3-4173-8fad-48418a2f03f.mp3"}}', CAST(N'2024-06-17T20:54:04.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (130, N'Update Track', N'admin', N'{"Id":2,"Name":"Halo","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T21:54:06.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (131, N'Update Track', N'admin', N'{"Id":2,"Name":"Halo","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T21:56:38.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (132, N'Update Track', N'admin', N'{"Id":2,"Name":"Halo","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T22:01:05.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (133, N'Update Track', N'admin', N'{"Id":2,"Name":"Halo","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T22:05:37.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (134, N'Update Track', N'admin', N'{"Id":2,"Name":"Halo","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":null}', CAST(N'2024-06-17T22:08:08.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (135, N'Update Track', N'admin', N'{"Id":2,"Name":"","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":null,"SongPath":null}}', CAST(N'2024-06-17T22:17:27.2200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (136, N'Update Track', N'admin', N'{"Id":2,"Name":"","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"","SongPath":""}}', CAST(N'2024-06-17T22:17:51.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (137, N'Update Track', N'admin', N'{"Id":2,"Name":"Love","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"","SongPath":""}}', CAST(N'2024-06-17T22:18:14.8533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (138, N'Update Track', N'admin', N'{"Id":2,"Name":"Love","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"","SongPath":""}}', CAST(N'2024-06-17T22:18:56.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (139, N'Insert Track', N'admin', N'{"Id":null,"Name":"Nova","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"","SongPath":""}}', CAST(N'2024-06-18T19:44:54.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (140, N'Insert Track', N'admin', N'{"Id":null,"Name":"Nova","Description":"Opis pesme","Duration":125,"Price":2.99,"AlbumId":2,"ArtistId":2,"GenreId":3,"MediaTypeId":1,"TrackFiles":{"ImagePath":"99e1bf73-8050-4fea-88d1-61114e76bdec.jpg","SongPath":"243a6541-b9d7-499b-896e-627c81dbe141.mp3"}}', CAST(N'2024-06-18T19:47:24.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (141, N'Delete Track', N'admin', N'3', CAST(N'2024-06-18T19:55:57.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (142, N'Like Track', N'admin', N'{"TrackId":2}', CAST(N'2024-06-18T21:08:36.1166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (143, N'Like Track', N'admin', N'{"TrackId":2}', CAST(N'2024-06-18T21:29:10.5666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (144, N'Like Track', N'admin', N'{"TrackId":2}', CAST(N'2024-06-18T22:17:31.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (145, N'Like Track', N'admin', N'{"TrackId":2}', CAST(N'2024-06-18T22:17:37.8900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (146, N'Undo like', N'admin', N'2', CAST(N'2024-06-18T22:18:43.9266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (147, N'Undo like', N'admin', N'2', CAST(N'2024-06-18T22:19:19.5466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (148, N'Undo like', N'admin', N'2', CAST(N'2024-06-18T22:20:11.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (149, N'Create playlist', N'admin', N'{"Id":null,"Name":""}', CAST(N'2024-06-18T22:45:51.2066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (150, N'Create playlist', N'admin', N'{"Id":null,"Name":"Plejlista 1"}', CAST(N'2024-06-18T22:46:05.6333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (151, N'Update Playlist', N'admin', N'{"Id":null,"Name":"Plejlista 1"}', CAST(N'2024-06-18T22:55:53.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (152, N'Update Playlist', N'admin', N'{"Id":null,"Name":"Plejlista 1"}', CAST(N'2024-06-18T22:56:43.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (153, N'Update Playlist', N'admin', N'{"Id":1,"Name":"Plejlista 1"}', CAST(N'2024-06-18T22:57:42.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (154, N'Update Playlist', N'admin', N'{"Id":1,"Name":"Plejlista 24"}', CAST(N'2024-06-18T22:59:00.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (155, N'Update Playlist', N'admin', N'{"Id":1,"Name":"Plejlista 1"}', CAST(N'2024-06-18T22:59:11.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (156, N'Delete Playlist', N'admin', N'1', CAST(N'2024-06-18T23:04:48.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (157, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:20:26.3266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (158, N'Like Track', N'admin', N'{"TrackId":1}', CAST(N'2024-06-19T06:21:37.9733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (159, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:21:41.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (160, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":"In","PerPage":10,"Page":1}', CAST(N'2024-06-19T06:22:25.3533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (161, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":2,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:22:38.0700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (162, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":2,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:22:44.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (163, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":2,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:22:53.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (164, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":3,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:22:55.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (165, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":2,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:23:08.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (166, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":1,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:23:09.9633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (167, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":2.05,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:23:33.4200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (168, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":2.05,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:23:40.0866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (169, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":100,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:23:57.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (170, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":123,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:24:02.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (171, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":"2024-05-10T00:00:00","ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:24:20.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (172, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":"2024-05-10T00:00:00","ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:24:41.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (173, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":"2024-05-10T00:00:00","ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:25:08.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (174, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":"2024-06-17T20:30:00Z","ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:25:42.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (175, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":"2024-06-17T20:40:00Z","ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:25:52.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (176, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":"2024-06-17T20:40:00Z","PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:26:08.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (177, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":"2024-06-17T20:40:00Z","PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:29:50.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (178, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":"2024-06-17T20:40:00Z","PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:29:56.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (179, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T06:30:05.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (180, N'Add Track to Playlist', N'admin', N'{"PlaylistId":1,"TrackId":1}', CAST(N'2024-06-19T07:39:52.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (181, N'Create playlist', N'admin', N'{"Id":null,"Name":"Plejlista 2"}', CAST(N'2024-06-19T07:41:12.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (182, N'Add Track to Playlist', N'admin', N'{"PlaylistId":1,"TrackId":1}', CAST(N'2024-06-19T07:41:23.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (183, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T07:41:50.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (184, N'Remove Track from Playlist', N'admin', N'{"PlaylistId":2,"TrackId":2}', CAST(N'2024-06-19T08:03:38.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (185, N'Remove Track from Playlist', N'admin', N'{"PlaylistId":2,"TrackId":3}', CAST(N'2024-06-19T08:03:58.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (186, N'Remove Track from Playlist', N'admin', N'{"PlaylistId":2,"TrackId":3}', CAST(N'2024-06-19T08:05:42.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (187, N'Remove Track from Playlist', N'admin', N'{"PlaylistId":2,"TrackId":2}', CAST(N'2024-06-19T08:05:53.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (188, N'Remove Track from Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T08:06:00.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (189, N'Search Playlists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T08:31:50.1700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (190, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T08:32:05.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (191, N'Search Playlists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T08:32:35.7600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (192, N'Search Playlists', N'admin', N'{"Keyword":"3","PerPage":10,"Page":1}', CAST(N'2024-06-19T08:33:01.2000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (193, N'Search Playlists', N'admin', N'{"Keyword":"2","PerPage":10,"Page":1}', CAST(N'2024-06-19T08:33:03.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (194, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T08:35:58.2500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (195, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T08:38:35.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (196, N'Search Playlists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T09:23:36.9966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (197, N'Search Playlists', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T09:24:46.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (198, N'Get Playlists for User', N'admin', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T09:26:24.9100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (199, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sorts":[{"SortProperty":"price","Direction":1}],"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:00:31.1533333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (200, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sorts":[{"SortProperty":"price","Direction":0}],"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:00:48.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (201, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sorts":[{"SortProperty":"price","Direction":0},{"SortProperty":"duration","Direction":1}],"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:02:05.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (202, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sorts":[{"SortProperty":"price","Direction":0},{"SortProperty":"duration","Direction":0}],"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:02:11.2766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (203, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":0},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:07:16.9400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (204, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:07:28.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (205, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:07:53.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (206, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:13:13.3300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (207, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:14:16.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (208, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"price","Direction":0},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:14:36.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (209, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"name","Direction":0},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:14:47.0166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (210, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"name","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:14:58.8666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (211, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"duration","Direction":0},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:15:06.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (212, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":{"SortProperty":"duration","Direction":1},"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:15:13.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (213, N'Create playlist', N'admin', N'{"Id":null,"Name":"Plejlista 3"}', CAST(N'2024-06-19T10:24:30.8566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (214, N'Create playlist', N'admin', N'{"Id":null,"Name":"Plejlista 4"}', CAST(N'2024-06-19T10:24:40.6000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (215, N'Insert Track', N'admin', N'{"Id":null,"Name":"Rocket","Description":"Opis pesme","Duration":130,"Price":3.99,"AlbumId":1,"ArtistId":4,"GenreId":2,"MediaTypeId":1,"TrackFiles":{"ImagePath":"99e1bf73-8050-4fea-88d1-61114e76bdec.jpg","SongPath":"243a6541-b9d7-499b-896e-627c81dbe141.mp3"}}', CAST(N'2024-06-19T10:26:56.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (216, N'Insert Track', N'admin', N'{"Id":null,"Name":"Rocket","Description":"Opis pesme","Duration":130,"Price":3.99,"AlbumId":1,"ArtistId":4,"GenreId":2,"MediaTypeId":1,"TrackFiles":{"ImagePath":"012bc64c-f94a-4910-ae0d-7c93d9094c3e.jpg","SongPath":"8dbba3ee-f6f6-479f-a6e6-1934e55b128f.mp3"}}', CAST(N'2024-06-19T10:43:16.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (217, N'Insert Track', N'admin', N'{"Id":null,"Name":"Shape of You","Description":"Opis pesme","Duration":120,"Price":3.59,"AlbumId":4,"ArtistId":3,"GenreId":2,"MediaTypeId":1,"TrackFiles":{"ImagePath":"df0654fe-3f7b-4e2d-b8a5-d349d58f4feb.jpg","SongPath":"e7460852-9499-4de4-bc07-743bd28ef146.mp3"}}', CAST(N'2024-06-19T10:50:14.4633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (218, N'Insert Track', N'admin', N'{"Id":null,"Name":"Your song","Description":"Opis pesme","Duration":50,"Price":4.59,"AlbumId":1,"ArtistId":2,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"1cdbfe37-880a-4b09-896d-cf900d056a37.jpg","SongPath":"3d8df56a-0cd4-4dca-ab3a-a88210d8ed27.mp3"}}', CAST(N'2024-06-19T10:50:53.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (219, N'Insert Track', N'admin', N'{"Id":null,"Name":"Yesterday","Description":"Opis pesme","Duration":90,"Price":0.59,"AlbumId":2,"ArtistId":2,"GenreId":1,"MediaTypeId":1,"TrackFiles":{"ImagePath":"bd4cc53d-4245-4be7-895a-b04ab4e318db.jpg","SongPath":"e1cd7bc8-8b69-46ad-b5cb-8dc82ac32d9b.mp3"}}', CAST(N'2024-06-19T10:51:28.0700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (220, N'Insert Track', N'admin', N'{"Id":null,"Name":"Same thing","Description":"Opis pesme","Duration":80,"Price":1.59,"AlbumId":5,"ArtistId":3,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"f3a6d307-481d-4678-a520-c0fc0103180c.jpg","SongPath":"9fce161d-d82c-4f18-b6fa-3084541a390d.mp3"}}', CAST(N'2024-06-19T10:52:02.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (221, N'Insert Track', N'admin', N'{"Id":null,"Name":"Again","Description":"Opis pesme","Duration":80,"Price":1.79,"AlbumId":7,"ArtistId":2,"GenreId":5,"MediaTypeId":1,"TrackFiles":{"ImagePath":"9212c99c-9b3d-4691-83da-17a16e252cb9.jpg","SongPath":"ba910508-53a2-4ac9-8f04-a99e10680d8a.mp3"}}', CAST(N'2024-06-19T10:53:04.5333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (222, N'Insert Track', N'admin', N'{"Id":null,"Name":"Love yourself","Description":"Opis pesme","Duration":50,"Price":1.79,"AlbumId":6,"ArtistId":3,"GenreId":5,"MediaTypeId":1,"TrackFiles":{"ImagePath":"00203184-c224-4139-b112-7f7b5a96e37a.jpg","SongPath":"c52ec6d4-5b18-42a3-8de7-da528e1c4073.mp3"}}', CAST(N'2024-06-19T10:53:43.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (223, N'Insert Track', N'admin', N'{"Id":null,"Name":"Imagine","Description":"Opis pesme","Duration":140,"Price":6.79,"AlbumId":5,"ArtistId":1,"GenreId":2,"MediaTypeId":1,"TrackFiles":{"ImagePath":"d74ecdd8-802a-4a62-bd65-a6daa105d70f.jpg","SongPath":"e56961e9-872c-429b-8d04-6cd84dcea9d7.mp3"}}', CAST(N'2024-06-19T10:54:40.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (224, N'Insert Track', N'admin', N'{"Id":null,"Name":"Hotel","Description":"Opis pesme","Duration":135,"Price":3.49,"AlbumId":3,"ArtistId":2,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"e8bbd5e4-9093-4a1a-a064-b10b89900da3.jpg","SongPath":"5f94a6ab-8ae0-4c37-8775-8c2fc4ba85cc.mp3"}}', CAST(N'2024-06-19T10:55:35.5333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (225, N'Insert Track', N'admin', N'{"Id":null,"Name":"Hotel","Description":"Opis pesme","Duration":135,"Price":3.49,"AlbumId":3,"ArtistId":2,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"7a42fed8-84ec-4bc5-b251-fd6955ec5446.jpg","SongPath":"7ee45945-bffc-4be0-9bb5-8bc1444a8b22.mp3"}}', CAST(N'2024-06-19T10:55:59.7766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (226, N'Insert Track', N'admin', N'{"Id":null,"Name":"Hotel","Description":"Opis pesme","Duration":135,"Price":3.49,"AlbumId":3,"ArtistId":2,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"7a42fed8-84ec-4bc5-b251-fd6955ec5446.jpg","SongPath":"7ee45945-bffc-4be0-9bb5-8bc1444a8b22.mp3"}}', CAST(N'2024-06-19T10:56:30.8433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (227, N'Insert Track', N'admin', N'{"Id":null,"Name":"Rapsody","Description":"Opis pesme","Duration":135,"Price":3.49,"AlbumId":3,"ArtistId":2,"GenreId":4,"MediaTypeId":1,"TrackFiles":{"ImagePath":"7a42fed8-84ec-4bc5-b251-fd6955ec5446.jpg","SongPath":"7ee45945-bffc-4be0-9bb5-8bc1444a8b22.mp3"}}', CAST(N'2024-06-19T10:58:09.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (228, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T10:58:37.1800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (229, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":null,"Keyword":null,"PerPage":10,"Page":2}', CAST(N'2024-06-19T10:59:25.6366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (230, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T11:00:44.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (231, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":1}', CAST(N'2024-06-19T11:01:12.0700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (232, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":3}', CAST(N'2024-06-19T11:01:20.8366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (233, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":2}', CAST(N'2024-06-19T11:01:38.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (234, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":4}', CAST(N'2024-06-19T11:01:41.9666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (235, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":6}', CAST(N'2024-06-19T11:01:45.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (236, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":8}', CAST(N'2024-06-19T11:01:47.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (237, N'Add Track to Playlist', N'admin', N'{"PlaylistId":2,"TrackId":11}', CAST(N'2024-06-19T11:01:49.5100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (238, N'Add Track to Playlist', N'admin', N'{"PlaylistId":3,"TrackId":12}', CAST(N'2024-06-19T11:01:55.4233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (239, N'Add Track to Playlist', N'admin', N'{"PlaylistId":3,"TrackId":8}', CAST(N'2024-06-19T11:01:58.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (240, N'Add Track to Playlist', N'admin', N'{"PlaylistId":3,"TrackId":6}', CAST(N'2024-06-19T11:02:00.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (241, N'Add Track to Playlist', N'admin', N'{"PlaylistId":3,"TrackId":4}', CAST(N'2024-06-19T11:02:03.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (242, N'Add Track to Playlist', N'admin', N'{"PlaylistId":3,"TrackId":1}', CAST(N'2024-06-19T11:02:05.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (243, N'Add Track to Playlist', N'admin', N'{"PlaylistId":4,"TrackId":1}', CAST(N'2024-06-19T11:02:08.8666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (244, N'Add Track to Playlist', N'admin', N'{"PlaylistId":4,"TrackId":5}', CAST(N'2024-06-19T11:02:11.2133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (245, N'Add Track to Playlist', N'admin', N'{"PlaylistId":4,"TrackId":10}', CAST(N'2024-06-19T11:02:13.1533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (246, N'Like Track', N'admin', N'{"TrackId":1}', CAST(N'2024-06-19T11:03:02.1333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (247, N'Like Track', N'admin', N'{"TrackId":4}', CAST(N'2024-06-19T11:03:09.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (248, N'Like Track', N'admin', N'{"TrackId":6}', CAST(N'2024-06-19T11:03:11.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (249, N'Like Track', N'admin', N'{"TrackId":9}', CAST(N'2024-06-19T11:03:13.6966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (250, N'Like Track', N'admin', N'{"TrackId":11}', CAST(N'2024-06-19T11:03:16.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (251, N'Like Track', N'admin', N'{"TrackId":10}', CAST(N'2024-06-19T11:03:20.5666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (252, N'Like Track', N'admin', N'{"TrackId":6}', CAST(N'2024-06-19T11:03:24.0900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (253, N'Like Track', N'admin', N'{"TrackId":8}', CAST(N'2024-06-19T11:03:28.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (254, N'Like Track', N'admin', N'{"TrackId":13}', CAST(N'2024-06-19T11:03:31.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (255, N'Like Track', N'test', N'{"TrackId":13}', CAST(N'2024-06-19T11:07:08.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (256, N'Like Track', N'test', N'{"TrackId":6}', CAST(N'2024-06-19T11:07:14.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (257, N'Like Track', N'test', N'{"TrackId":4}', CAST(N'2024-06-19T11:07:16.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (258, N'Like Track', N'test', N'{"TrackId":2}', CAST(N'2024-06-19T11:07:19.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (259, N'Like Track', N'test', N'{"TrackId":8}', CAST(N'2024-06-19T11:07:21.8000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (260, N'Like Track', N'test', N'{"TrackId":13}', CAST(N'2024-06-19T11:07:23.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (261, N'Like Track', N'test', N'{"TrackId":12}', CAST(N'2024-06-19T11:07:27.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (262, N'Like Track', N'test', N'{"TrackId":5}', CAST(N'2024-06-19T11:07:31.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (263, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik 4","LastName":"Korisa 4","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-19T11:08:54.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (264, N'Like Track', N'korisnik', N'{"TrackId":5}', CAST(N'2024-06-19T11:10:04.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (265, N'Like Track', N'korisnik', N'{"TrackId":13}', CAST(N'2024-06-19T11:10:09.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (266, N'Like Track', N'korisnik', N'{"TrackId":10}', CAST(N'2024-06-19T11:10:11.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (267, N'Like Track', N'korisnik', N'{"TrackId":1}', CAST(N'2024-06-19T11:10:14.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (268, N'Like Track', N'korisnik', N'{"TrackId":6}', CAST(N'2024-06-19T11:10:16.1833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (269, N'Like Track', N'korisnik', N'{"TrackId":4}', CAST(N'2024-06-19T11:10:18.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (270, N'Like Track', N'korisnik', N'{"TrackId":9}', CAST(N'2024-06-19T11:10:20.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (271, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik 4","LastName":"Korisa 4","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-19T11:10:30.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (272, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik 4","LastName":"Korisa 4","Email":"korisnik@gmail.com","Password":"Korisni"}', CAST(N'2024-06-19T11:10:41.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (273, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik 4","LastName":"Korisa 4","Email":"korisnik@gmail.com","Password":"Korisni4"}', CAST(N'2024-06-19T11:11:10.4900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (274, N'Search Tracks', N'admin', N'{"ReleasedDateFrom":null,"ReleasedDateTo":null,"PriceLessThan":null,"PriceGreaterThan":null,"DurationGreaterThan":null,"AlbumId":null,"ArtistId":null,"GenreId":null,"MediaTypeId":null,"Sort":null,"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T11:11:33.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (275, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"string","FirstName":"string","LastName":"string","Email":"string","Password":"string"}', CAST(N'2024-06-20T19:03:03.4933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (276, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:30:06.4900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (277, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:31:41.8866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (278, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:32:06.6366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (279, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:34:22.9866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (280, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:37:42.2600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (281, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:37:55.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (282, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:38:13.0100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (283, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T19:38:25.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (284, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T22:23:03.1233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (285, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"Korisnik","LastName":"Prezime","Email":"korisnik@gmail.com","Password":"Korisnik1234"}', CAST(N'2024-06-20T22:27:45.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (286, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"neko","FirstName":"Neko","LastName":"Nekic","Email":"neko@gmail.com","Password":"Neko1234"}', CAST(N'2024-06-20T22:29:23.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (287, N'UserRegistration', N'unauthorized', N'{"Id":null,"Username":"korisnik","FirstName":"wef","LastName":"wefw","Email":"fwef@gmail.com","Password":"wefwef1232ARS"}', CAST(N'2024-06-20T22:38:53.2900000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (1, N'admin@gmail.com', N'admin', N'AdminIme', N'AdminPrezime', N'$2a$10$e3o060gixl2/nlDl4tcHsO5DEhTKdEN.J5ReK0yaWbEYRBJD2rN9i', CAST(N'2024-06-13T22:01:47.6295723' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (3, N'test@gmail.com', N'test', N'TestIme', N'TestPrezime', N'$2a$10$SMsrJuRLwsW4Hhcm26SyIedUvNsDE6sxY8332JMXxX3JXy8umsj9K', CAST(N'2024-06-17T15:02:01.7888254' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (4, N'korisnik@gmail.com', N'korisnik', N'Korisnik 4', N'Korisa 4', N'$2a$10$EGNvv0hBnuqu1s2RZptG8.4rDCyIlqnyTlU.n.yAz8Xtz60biaDw2', CAST(N'2024-06-19T11:08:54.4181860' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Username], [FirstName], [LastName], [Password], [CreatedAt], [UpdatedAt], [IsActive], [DeletedAt]) VALUES (5, N'neko@gmail.com', N'neko', N'Neko', N'Nekic', N'$2a$10$U3GjhTAdj.qnAbf5OYSpUOdALEgsgzAVywpX8MENZzJKqRblQbwL.', CAST(N'2024-06-20T22:29:24.0437431' AS DateTime2), NULL, 1, NULL)
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
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 23)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 24)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 25)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 26)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 27)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 28)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 29)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 30)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 31)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 32)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 33)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 34)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 35)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 36)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 37)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 38)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 39)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (3, 28)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (4, 2)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (4, 28)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (5, 2)
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
/****** Object:  StoredProcedure [dbo].[AddUseCaseLog]    Script Date: 6/21/2024 3:35:45 PM ******/
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
