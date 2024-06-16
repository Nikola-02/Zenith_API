using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class MediaTypeProfile : Profile
    {
        public MediaTypeProfile()
        {
            CreateMap<MediaType, MediaTypeDTO>();
        }
    }
}
