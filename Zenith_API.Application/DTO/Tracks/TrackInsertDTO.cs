using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.Tracks
{
    public class TrackInsertDTO
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int Duration { get; set; }
        public decimal Price { get; set; }
        public int AlbumId { get; set; }
        public int ArtistId { get; set; }
        public int GenreId { get; set; }
        public int MediaTypeId { get; set; }
        public TrackFilesDTO TrackFiles { get; set; }
    }
}
