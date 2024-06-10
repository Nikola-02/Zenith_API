using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class Price : Entity
    {
        public decimal Amount { get; set; }

        public int TrackId { get; set; }
        public virtual Track Track { get; set; }
    }
}
