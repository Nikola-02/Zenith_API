using AutoMapper;
using Azure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Queries.Tracks;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace Zenith_API.Implementation.UseCases.Queries.Tracks
{
    public class EfGetSingleTrackQuery : EfUseCaseMapper, IGetSingleTrackQuery
    {
        public EfGetSingleTrackQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 40;

        public string Name => "Get Single Track";

        public TrackDTO Execute(SingleTrackSearch search)
        {
            var query = Context.Tracks.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            var track = query.FirstOrDefault(x=>x.Id == search.Id);

            if (track == null)
            {
                throw new EntityNotFoundException(Context.Tracks.GetType().ToString(), Id);
            }

            return new TrackDTO
            {
                Id = track.Id,
                Name = track.Name,
                Description = track.Description,
                Duration = track.Duration,
                CreatedAt = track.CreatedAt,
                Image = track.Files.FirstOrDefault(f => f.FileType.Name == "image" && f.IsActive && f.DeletedAt == null).FileName,
                Audio = track.Files.FirstOrDefault(f => f.FileType.Name == "audio" && f.IsActive && f.DeletedAt == null).FileName,
                Album = new AlbumDTO
                {
                    Id = track.Album.Id,
                    Name = track.Album.Name,
                },
                Artist = new ArtistDTO
                {
                    Id = track.Artist.Id,
                    Name = track.Artist.Name,
                },
                Genre = new GenreDTO
                {
                    Id = track.Genre.Id,
                    Name = track.Genre.Name,
                },
                MediaType = new MediaTypeDTO
                {
                    Id = track.MediaType.Id,
                    Name = track.MediaType.Name,
                },
                Price = track.Prices.FirstOrDefault(p => p.IsActive && p.DeletedAt == null).Amount,
                LikesCount = track.Likes.Count()
            };
        }
    }
}
