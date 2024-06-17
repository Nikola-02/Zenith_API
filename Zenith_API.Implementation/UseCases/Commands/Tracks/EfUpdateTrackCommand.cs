using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Commands.Tracks
{
    public class EfUpdateTrackCommand : EfUseCase, IUpdateTrackCommand
    {
        public EfUpdateTrackCommand(ZenithContext context) : base(context)
        {
        }

        public int Id => 26;

        public string Name => "Update Track";

        public void Execute(TrackInsertUpdateDTO data)
        {
            
        }
    }
}
