﻿using System.IdentityModel.Tokens.Jwt;
using Zenith_API.Application;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.Application.UseCases.Queries;
using Zenith_API.Application.UseCases.Queries.FileTypes;
using Zenith_API.Implementation;
using Zenith_API.Implementation.Logging.UseCases;
using Zenith_API.Implementation.Mapper;
using Zenith_API.Implementation.UseCases.Commands.FileTypes;
using Zenith_API.Implementation.UseCases.Commands.Tracks;
using Zenith_API.Implementation.UseCases.Commands.Users;
using Zenith_API.Implementation.UseCases.Queries;
using Zenith_API.Implementation.UseCases.Queries.FileTypes;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.API.Core
{
    public static class ContainerExtensions
    {
        public static void AddUseCases(this IServiceCollection services)
        {
            //Use case handler
            services.AddTransient<UseCaseHandler>();

            //Logger
            services.AddTransient<IUseCaseLogger, SPUseCaseLogger>();

            //Queries
            services.AddTransient<IGetGenresQuery, EfGetGenresQuery>();
            services.AddTransient<IGetFileTypesQuery, EfGetFileTypesQuery>();

            //Commands
            services.AddTransient<IRegisterUserCommand, EfRegisterUserCommand>();
            services.AddTransient<ICreateTrackCommand, EfCreateTrackCommand>();
            services.AddTransient<ICreateFileTypeCommand, EfCreateFileTypeCommand>();
            services.AddTransient<IUpdateFileTypeCommand, EfUpdateFileTypeCommand>();
            services.AddTransient<IDeleteFileTypeCommand, EfDeleteFileTypeCommand>();

            //Validators
            services.AddTransient<RegisterUserDtoValidator>();
            services.AddTransient<CreateTrackDTOValidator>();
            services.AddTransient<FileTypeDTOValidator>();
        }

        public static void AddAutoMapperProfiles(this IServiceCollection services)
        {
            //Profiles
            services.AddAutoMapper(typeof(FileTypeProfile));
        }

        public static Guid? GetTokenId(this HttpRequest request)
        {
            if (request == null || !request.Headers.ContainsKey("Authorization"))
            {
                return null;
            }

            string authHeader = request.Headers["Authorization"].ToString();

            if (authHeader.Split("Bearer ").Length != 2)
            {
                return null;
            }

            string token = authHeader.Split("Bearer ")[1];

            var handler = new JwtSecurityTokenHandler();

            var tokenObj = handler.ReadJwtToken(token);

            var claims = tokenObj.Claims;

            var claim = claims.First(x => x.Type == "jti").Value;

            var tokenGuid = Guid.Parse(claim);

            return tokenGuid;
        }
    }
}
