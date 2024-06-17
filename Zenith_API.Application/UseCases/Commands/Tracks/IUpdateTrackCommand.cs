using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;

namespace Zenith_API.Application.UseCases.Commands.Tracks
{
    public interface IUpdateTrackCommand : ICommand<TrackInsertUpdateDTO>
    {
    }
}
