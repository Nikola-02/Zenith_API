using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Users;

namespace Zenith_API.Application.UseCases.Queries.Users
{
    public interface IGetUsersQuery: IQuery<PagedResponse<UserDTO>, UserSearch>
    {
    }
}
