using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.UseCaseLogs
{
    public class UseCaseLogSearch : TablesSearch
    {
        public DateTime? DateFrom { get; set; }
        public DateTime? DateTo { get; set; }
    }
}
