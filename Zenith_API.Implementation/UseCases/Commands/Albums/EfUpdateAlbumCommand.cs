using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Albums
{
    public class EfUpdateAlbumCommand : EfUseCase, IUpdateAlbumCommand
    {
        public int Id => 17;

        public string Name => "Update Album";

        public AlbumUpdateDTOValidator _validator { get; set; }

        public EfUpdateAlbumCommand(AlbumUpdateDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(AlbumInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var album = Context.Albums.FirstOrDefault(x => x.Id == data.Id);

            if (album == null)
            {
                throw new EntityNotFoundException(Context.Albums.GetType().ToString(), Id);
            }

            album.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
