using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class BaseTrackDTOValidator : AbstractValidator<TrackInsertUpdateDTO>
    {
        public BaseTrackDTOValidator(ZenithContext context)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.Name)
                .NotEmpty()
                .WithMessage("Name is required.");
                

            RuleFor(x => x.Price)
                .NotEmpty()
                .WithMessage("Price is required.")
                .GreaterThan(0)
                .WithMessage("Price must be greater than 0.");

            RuleFor(x => x.Duration)
                .NotEmpty()
                .WithMessage("Duration is required.")
                .GreaterThan(15)
                .WithMessage("Track duration must be greater than 15 seconds."); ;

            RuleFor(x => x.ArtistId)
                .NotEmpty().WithMessage("Artist is required.")
                .Must(x => context.Artists.Any(a => a.Id == x && a.IsActive && a.DeletedAt == null))
                .WithMessage("Provided artist doesn't exist.");

            RuleFor(x => x.AlbumId)
                .NotEmpty()
                .WithMessage("Album is required.")
                .Must(x => context.Albums.Any(a => a.Id == x && a.IsActive && a.DeletedAt == null))
                .WithMessage("Provided album doesn't exist.");

            RuleFor(x => x.GenreId)
                .NotEmpty()
                .WithMessage("Genre is required.")
                .Must(x => context.Genres.Any(g => g.Id == x && g.IsActive && g.DeletedAt == null))
                .WithMessage("Provided genre doesn't exist.");

            RuleFor(x => x.MediaTypeId)
                .NotEmpty()
                .WithMessage("MediaType is required.")
                .Must(x => context.MediaTypes.Any(m => m.Id == x && m.IsActive && m.DeletedAt == null))
                .WithMessage("Provided mediaType doesn't exist.");
        }
    }

    public class CreateTrackDTOValidator : BaseTrackDTOValidator
    {
        public CreateTrackDTOValidator(ZenithContext context) : base(context)
        {
            RuleFor(x=>x.Name)
                .Must(x => !context.Tracks.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("Track with same name already exists.");

            RuleFor(x => x.TrackFiles.ImagePath)
                .NotEmpty()
                .WithMessage("ImagePath is required.")
                .DependentRules(() =>
                {
                    RuleFor(x => x.TrackFiles.ImagePath)
                            .Must((x, fileName) =>
                                {
                                    var path = Path.Combine("wwwroot", "temp", fileName);

                                    var exists = Path.Exists(path);

                                    return exists;
                                })
                            .WithMessage("Image doesn't exist.");
                });

            RuleFor(x => x.TrackFiles.SongPath)
                .NotEmpty()
                .WithMessage("SongPath is required.")
                .DependentRules(() =>
                {
                    RuleFor(x => x.TrackFiles.SongPath)
                            .Must((x, fileName) =>
                            {
                                var path = Path.Combine("wwwroot", "temp", fileName);

                                var exists = Path.Exists(path);

                                return exists;
                            })
                            .WithMessage("Song doesn't exist.");
                });
        }
    }

    public class UpdateTrackDTOValidator : BaseTrackDTOValidator
    {
        public UpdateTrackDTOValidator(ZenithContext context) : base(context)
        {
            RuleFor(x => x.TrackFiles.ImagePath)
            .Must((x, fileName) =>
            {
                if (string.IsNullOrEmpty(fileName))
                {
                    return true;
                }

                var path = Path.Combine("wwwroot", "temp", fileName);
                return File.Exists(path);
            })
            .WithMessage("Image doesn't exist.");

            RuleFor(x => x.TrackFiles.SongPath)
            .Must((x, fileName) =>
            {
                if (string.IsNullOrEmpty(fileName))
                {
                    return true;
                }

                var path = Path.Combine("wwwroot", "temp", fileName);
                return File.Exists(path);
            })
            .WithMessage("Song doesn't exist.");
        }
    }
}
