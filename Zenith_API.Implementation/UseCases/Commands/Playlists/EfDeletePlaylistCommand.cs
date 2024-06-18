using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfDeletePlaylistCommand : EfUseCase, IDeletePlaylistCommand
    {
        public EfDeletePlaylistCommand(ZenithContext context) : base(context)
        {
        }

        public int Id => 32;

        public string Name => "Delete Playlist";

        public void Execute(int data)
        {
            var playlist = Context.Playlists.FirstOrDefault(x => x.Id == data);

            if (playlist == null)
            {
                throw new EntityNotFoundException(Context.Playlists.GetType().ToString(), Id);
            }

            playlist.IsActive = false;
            playlist.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
