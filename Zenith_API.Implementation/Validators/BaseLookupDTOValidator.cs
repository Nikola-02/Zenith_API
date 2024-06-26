﻿using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.DTO;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class BaseLookupDTOValidator : AbstractValidator<LookupTablesInsertUpdateDTO>
    {
        private ZenithContext _context;

        protected ZenithContext Context => _context;

        public BaseLookupDTOValidator(ZenithContext context)
        {
            _context = context;

            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.Name)
                .NotEmpty()
                .WithMessage("Name is required.");
            
        }
    }

    public class FileTypeDTOValidator : BaseLookupDTOValidator
        
    {
        public FileTypeDTOValidator(ZenithContext context)
            :base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.FileTypes.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("FileTypes with same name already exists.");
        }
    }

    public class FileTypeUpdateDTOValidator : BaseLookupDTOValidator

    {
        public FileTypeUpdateDTOValidator(ZenithContext context)
            : base(context)
        {

        }
    }

    public class GenreDTOValidator : BaseLookupDTOValidator

    {
        public GenreDTOValidator(ZenithContext context)
            : base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.Genres.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("Genre with same name already exists.");
        }
    }

    public class GenreUpdateDTOValidator : BaseLookupDTOValidator

    {
        public GenreUpdateDTOValidator(ZenithContext context)
            : base(context)
        {

        }
    }

    public class ArtistDTOValidator : BaseLookupDTOValidator

    {
        public ArtistDTOValidator(ZenithContext context)
            : base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.Artists.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("Artist with same name already exists.");
        }
    }

    public class ArtistUpdateDTOValidator : BaseLookupDTOValidator

    {
        public ArtistUpdateDTOValidator(ZenithContext context)
            : base(context)
        {

        }
    }

    public class AlbumDTOValidator : BaseLookupDTOValidator

    {
        public AlbumDTOValidator(ZenithContext context)
            : base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.Albums.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("Album with same name already exists.");
        }
    }

    public class AlbumUpdateDTOValidator : BaseLookupDTOValidator

    {
        public AlbumUpdateDTOValidator(ZenithContext context)
            : base(context)
        {

        }
    }

    public class MediaTypeDTOValidator : BaseLookupDTOValidator

    {
        public MediaTypeDTOValidator(ZenithContext context)
            : base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.MediaTypes.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null))
                .WithMessage("MediaType with same name already exists.");
        }
    }

    public class MediaTypeUpdateDTOValidator : BaseLookupDTOValidator

    {
        public MediaTypeUpdateDTOValidator(ZenithContext context)
            : base(context)
        {
  
        }
    }

    public class PlaylistDTOValidator : BaseLookupDTOValidator
    {
        public PlaylistDTOValidator(ZenithContext context, IApplicationActor _actor)
            :base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.Playlists.Any(t => t.Name == x && t.IsActive && t.DeletedAt == null && _actor.Id == t.UserId))
                .WithMessage("Playlist for you with same name already exists.");
        }
    }

    public class PlaylistUpdateDTOValidator : BaseLookupDTOValidator
    {
        public PlaylistUpdateDTOValidator(ZenithContext context)
            : base(context)
        {

        }
    }
}
