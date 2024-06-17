using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.UseCases.Queries.MediaTypes;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.MediaTypes
{
    public class EfGetMediaTypesQuery : EfUseCaseMapper, IGetMediaTypesQuery
    {
        public int Id => 19;

        public string Name => "Search MediaTypes";

        public EfGetMediaTypesQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public PagedResponse<MediaTypeDTO> Execute(MediaTypeSearch search)
        {
            var query = Context.MediaTypes.AsQueryable();

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

            return new PagedResponse<MediaTypeDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<MediaTypeDTO>>(query.ToList())
            };
        }
    }
}
