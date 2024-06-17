using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class UserProfile : Profile
    {
        public UserProfile()
        {
            CreateMap<User, UserDTO>();
        }
    }
}
