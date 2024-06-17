using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Users;

namespace Zenith_API.Application.UseCases.Commands.Users
{
    public interface IUpdateUserCommand : ICommand<UserInsertUpdateDTO>
    {
    }
}
