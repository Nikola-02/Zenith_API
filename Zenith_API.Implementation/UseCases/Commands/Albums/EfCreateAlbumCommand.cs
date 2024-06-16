using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Albums
{
    public class EfCreateAlbumCommand : EfUseCase, ICreateAlbumCommand
    {
        public int Id => 16;

        public string Name => "Create Album";

        public AlbumDTOValidator _validator { get; set; }

        public EfCreateAlbumCommand(AlbumDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(AlbumInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            Album album = new Album()
            {
                Name = data.Name,
            };

            Context.Albums.Add(album);

            Context.SaveChanges();
        }
    }
}
