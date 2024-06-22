using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Filters;

namespace Zenith_API.Application.UseCases.Queries.Filters
{
    public interface IGetFiltersQuery : IQuery<FiltersDTO, FiltersSearch>
    {
    }
}
