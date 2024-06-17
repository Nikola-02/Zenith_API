using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.UseCases.Commands.Users
{
    public class EfDeleteUserCommand : EfUseCase, IDeleteUserCommand
    {
        public int Id => 24;

        public string Name => "Delete User";

        public EfDeleteUserCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var user = Context.Users.FirstOrDefault(x => x.Id == data);

            if (user == null)
            {
                throw new EntityNotFoundException(Context.Users.GetType().ToString(), Id);
            }

            user.IsActive = false;
            user.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
