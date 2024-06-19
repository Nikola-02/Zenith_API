using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.Tracks
{
    public class TrackSearch : TablesSearch
    {
        public DateTime? ReleasedDateFrom { get; set; }
        public DateTime? ReleasedDateTo { get; set; }
        public decimal? PriceLessThan { get; set; }
        public decimal? PriceGreaterThan { get; set; }
        public int? DurationGreaterThan { get; set; }
        public int? AlbumId { get; set; }
        public int? ArtistId { get; set; }
        public int? GenreId { get; set; }
        public int? MediaTypeId { get; set; }
    }
}
