using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.DTO.AccessUseCase
{
    public class AccessUseCaseDTO
    {
        public int UserId { get; set; }
        public ICollection<int> UseCaseIds { get; set; }
    }
}
