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
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Playlists
{
    public class EfRemoveTrackFromPlaylistCommand : EfUseCase, IRemoveTrackFromPlaylistCommand
    {
        public RemoveTrackFromPlaylistDTOValidator _validator { get; set; }
        public EfRemoveTrackFromPlaylistCommand(RemoveTrackFromPlaylistDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 35;

        public string Name => "Remove Track from Playlist";

        public void Execute(TrackToPlaylistDTO data)
        {
            _validator.ValidateAndThrow(data);

            var playlistTrackToRemove = Context.PlaylistTracks.FirstOrDefault(x=>x.TrackId == data.TrackId && x.PlaylistId == data.PlaylistId);

            if(playlistTrackToRemove == null)
            {
                throw new EntityNotFoundException(Context.PlaylistTracks.GetType().ToString(), Id);
            }

            Context.PlaylistTracks.Remove(playlistTrackToRemove);

            Context.SaveChanges();
        }
    }
}
