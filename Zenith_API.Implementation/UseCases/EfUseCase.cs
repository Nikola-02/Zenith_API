using AutoMapper;
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
        private readonly IMapper _mapper;

        protected EfUseCase(ZenithContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        protected ZenithContext Context => _context;
        protected IMapper Mapper => _mapper;
    }
}
