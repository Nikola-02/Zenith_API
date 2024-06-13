using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Tracks
{
    public class EfCreateTrackCommand : ICreateTrackCommand
    {
        public int Id => 2;

        public string Name => "InsertTrack";

        private readonly CreateTrackDTOValidator _validator;

        public EfCreateTrackCommand(CreateTrackDTOValidator validator)
        {
            _validator = validator;
        }

        public void Execute(TrackInsertUpdateDTO data)
        {
            
        }
    }
}
