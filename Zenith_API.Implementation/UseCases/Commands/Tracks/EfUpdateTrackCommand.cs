using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Utilities;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Tracks
{
    public class EfUpdateTrackCommand : EfUseCase, IUpdateTrackCommand
    {
        public UpdateTrackDTOValidator _validator { get; set; }

        public EfUpdateTrackCommand(UpdateTrackDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 26;

        public string Name => "Update Track";

        public void Execute(TrackInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var track = Context.Tracks.FirstOrDefault(x => x.Id == data.Id);

            if (track == null)
            {
                throw new EntityNotFoundException(Context.Tracks.GetType().ToString(), Id);
            }

            if (string.IsNullOrEmpty(data.TrackFiles.ImagePath))
            {
                FileHelper.MoveFile("temp", "tracks/images", data.TrackFiles.ImagePath);

            }

            if (string.IsNullOrEmpty(data.TrackFiles.SongPath))
            {
                FileHelper.MoveFile("temp", "tracks/songs", data.TrackFiles.SongPath);

            }

            track.Name = data.Name;
            track.Description = data.Description;
            track.Duration = data.Duration;
            track.AlbumId = data.AlbumId;
            track.ArtistId = data.ArtistId;
            track.GenreId = data.GenreId;
            track.MediaTypeId = data.MediaTypeId;

            Context.SaveChanges();
        }
    }
}
