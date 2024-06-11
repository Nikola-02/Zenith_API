using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class File : Entity
    {
        public string FileName { get; set; }

        public int FileTypeId { get; set; }
        public virtual FileType FileType { get; set; }

        public virtual ICollection<Track> Tracks { get; set; } = new HashSet<Track>();
    }
}
