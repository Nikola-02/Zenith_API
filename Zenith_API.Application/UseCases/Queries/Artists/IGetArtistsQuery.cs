using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Artists;

namespace Zenith_API.Application.UseCases.Queries.Artists
{
    public interface IGetArtistsQuery : IQuery<PagedResponse<ArtistDTO>, ArtistSearch>
    {
    }
}
