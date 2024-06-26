using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.MediaTypes;
using Zenith_API.DataAccess;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.UseCases.Commands.MediaTypes
{
    public class EfDeleteMediaTypeCommand : EfUseCase, IDeleteMediaTypeCommand
    {
        public int Id => 22;

        public string Name => "Delete MediaType";

        public EfDeleteMediaTypeCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var mediaType = Context.MediaTypes.FirstOrDefault(x => x.Id == data);

            if (mediaType == null)
            {
                throw new EntityNotFoundException(Context.MediaTypes.GetType().ToString(), Id);
            }

            var mediaTypeUsedByTracks = mediaType.Tracks.Any();

            if (mediaTypeUsedByTracks)
            {
                throw new ConflictException("You cant delete this mediaType, because its used in tracks.");
            }

            mediaType.IsActive = false;
            mediaType.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
