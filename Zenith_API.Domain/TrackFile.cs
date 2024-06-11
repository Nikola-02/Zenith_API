using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class TrackFile
    {
        public int TrackId { get; set; }
        public virtual Track Track { get; set; }

        public int FileId { get; set; }
        public virtual File File { get; set; }
    }
}
