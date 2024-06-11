using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;

namespace Zenith_API.Implementation
{
    public class UseCaseHandler
    {
        private readonly IApplicationActor _actor;
        private readonly IUseCaseLogger _logger;
        public UseCaseHandler(IApplicationActor actor, IUseCaseLogger logger)
        {
            _actor = actor;
            _logger = logger;
        }
    }
}
