using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Playlists;

namespace Zenith_API.Application.UseCases.Queries.Playlists
{
    public interface IGetPlaylistsQuery : IQuery<PagedResponse<PlaylistDTO>, PlaylistSearch>
    {
    }
}
