using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class PlaylistTrackDTOValidator : AbstractValidator<AddTrackToPlaylistDTO>
    {
        public PlaylistTrackDTOValidator(ZenithContext context)
        {
            RuleFor(x => x.TrackId)
                .NotEmpty()
                .WithMessage("Track is required.")
                .Must(y=>context.Tracks.Any(t=>t.Id == y && t.IsActive && t.DeletedAt == null))
                .WithMessage("Track doesn't exist.");
        }
    }
}
