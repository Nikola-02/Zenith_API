using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.TrackLikes;

namespace Zenith_API.Application.UseCases.Commands.TrackLikes
{
    public interface ILikeTrackCommand : ICommand<TrackLikeDTO>
    {
    }
}
