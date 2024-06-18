using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfCreatePlaylistCommand : EfUseCase, ICreatePlaylistCommand
    {
        public PlaylistDTOValidator _validator { get; set; }
        public IApplicationActor _actor { get; set; }
        public EfCreatePlaylistCommand(PlaylistDTOValidator validator, IApplicationActor actor, ZenithContext context) : base(context)
        {
            _validator = validator;
            _actor = actor;
        }

        public int Id => 30;

        public string Name => "Create playlist";

        public void Execute(LookupTablesInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            Playlist playlist = new Playlist()
            {
                Name = data.Name,
                UserId = _actor.Id
            };

            Context.Playlists.Add(playlist);

            Context.SaveChanges();
        }
    }
}
