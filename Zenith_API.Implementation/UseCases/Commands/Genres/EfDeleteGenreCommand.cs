using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Genres;
using Zenith_API.DataAccess;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.UseCases.Commands.Genres
{
    public class EfDeleteGenreCommand : EfUseCase, IDeleteGenreCommand
    {
        public EfDeleteGenreCommand(ZenithContext context) : base(context)
        {
        }

        public int Id => 10;

        public string Name => "Delete Genre";

        public void Execute(int data)
        {
            var genre = Context.Genres.FirstOrDefault(x => x.Id == data);

            if (genre == null)
            {
                throw new EntityNotFoundException(Context.Genres.GetType().ToString(), Id);
            }

            genre.IsActive = false;
            genre.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
