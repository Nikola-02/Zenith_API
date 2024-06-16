using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Artists
{
    public class EfUpdateArtistCommand : EfUseCase, IUpdateArtistCommand
    {
        private readonly ArtistUpdateDTOValidator _validator;

        public EfUpdateArtistCommand(ArtistUpdateDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 13;

        public string Name => "Update Artist";

        public void Execute(ArtistInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var artist = Context.Artists.FirstOrDefault(x => x.Id == data.Id);

            if (artist == null)
            {
                throw new EntityNotFoundException(Context.Artists.GetType().ToString(), Id);
            }

            artist.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
