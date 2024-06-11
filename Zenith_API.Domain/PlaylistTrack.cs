using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class PlaylistTrack
    {
        public int PlaylistId { get; set; }
        public virtual Playlist Playlist { get; set; }

        public int TrackId { get; set; }
        public virtual Track Track { get; set; }
    }
}
