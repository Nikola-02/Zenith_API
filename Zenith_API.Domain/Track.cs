﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class Track : Entity
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int Duration { get; set; }

        public int ArtistId { get; set; }
        public virtual Artist Artist { get; set; }

        public int AlbumId { get; set; }
        public virtual Album Album { get; set; }

        public int GenreId { get; set; }
        public virtual Genre Genre { get; set; }

        public int MediaTypeId { get; set; }
        public virtual MediaType MediaType { get; set; }

        public virtual ICollection<Price> Prices { get; set; } = new HashSet<Price>();
    }
}
