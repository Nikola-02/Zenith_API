using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.Playlists
{
    public class TrackToPlaylistsDTO
    {
        public int TrackId { get; set; }
        public ICollection<int> PlaylistIds { get; set; }
    }
}
