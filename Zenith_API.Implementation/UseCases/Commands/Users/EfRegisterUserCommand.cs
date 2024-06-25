using AutoMapper;
using BCrypt.Net;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.Users
{
    public class EfRegisterUserCommand : EfUseCase, IRegisterUserCommand
    {
        private UserInsertDtoValidator _validator;

        public EfRegisterUserCommand(ZenithContext context, UserInsertDtoValidator validator) : base(context)
        {
            _validator = validator;
        }

        public int Id => 1;

        public string Name => "UserRegistration";

        public void Execute(UserInsertUpdateDTO data)
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
                    new UserUseCase() { UseCaseId = 2 },
                    new UserUseCase() { UseCaseId = 28 },
                    new UserUseCase() { UseCaseId = 29 },
                    new UserUseCase() { UseCaseId = 30 },
                    new UserUseCase() { UseCaseId = 31 },
                    new UserUseCase() { UseCaseId = 32 },
                    new UserUseCase() { UseCaseId = 33 },
                    new UserUseCase() { UseCaseId = 34 },
                    new UserUseCase() { UseCaseId = 35 },
                    new UserUseCase() { UseCaseId = 37 },
                    new UserUseCase() { UseCaseId = 40 },
                    new UserUseCase() { UseCaseId = 41 },
                    new UserUseCase() { UseCaseId = 42 },
                }
            };

            Context.Users.Add(user);

            Context.SaveChanges();
        }
    }
}
