using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.UseCases;
using Zenith_API.Application.UseCases.Queries;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries
{
    public class EfGetGenresQuery : EfUseCase, IGetGenresQuery
    {
        public EfGetGenresQuery(ZenithContext context) : base(context)
        {
        }

        public int Id => 2;

        public string Name => "Search Genres";

        public List<GenreDTO> Execute(GenreSearch search)
        {
            return Context.Genres.Select(x => new GenreDTO
            {
                Id = x.Id,
                Name = x.Name,
            }).ToList();
        }
    }
}
