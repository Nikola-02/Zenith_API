using System.IdentityModel.Tokens.Jwt;
using Zenith_API.Application;
using Zenith_API.Application.UseCases.Queries;
using Zenith_API.Implementation;
using Zenith_API.Implementation.Logging.UseCases;
using Zenith_API.Implementation.UseCases.Queries;

namespace Zenith_API.API.Core
{
    public static class ContainerExtensions
    {
        public static void AddUseCases(this IServiceCollection services)
        {
            services.AddTransient<UseCaseHandler>();
            services.AddTransient<IUseCaseLogger, SPUseCaseLogger>();
            services.AddTransient<IGetGenresQuery, EfGetGenresQuery>();
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
