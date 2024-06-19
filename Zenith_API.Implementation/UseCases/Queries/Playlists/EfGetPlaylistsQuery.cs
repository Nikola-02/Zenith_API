﻿using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.UseCases.Queries.Playlists;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Queries.Playlists
{
    public class EfGetPlaylistsQuery : EfUseCaseMapper, IGetPlaylistsQuery
    {
        public EfGetPlaylistsQuery(ZenithContext context, IMapper mapper) : base(context, mapper)
        {
        }

        public int Id => 36;

        public string Name => "Search Playlists";

        public PagedResponse<PlaylistDTO> Execute(PlaylistSearch search)
        {
            var query = Context.Playlists.AsQueryable();

            query = query.Where(x => x.IsActive == true && x.DeletedAt == null);

            if (!string.IsNullOrEmpty(search.Keyword))
            {
                query = query.Where(x => x.Name.Contains(search.Keyword));
            }

            int totalCount = query.Count();

            int perPage = search.PerPage.HasValue ? (int)Math.Abs((double)search.PerPage) : 10;
            int page = search.Page.HasValue ? (int)Math.Abs((double)search.Page) : 1;

            int skip = perPage * (page - 1);

            query = query.Skip(skip).Take(perPage);

            return new PagedResponse<PlaylistDTO>
            {
                CurrentPage = page,
                PerPage = perPage,
                TotalCount = totalCount,
                Data = Mapper.Map<List<PlaylistDTO>>(query.ToList())
            };
        }
    }
}
