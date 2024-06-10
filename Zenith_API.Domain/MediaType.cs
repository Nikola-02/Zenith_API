using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class MediaType : NamedEntity
    {
        public virtual ICollection<Track> Tracks { get; set; } = new HashSet<Track>();
    }
}
