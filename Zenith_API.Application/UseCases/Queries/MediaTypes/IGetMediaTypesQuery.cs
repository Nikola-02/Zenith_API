using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.MediaTypes;

namespace Zenith_API.Application.UseCases.Queries.MediaTypes
{
    public interface IGetMediaTypesQuery : IQuery<PagedResponse<MediaTypeDTO>, MediaTypeSearch>
    {
    }
}
