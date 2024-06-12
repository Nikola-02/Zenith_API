using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases
{
    public abstract class EfUseCase
    {
        private readonly ZenithContext _context;

        protected EfUseCase(ZenithContext context)
        {
            _context = context;
        }

        protected ZenithContext Context => _context;
    }
}
