using Zenith_API.Application;

namespace Zenith_API.API.Core
{
    public interface IExceptionLogger
    {
        Guid Log(Exception ex, IApplicationActor actor);
    }
}
