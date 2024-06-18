using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class LikeTrackDTOValidator : AbstractValidator<TrackLikeDTO>
    {
        public LikeTrackDTOValidator(ZenithContext context)
        {
            RuleFor(x => x.TrackId)
                .NotEmpty()
                .WithMessage("Track is required.")
                .Must(x=>context.Tracks.Any(t=>t.Id == x))
                .WithMessage("Track doesn't exist.");
        }
    }
}
