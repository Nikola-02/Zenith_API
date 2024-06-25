using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Users
{
    public class EfUpdateUserCommand : EfUseCase, IUpdateUserCommand
    {
        public int Id => 23;

        public string Name => "Update User";

        public UserUpdateDtoValidator _validator { get; set; }

        public EfUpdateUserCommand(UserUpdateDtoValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(UserInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var user = Context.Users.FirstOrDefault(x => x.Id == data.Id);

            if (user == null)
            {
                throw new EntityNotFoundException(Context.Users.GetType().ToString(), Id);
            }

            if (!string.IsNullOrEmpty(data.Password))
            {
                user.Password = BCrypt.Net.BCrypt.HashPassword(data.Password);
            }

            user.Username = data.Username;
            user.Email = data.Email;
            user.FirstName = data.FirstName;
            user.LastName = data.LastName;
            
            Context.SaveChanges();
        }
    }
}
