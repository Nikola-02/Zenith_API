using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.UseCaseLogs;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class UseCaseLogProfile : Profile
    {
        public UseCaseLogProfile()
        {
            CreateMap<UseCaseLog, UserCaseLogDTO>();
        }
    }
}
