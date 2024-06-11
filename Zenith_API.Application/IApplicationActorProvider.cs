using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application
{
    public interface IApplicationActorProvider
    {
        IApplicationActor GetActor();
    }
}
