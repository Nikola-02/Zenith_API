using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.DataAccess;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.UseCases.Commands.Albums
{
    public class EfDeleteAlbumCommand : EfUseCase, IDeleteAlbumCommand
    {
        public int Id => 18;

        public string Name => "Delete Album";

        public EfDeleteAlbumCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var album = Context.Albums.FirstOrDefault(x => x.Id == data);

            if (album == null)
            {
                throw new EntityNotFoundException(Context.Albums.GetType().ToString(), Id);
            }

            var albumUsedByTracks = album.Tracks.Any();

            if (albumUsedByTracks)
            {
                throw new ConflictException("You cant delete this album, because its used in tracks.");
            }

            album.IsActive = false;
            album.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
