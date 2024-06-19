using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.UseCaseLogs
{
    public class UserCaseLogDTO
    {
        public string UseCaseName { get; set; }
        public string Username { get; set; }
        public string UseCaseData { get; set; }
        public DateTime ExecutedAt { get; set; }
    }
}
