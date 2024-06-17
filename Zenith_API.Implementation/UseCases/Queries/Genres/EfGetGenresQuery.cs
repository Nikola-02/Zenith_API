using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.UseCases;
using Zenith_API.Application.UseCases.Queries.Genres;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.Genres
{
    public class EfGetGenresQuery : EfUseCaseMapper, IGetGenresQuery
    {

        public int Id => 2;

        public string Name => "Search Genres";

        public EfGetGenresQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public PagedResponse<GenreDTO> Execute(GenresSearch search)
        {
            var query = Context.Genres.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            if (!string.IsNullOrEmpty(search.Keyword))
            {
                query = query.Where(x => x.Name.Contains(search.Keyword));
            }

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<GenreDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<GenreDTO>>(query.ToList())
            };
        }
    }
}
