using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO
{
    public class LookupSearch : PagedSearch
    {
        public string Keyword { get; set; }
    }
}
