using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases
{
    public class EfUseCaseMapper : EfUseCase
    {
        private readonly IMapper _mapper;

        public EfUseCaseMapper(ZenithContext context, IMapper mapper) : base(context)
        {
            _mapper = mapper;
        }

        protected IMapper Mapper => _mapper;
    }
}
