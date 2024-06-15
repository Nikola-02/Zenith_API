using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class GenreProfile : Profile
    {
        public GenreProfile()
        {
            CreateMap<Genre, GenreDTO>();
        }
    }
}
