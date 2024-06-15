using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Artists
{
    public class EfCreateArtistCommand : EfUseCase, ICreateArtistCommand
    {
        public int Id => 12;

        public string Name => "Create Artist";

        private readonly ArtistDTOValidator _validator;

        public EfCreateArtistCommand(ArtistDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(ArtistInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            Artist artist = new Artist()
            {
                Name = data.Name,
            };

            Context.Artists.Add(artist);

            Context.SaveChanges();
        }
    }
}
