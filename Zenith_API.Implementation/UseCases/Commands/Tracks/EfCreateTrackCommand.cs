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
    public class EfCreateTrackCommand : EfUseCase, ICreateTrackCommand
    {
        public int Id => 3;

        public string Name => "Insert Track";

        private readonly CreateTrackDTOValidator _validator;

        public EfCreateTrackCommand(ZenithContext context, CreateTrackDTOValidator validator)
            :base(context)
        {
            _validator = validator;
        }

        public void Execute(TrackInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            FileHelper.MoveFile("temp", "tracks\\images", data.TrackFiles.ImagePath);
            FileHelper.MoveFile("temp", "tracks\\songs", data.TrackFiles.SongPath);

            FileType imageFileType = Context.FileTypes.FirstOrDefault(x=>x.Name == "image" && x.IsActive && x.DeletedAt == null);
            FileType songFileType = Context.FileTypes.FirstOrDefault(x=>x.Name == "audio" && x.IsActive && x.DeletedAt == null);

            Domain.File fileImage = new Domain.File
            {
                FileName = data.TrackFiles.ImagePath,
                FileType = imageFileType
            };

            Domain.File fileSong = new Domain.File
            {
                FileName = data.TrackFiles.SongPath,
                FileType = songFileType
            };

            Track track = new Track
            {
                Name = data.Name,
                Description = data.Description,
                Duration = data.Duration,
                AlbumId = data.AlbumId,
                ArtistId = data.ArtistId,
                GenreId = data.GenreId,
                MediaTypeId = data.MediaTypeId
            };

            track.Prices.Add(new Price
            {
                Amount = data.Price
            });

            track.Files.Add(fileImage);
            track.Files.Add(fileSong);

            Context.Tracks.Add(track);

            Context.SaveChanges();
        }
    }
}
