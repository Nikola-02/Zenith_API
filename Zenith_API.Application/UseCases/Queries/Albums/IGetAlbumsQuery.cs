using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Albums;

namespace Zenith_API.Application.UseCases.Queries.Albums
{
    public interface IGetAlbumsQuery : IQuery<PagedResponse<AlbumDTO>, AlbumSearch>
    {
    }
}
