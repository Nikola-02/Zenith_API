using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfAddTrackToPlaylistCommand : EfUseCase, IAddTrackToPlaylistCommand
    {
        public PlaylistTrackDTOValidator _validator { get; set; }
        public EfAddTrackToPlaylistCommand(PlaylistTrackDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 34;

        public string Name => "Add Track to Playlist";

        public void Execute(TrackToPlaylistDTO data)
        {
            _validator.ValidateAndThrow(data);

            var playlist = Context.Playlists.FirstOrDefault(x => x.Id == data.PlaylistId && x.IsActive && x.DeletedAt == null);

            if (playlist == null)
            {
                throw new EntityNotFoundException(Context.Playlists.GetType().ToString(), Id);
            }

            var trackToAdd = Context.Tracks.FirstOrDefault(x => x.Id == data.TrackId && x.IsActive && x.DeletedAt == null);

            if(trackToAdd == null)
            {
                throw new EntityNotFoundException(Context.Tracks.GetType().ToString(), Id);
            }

            playlist.Tracks.Add(trackToAdd);

            Context.SaveChanges();
        }
    }
}
