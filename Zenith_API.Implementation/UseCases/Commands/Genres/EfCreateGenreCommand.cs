using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.UseCases.Commands.Genres;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Genres
{
    public class EfCreateGenreCommand : EfUseCase,ICreateGenreCommand
    {
        public int Id => 8;

        public string Name => "Create Genre";

        private readonly GenreDTOValidator _validator;

        public EfCreateGenreCommand(GenreDTOValidator validator, ZenithContext context) : base(context) 
        {
            _validator = validator;
        }

        public void Execute(GenreInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            Genre genre = new Genre()
            {
                Name = data.Name,
            };

            Context.Genres.Add(genre);

            Context.SaveChanges();
        }
    }
}
