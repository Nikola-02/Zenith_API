using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.UseCaseLogs;

namespace Zenith_API.Application.UseCases.Queries.UseCaseLogs
{
    public interface IGetUseCaseLogsQuery : IQuery<PagedResponse<UserCaseLogDTO>, UseCaseLogSearch>
    {
    }
}
