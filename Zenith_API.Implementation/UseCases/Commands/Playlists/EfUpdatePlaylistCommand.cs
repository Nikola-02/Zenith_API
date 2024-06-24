using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfUpdatePlaylistCommand : EfUseCase, IUpdatePlaylistCommand
    {
        public PlaylistUpdateDTOValidator _validator { get; set; }

        private IApplicationActor _actor;

        public EfUpdatePlaylistCommand(PlaylistUpdateDTOValidator validator, ZenithContext context, IApplicationActor actor) : base(context)
        {
            _validator = validator;
            _actor = actor;
        }

        public int Id => 31;

        public string Name => "Update Playlist";

        public void Execute(PlaylistInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var playlist = Context.Playlists.FirstOrDefault(x => x.Id == data.Id);

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

            playlist.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
