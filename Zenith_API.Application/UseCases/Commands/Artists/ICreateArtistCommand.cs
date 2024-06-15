using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;

namespace Zenith_API.Application.UseCases.Commands.Artists
{
    public interface ICreateArtistCommand : ICommand<ArtistInsertUpdateDTO>
    {
    }
}
