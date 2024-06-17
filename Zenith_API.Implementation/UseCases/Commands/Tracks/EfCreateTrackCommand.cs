using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Utilities;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Tracks
{
    public class EfCreateTrackCommand : ICreateTrackCommand
    {
        public int Id => 3;

        public string Name => "Insert Track";

        private readonly CreateTrackDTOValidator _validator;
        private readonly ZenithContext _context;

        public EfCreateTrackCommand(ZenithContext context, CreateTrackDTOValidator validator)
        {
            _validator = validator;
            _context = context;
        }

        public void Execute(TrackInsertDTO data)
        {
            _validator.ValidateAndThrow(data);

            FileHelper.MoveFile("temp", "tracks/images", data.TrackFiles.ImagePath);
            FileHelper.MoveFile("temp", "tracks/songs", data.TrackFiles.ImagePath);

            //dodaj price i fajlove
            Track track = new Track
            {
                Name = data.Name,
                Description = data.Description,
                Duration = data.Duration,
                AlbumId = data.AlbumId,
                ArtistId = data.ArtistId,
                GenreId = data.GenreId,
                MediaTypeId = data.MediaTypeId,

            };

            _context.Tracks.Add(track);

            _context.SaveChanges();
        }
    }
}
