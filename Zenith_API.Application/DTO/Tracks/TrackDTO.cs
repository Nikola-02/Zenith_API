using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.MediaTypes;

namespace Zenith_API.Application.DTO.Tracks
{
    public class TrackDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int Duration { get; set; }
        public string Image { get; set; }
        public string Audio { get; set; }
        public AlbumDTO Album { get; set; }
        public ArtistDTO Artist { get; set; }
        public GenreDTO Genre { get; set; }
        public MediaTypeDTO MediaType { get; set; }
        public int LikesCount { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
