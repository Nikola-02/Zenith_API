using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;

namespace Zenith_API.Application.UseCases.Commands.Albums
{
    public interface IUpdateAlbumCommand : ICommand<AlbumInsertUpdateDTO>
    {
    }
}
