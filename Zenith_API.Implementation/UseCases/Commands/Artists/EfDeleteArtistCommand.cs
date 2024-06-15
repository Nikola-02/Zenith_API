using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Commands.Artists
{
    public class EfDeleteArtistCommand : EfUseCase, IDeleteArtistCommand
    {
        public int Id => 14;

        public string Name => "Delete Artist";

        public EfDeleteArtistCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var artist = Context.Artists.FirstOrDefault(x => x.Id == data);

            if (artist == null)
            {
                throw new EntityNotFoundException(Context.Artists.GetType().ToString(), Id);
            }

            artist.IsActive = false;
            artist.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
