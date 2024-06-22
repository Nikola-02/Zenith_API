using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.MediaTypes;

namespace Zenith_API.Application.DTO.Filters
{
    public class FiltersDTO
    {
        public ICollection<AlbumDTO> Albums { get; set; }
        public ICollection<GenreDTO> Genres { get; set; }
        public ICollection<ArtistDTO> Artists { get; set; }
        public ICollection<MediaTypeDTO> MediaTypes { get; set; }
    }
}
