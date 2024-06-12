using BCrypt.Net;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Users
{
    public class EfRegisterUserCommand : EfUseCase, IRegisterUserCommand
    {
        private RegisterUserDtoValidator _validator;

        public EfRegisterUserCommand(ZenithContext context, RegisterUserDtoValidator validator) : base(context)
        {
            _validator = validator;
        }

        public int Id => 1;

        public string Name => "UserRegistration";

        public void Execute(RegisterUserDTO data)
        {
            _validator.ValidateAndThrow(data);

            User user = new User()
            {
                Username = data.Username,
                Email = data.Email,
                FirstName = data.FirstName,
                LastName = data.LastName,
                Password = BCrypt.Net.BCrypt.HashPassword(data.Password),
                UseCases = new List<UserUseCase>()
                {
                    new UserUseCase() { UseCaseId = 2 }
                }
            };

            Context.Users.Add(user);

            Context.SaveChanges();
        }
    }
}
