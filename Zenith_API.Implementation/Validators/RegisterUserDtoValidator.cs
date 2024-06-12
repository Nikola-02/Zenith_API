using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class RegisterUserDtoValidator : AbstractValidator<RegisterUserDTO>
    {
        public RegisterUserDtoValidator(ZenithContext ctx)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.Email)
                .NotEmpty()
                .WithMessage("Email is required.")
                .EmailAddress()
                .WithMessage("Email is not in right format.")
                .Must(x => !ctx.Users.Any(u => u.Email == x))
                .WithMessage("Email is already in use.");

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

            RuleFor(x => x.Password)
                                            .NotEmpty()
                                            .WithMessage("Password is required.")
                                            .Matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$")
                                            .WithMessage("Minimum eight characters, at least one uppercase letter, one lowercase letter and one number");
           
            RuleFor(x => x.Username)
                .NotEmpty()
                .WithMessage("Username is required.")
                .Must(x => !ctx.Users.Any(u => u.Username == x))
                .WithMessage("Username is already in use.");

        }
    }
}
