using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class FileTypeProfile : Profile
    {
        public FileTypeProfile()
        {
            CreateMap<FileType, FileTypeDTO>();
        }
    }
}
