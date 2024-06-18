using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Commands.Tracks
{
    public class EfDeleteTrackCommand : EfUseCase, IDeleteTrackCommand
    {
        public EfDeleteTrackCommand(ZenithContext context) : base(context)
        {
        }

        public int Id => 27;

        public string Name => "Delete Track";

        public void Execute(int data)
        {
            var track = Context.Tracks.FirstOrDefault(x => x.Id == data);

            if (track == null)
            {
                throw new EntityNotFoundException(Context.Tracks.GetType().ToString(), Id);
            }

            track.IsActive = false;
            track.DeletedAt = DateTime.UtcNow;

            var trackPrice = track.Prices.FirstOrDefault(x=>x.IsActive && x.DeletedAt == null);

            trackPrice.IsActive = false;
            trackPrice.DeletedAt = DateTime.UtcNow;

            var trackFiles = track.Files.ToList();

            foreach (var item in trackFiles)
            {
                item.IsActive = false;
                item.DeletedAt = DateTime.UtcNow;
            }

            Context.SaveChanges();
        }
    }
}
