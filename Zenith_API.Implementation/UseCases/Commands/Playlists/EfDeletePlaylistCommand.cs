using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfDeletePlaylistCommand : EfUseCase, IDeletePlaylistCommand
    {
        private IApplicationActor _actor;

        public EfDeletePlaylistCommand(ZenithContext context, IApplicationActor actor) : base(context)
        {
            _actor = actor;
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

            var isAuthorOfPlaylist = playlist.UserId == _actor.Id;
            var isAdmin = _actor.AllowedUseCases.Contains(UpdateAccessUseCasesDTOValidator.UpdateUseCaseAccessId);

            if (!isAuthorOfPlaylist && !isAdmin)
            {
                throw new ConflictException("You are not the owner of this playlist or you are not admin.");
            }

            playlist.IsActive = false;
            playlist.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
