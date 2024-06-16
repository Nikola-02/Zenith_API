using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.UseCases.Queries.Albums;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.Albums
{
    public class EfGetAlbumsQuery : EfUseCaseMapper, IGetAlbumsQuery
    {
        public int Id => 15;

        public string Name => "Get Albums";

        public EfGetAlbumsQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }


        public PagedResponse<AlbumDTO> Execute(AlbumSearch search)
        {
            var query = Context.Albums.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<AlbumDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<AlbumDTO>>(query.ToList())
            };
        }
    }
}
