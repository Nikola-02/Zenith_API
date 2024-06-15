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
    public class EfCreateGenreCommand : ICreateGenreCommand
    {
        public int Id => 8;

        public string Name => "Create Genre";

        private readonly GenreDTOValidator _validator;
        private readonly ZenithContext _context;

        public EfCreateGenreCommand(GenreDTOValidator validator, ZenithContext context)
        {
            _validator = validator;
            _context = context;
        }

        public void Execute(GenreInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            Genre genre = new Genre()
            {
                Name = data.Name,
            };

            _context.Genres.Add(genre);

            _context.SaveChanges();
        }
    }
}
