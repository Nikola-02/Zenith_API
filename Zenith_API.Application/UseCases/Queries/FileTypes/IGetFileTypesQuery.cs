using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.FileTypes;

namespace Zenith_API.Application.UseCases.Queries.FileTypes
{
    public interface IGetFileTypesQuery : IQuery<PagedResponse<FileTypeDTO>, FileTypeSearch>
    {
    }
}
