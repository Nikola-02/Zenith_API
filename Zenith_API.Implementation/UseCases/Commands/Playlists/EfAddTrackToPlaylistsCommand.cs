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
    public class EfAddTrackToPlaylistsCommand : EfUseCase, IAddTrackToPlaylistsCommand
    { 

        private TrackToPlaylistsValidator _validator;

        public EfAddTrackToPlaylistsCommand(TrackToPlaylistsValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 42;

        public string Name => "Add track to list of playlist";

        public void Execute(TrackToPlaylistsDTO data)
        {
            _validator.ValidateAndThrow(data);

            var track = Context.Tracks.FirstOrDefault(x=>x.IsActive && x.DeletedAt == null && x.Id == data.TrackId);

            if(track == null)
            {
                throw new EntityNotFoundException(Context.Tracks.GetType().ToString(), Id);
            }

            //Brisanje track iz playlists
            
            var playlistsTracksToDelete = Context.PlaylistTracks.Where(x => x.TrackId == data.TrackId).ToList();

            Context.PlaylistTracks.RemoveRange(playlistsTracksToDelete);

            //Dodavanje track u plejliste

            if (data.PlaylistIds.Count != 0)
            {
                var playlistsTrackToAdd = new List<PlaylistTrack>();

                foreach (var item in data.PlaylistIds)
                {
                    var playlistTrack = new PlaylistTrack()
                    {
                        PlaylistId = item,
                        TrackId = data.TrackId,
                    };

                    playlistsTrackToAdd.Add(playlistTrack);
                }

                Context.PlaylistTracks.AddRange(playlistsTrackToAdd);
            }
            

            Context.SaveChanges();
        }
    }
}
