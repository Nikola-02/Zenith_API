using AutoMapper;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Genres;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Genres
{
    public class EfUpdateGenreCommand : EfUseCase, IUpdateGenreCommand
    {
        public int Id => 9;

        public string Name => "Update Genre";

        private readonly GenreUpdateDTOValidator _validator;

        public EfUpdateGenreCommand(GenreUpdateDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(GenreInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var genre = Context.Genres.FirstOrDefault(x => x.Id == data.Id);

            if (genre == null)
            {
                throw new EntityNotFoundException(Context.Genres.GetType().ToString(), Id);
            }

            genre.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
