using Zenith_API.Application.UseCases.Commands.TrackLikes;
using Zenith_API.DataAccess;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Numerics;
using Zenith_API.Application;
using Zenith_API.Application.Exceptions;

namespace Zenith_API.Implementation.UseCases.Commands.TrackLikes
{
    public class EfUndoLikeTrackCommand : EfUseCase, IUndoLikeTrackCommand
    {
        public IApplicationActor _actor { get; set; }

        public EfUndoLikeTrackCommand(ZenithContext context, IApplicationActor actor) : base(context)
        {
            _actor = actor;
        }

        public int Id => 29;

        public string Name => "Undo like";

        public void Execute(int data)
        {
            var likeForActorAndTrack = Context.Likes.FirstOrDefault(x => x.TrackId == data && x.UserId == _actor.Id);

            if (likeForActorAndTrack == null)
            {
                throw new ConflictException("This track is not liked, so you can't undo like.");
            }

            Context.Likes.Remove(likeForActorAndTrack);

            Context.SaveChanges();
        }
    }
}
