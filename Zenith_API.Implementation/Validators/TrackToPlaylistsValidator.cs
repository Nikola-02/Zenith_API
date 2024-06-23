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
    public class TrackToPlaylistsValidator : AbstractValidator<TrackToPlaylistsDTO>
    {
        public TrackToPlaylistsValidator(ZenithContext context)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.TrackId)
                .NotEmpty()
                .WithMessage("Track is required.")
                .Must(y => context.Tracks.Any(t => t.Id == y && t.IsActive && t.DeletedAt == null))
                .WithMessage("Track doesn't exist.");

            RuleFor(x => x.PlaylistIds)
                .Must(x => x.All(id => context.Playlists.Where(x => x.IsActive && x.DeletedAt == null).Select(x => x.Id).Contains(id)))
                .WithMessage("Some playlists are not valid.")
                .Must(x => x.Distinct().Count() == x.Count())
                .WithMessage("Only unique usecase ids must be delivered.")
                .When(x => x.PlaylistIds.Any());
                
        }
    }
}
