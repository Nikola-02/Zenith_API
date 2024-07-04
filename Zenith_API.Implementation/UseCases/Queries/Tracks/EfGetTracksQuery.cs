using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Queries.Tracks;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.Tracks
{
    public class EfGetTracksQuery : EfUseCaseMapper, IGetTracksQuery
    {
        public EfGetTracksQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 33;

        public string Name => "Search Tracks";

        public PagedResponse<TrackDTO> Execute(TrackSearch search)
        {
            var query = Context.Tracks.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            if (!string.IsNullOrEmpty(search.Keyword))
            {
                query = query.Where(x => x.Name.Contains(search.Keyword));
            }

            if (search.ReleasedDateFrom != null)
            {
                query = query.Where(x=>x.CreatedAt >= search.ReleasedDateFrom);
            }

            if (search.ReleasedDateTo != null)
            {
                query = query.Where(x => x.CreatedAt <= search.ReleasedDateTo);
            }

            if (search.PriceGreaterThan != null)
            {
                query = query.Where(x => x.Prices.FirstOrDefault(p=>p.TrackId == x.Id && p.IsActive && p.DeletedAt == null).Amount >= search.PriceGreaterThan);
            }

            if (search.PriceLessThan != null)
            {
                query = query.Where(x => x.Prices.FirstOrDefault(p => p.TrackId == x.Id && p.IsActive && p.DeletedAt == null).Amount <= search.PriceLessThan);
            }

            if (search.DurationGreaterThan != null)
            {
                query = query.Where(x => x.Duration >= search.DurationGreaterThan);
            }

            if (search.AlbumId != null)
            {
                query = query.Where(x => x.AlbumId == search.AlbumId);
            }

            if (search.ArtistId != null)
            {
                query = query.Where(x => x.ArtistId == search.ArtistId);
            }

            if (search.GenreId != null)
            {
                query = query.Where(x => x.GenreId == search.GenreId);
            }

            if (search.MediaTypeId != null)
            {
                query = query.Where(x => x.MediaTypeId == search.MediaTypeId);
            }

            if (search.Sort == null)
            {
                query = query.OrderBy(x => x.CreatedAt);
            }
            else
            {
                if (search.Sort.SortProperty == "price")
                {
                    if (search.Sort.Direction == SortDirection.Asc)
                    {
                        query = query.OrderBy(x => x.Prices.FirstOrDefault(p => p.IsActive && p.DeletedAt == null).Amount);
                    }
                    else
                    {
                        query = query.OrderByDescending(x => x.Prices.FirstOrDefault(p => p.IsActive && p.DeletedAt == null).Amount);
                    }
                }

                if (search.Sort.SortProperty == "duration")
                {
                    if (search.Sort.Direction == SortDirection.Asc)
                    {
                        query = query.OrderBy(x => x.Duration);
                    }
                    else
                    {
                        query = query.OrderByDescending(x => x.Duration);
                    }
                }

                if (search.Sort.SortProperty == "name")
                {
                    if (search.Sort.Direction == SortDirection.Asc)
                    {
                        query = query.OrderBy(x => x.Name);
                    }
                    else
                    {
                        query = query.OrderByDescending(x => x.Name);
                    }
                }
            }

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<TrackDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<TrackDTO>>(query.ToList())
            };
        }
    }
}
