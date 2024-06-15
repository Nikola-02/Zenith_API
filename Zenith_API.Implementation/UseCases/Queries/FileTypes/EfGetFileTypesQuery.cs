using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.UseCases.Queries.FileTypes;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.FileTypes
{
    public class EfGetFileTypesQuery : EfUseCaseMapper, IGetFileTypesQuery
    {
        public int Id => 7;

        public string Name => "Search FileTypes";

        public EfGetFileTypesQuery(ZenithContext context, IMapper mapper) : base(context, mapper) 
        {
        }

        public PagedResponse<FileTypeDTO> Execute(FileTypeSearch search)
        {
            var query = Context.FileTypes.AsQueryable();

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<FileTypeDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<FileTypeDTO>>(query.ToList())
            };
        }
    }
}
