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

            FileType imageFileType = Context.FileTypes.FirstOrDefault(x => x.Name == "image" && x.IsActive && x.DeletedAt == null);
            FileType songFileType = Context.FileTypes.FirstOrDefault(x => x.Name == "audio" && x.IsActive && x.DeletedAt == null);

            if(data.TrackFiles != null)
            {
                if (!string.IsNullOrEmpty(data.TrackFiles.ImagePath))
                {
                    FileHelper.MoveFile("temp", "tracks\\images", data.TrackFiles.ImagePath);

                    Domain.File fileImage = new Domain.File
                    {
                        FileName = data.TrackFiles.ImagePath,
                        FileType = imageFileType
                    };

                    var fileToRemove = track.Files.FirstOrDefault(x=>x.FileType.Name == "image");

                    track.Files.Remove(fileToRemove);

                    track.Files.Add(fileImage);

                }

                if (!string.IsNullOrEmpty(data.TrackFiles.SongPath))
                {
                    FileHelper.MoveFile("temp", "tracks\\songs", data.TrackFiles.SongPath);

                    Domain.File fileSong = new Domain.File
                    {
                        FileName = data.TrackFiles.SongPath,
                        FileType = songFileType
                    };

                    var fileToRemove = track.Files.FirstOrDefault(x => x.FileType.Name == "audio");

                    track.Files.Remove(fileToRemove);

                    track.Files.Add(fileSong);
                }

            }


            track.Name = data.Name;
            track.Description = data.Description;
            track.Duration = data.Duration;
            track.AlbumId = data.AlbumId;
            track.ArtistId = data.ArtistId;
            track.GenreId = data.GenreId;
            track.MediaTypeId = data.MediaTypeId;

            var trackActivePrice = track.Prices.FirstOrDefault(x => x.IsActive && x.DeletedAt == null);

            if (trackActivePrice.Amount != data.Price)
            {
                trackActivePrice.IsActive = false;

                track.Prices.Add(new Price
                {
                    Amount = data.Price,
                });
            }

            Context.SaveChanges();
        }
    }
}
