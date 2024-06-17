using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.UseCases.Queries.Users;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.Users
{
    public class EfGetUsersQuery : EfUseCaseMapper, IGetUsersQuery
    {
        public EfGetUsersQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 25;

        public string Name => "Search Users";

        public PagedResponse<UserDTO> Execute(UserSearch search)
        {
            var query = Context.Users.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            if (!string.IsNullOrEmpty(search.Keyword))
            {
                query = query.Where(x => x.Username.Contains(search.Keyword) ||
                                         x.Email.Contains(search.Keyword) ||
                                         x.FirstName.Contains(search.Keyword) ||
                                         x.LastName.Contains(search.Keyword));
            }

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<UserDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<UserDTO>>(query.ToList())
            };
        }
    }
}
