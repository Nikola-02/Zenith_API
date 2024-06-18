using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Playlists;

namespace Zenith_API.Application.UseCases.Commands.Playlists
{
    public interface IUpdatePlaylistCommand : ICommand<PlaylistInsertUpdateDTO>
    {
    }
}
