using Zenith_API.Application;
using Zenith_API.DataAccess;
using Zenith_API.Domain;

namespace Zenith_API.API.Core
{
    public class DbExceptionLogger : IExceptionLogger
    {
        private readonly ZenithContext _zenithContext;

        public DbExceptionLogger(ZenithContext zenithContext)
        {
            _zenithContext = zenithContext;
        }

        public Guid Log(Exception ex, IApplicationActor actor)
        {
            Guid id = Guid.NewGuid();

            //ID, Message, Time, StrackTrace
            ErrorLog log = new()
            {
                ErrorId = id,
                Message = ex.Message,
                StrackTrace = ex.StackTrace,
                Time = DateTime.UtcNow
            };

            _zenithContext.ErrorLogs.Add(log);

            _zenithContext.SaveChanges();

            return id;
        }
    }
}
