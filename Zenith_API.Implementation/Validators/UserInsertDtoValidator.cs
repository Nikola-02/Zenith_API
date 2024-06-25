using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class BaseUserDtoValidator : AbstractValidator<UserInsertUpdateDTO>
    {
        public BaseUserDtoValidator(ZenithContext ctx)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.Email)
                .NotEmpty()
                .WithMessage("Email is required.")
                .EmailAddress()
                .WithMessage("Email is not in right format.");

            RuleFor(x => x.FirstName)
                                            .NotEmpty()
                                            .WithMessage("FirstName is required.")
                                            .MinimumLength(2)
                                            .WithMessage("Minimum length for FirstName is 2.");

            RuleFor(x => x.LastName)
                                            .NotEmpty()
                                            .WithMessage("LastName is required.")
                                            .MinimumLength(2)
                                            .WithMessage("Minimum length for LastName is 2.");

            
            RuleFor(x => x.Username)
                .NotEmpty()
                .WithMessage("Username is required.");

        }
    }

    public class UserUpdateDtoValidator : BaseUserDtoValidator
    {
        public UserUpdateDtoValidator(ZenithContext ctx) : base(ctx)
        {
            RuleFor(x => x.Password)
                                            .Matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$")
                                            .WithMessage("Password is not in right format. Minimum eight characters, at least one uppercase letter, one lowercase letter and one number")
                                            .When(x => !string.IsNullOrEmpty(x.Password));
        }
    }

    public class UserInsertDtoValidator : BaseUserDtoValidator
    {
        public UserInsertDtoValidator(ZenithContext ctx) : base(ctx)
        {
            RuleFor(x => x.Password)
                                            .NotEmpty()
                                            .WithMessage("Password is required.")
                                            .Matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$")
                                            .WithMessage("Password is not in right format. Minimum eight characters, at least one uppercase letter, one lowercase letter and one number");


            //Ako je must false onda ce vratiti gresku withMessage
            RuleFor(x => x.Email)
                .Must(x => !ctx.Users.Any(u => u.Email == x && u.IsActive && u.DeletedAt == null))
                .WithMessage("Email is already in use.");

            RuleFor(x => x.Username)
                .Must(x => !ctx.Users.Any(u => u.Username == x && u.IsActive && u.DeletedAt == null))
                .WithMessage("Username is already in use.");
        }
    }
}
