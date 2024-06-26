using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.DataAccess;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.UseCases.Commands.Artists
{
    public class EfDeleteArtistCommand : EfUseCase, IDeleteArtistCommand
    {
        public int Id => 14;

        public string Name => "Delete Artist";

        public EfDeleteArtistCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var artist = Context.Artists.FirstOrDefault(x => x.Id == data);

            if (artist == null)
            {
                throw new EntityNotFoundException(Context.Artists.GetType().ToString(), Id);
            }

            var artistUsedByTracks = artist.Tracks.Any();

            if (artistUsedByTracks)
            {
                throw new ConflictException("You cant delete this artist, because its used in tracks.");
            }

            artist.IsActive = false;
            artist.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
