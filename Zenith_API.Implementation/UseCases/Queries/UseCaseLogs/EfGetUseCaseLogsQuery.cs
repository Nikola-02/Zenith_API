using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.UseCaseLogs;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.UseCases.Queries.UseCaseLogs;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.UseCaseLogs
{
    public class EfGetUseCaseLogsQuery : EfUseCaseMapper, IGetUseCaseLogsQuery
    {
        public EfGetUseCaseLogsQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 38;

        public string Name => "Search UseCaseLog";

        public PagedResponse<UserCaseLogDTO> Execute(UseCaseLogSearch search)
        {
            var query = Context.UseCaseLogs.AsQueryable();

            if (!string.IsNullOrEmpty(search.Keyword))
            {
                query = query.Where(x => x.Username.Contains(search.Keyword) ||
                                         x.UseCaseName.Contains(search.Keyword));
            }

            if (search.DateFrom != null)
            {
                query = query.Where(x => x.ExecutedAt >= search.DateFrom);
            }

            if (search.DateTo != null)
            {
                query = query.Where(x => x.ExecutedAt <= search.DateTo);
            }

            if (search.Sort == null)
            {
                query = query.OrderByDescending(x => x.ExecutedAt);
            }
            else
            {
                if (search.Sort.SortProperty == "executedAt")
                {
                    if (search.Sort.Direction == SortDirection.Asc)
                    {
                        query = query.OrderBy(x => x.ExecutedAt);
                    }
                }
            }

                int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<UserCaseLogDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<UserCaseLogDTO>>(query.ToList())
            };
        }
    }
}
