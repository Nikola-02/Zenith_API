using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class ArtistProfile : Profile
    {
        public ArtistProfile()
        {
            CreateMap<Artist, ArtistDTO>();
        }
    }
}
