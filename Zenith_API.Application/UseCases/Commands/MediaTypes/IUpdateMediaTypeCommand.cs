using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.MediaTypes;

namespace Zenith_API.Application.UseCases.Commands.MediaTypes
{
    public interface IUpdateMediaTypeCommand : ICommand<MediaTypeInsertUpdateDTO>
    {
    }
}
