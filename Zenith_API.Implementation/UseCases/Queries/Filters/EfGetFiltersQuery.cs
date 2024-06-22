using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Filters;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.UseCases.Queries.Filters;
using Zenith_API.DataAccess;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace Zenith_API.Implementation.UseCases.Queries.Filters
{
    public class EfGetFiltersQuery : EfUseCaseMapper, IGetFiltersQuery
    {
        public EfGetFiltersQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 41;

        public string Name => "Get Filters";

        public FiltersDTO Execute(FiltersSearch search)
        {
            var albumQuery = Context.Albums.AsQueryable();
            var artistsQuery = Context.Artists.AsQueryable();
            var genresQuery = Context.Genres.AsQueryable();
            var mediaTypesQuery = Context.MediaTypes.AsQueryable();

            albumQuery.Where(x=>x.IsActive && x.DeletedAt == null);
            artistsQuery.Where(x=>x.IsActive && x.DeletedAt == null);
            genresQuery.Where(x=>x.IsActive && x.DeletedAt == null);
            mediaTypesQuery.Where(x=>x.IsActive && x.DeletedAt == null);

            return new FiltersDTO
            {
                Albums = Mapper.Map<List<AlbumDTO>>(albumQuery.ToList()),
                Artists = Mapper.Map<List<ArtistDTO>>(artistsQuery.ToList()),
                Genres = Mapper.Map<List<GenreDTO>>(genresQuery.ToList()),
                MediaTypes = Mapper.Map<List<MediaTypeDTO>>(mediaTypesQuery.ToList())
            };
        }
    }
}
