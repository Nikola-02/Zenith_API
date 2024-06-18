using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.TrackLikes;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.TrackLikes
{
    public class EfLikeTrackCommand : EfUseCase, ILikeTrackCommand
    {
        public LikeTrackDTOValidator _validator { get; set; }
        public IApplicationActor _actor { get; set; }

        public EfLikeTrackCommand(LikeTrackDTOValidator validator, ZenithContext context, IApplicationActor actor) : base(context)
        {
            _validator = validator;
            _actor = actor;
        }

        public int Id => 28;

        public string Name => "Like Track";

        public void Execute(TrackLikeDTO data)
        {
            _validator.ValidateAndThrow(data);

            var alreadyLiked = Context.Likes.Any(x => x.TrackId == data.TrackId && x.UserId == _actor.Id);

            if (alreadyLiked)
            {
                throw new ConflictException("You already liked this track.");
            }

            Like like = new Like()
            {
                TrackId = data.TrackId,
                UserId = _actor.Id
            };

            Context.Likes.Add(like);

            Context.SaveChanges();
        }
    }
}
