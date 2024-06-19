using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.AccessUseCase;
using Zenith_API.DataAccess;

namespace Zenith_API.Implementation.Validators
{
    public class UpdateAccessUseCasesDTOValidator : AbstractValidator<AccessUseCaseDTO>
    {
        private static int UpdateUseCaseAccessId = 39;

        public UpdateAccessUseCasesDTOValidator(ZenithContext context)
        {
            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.UserId)
                    .Must(x => context.Users.Any(u => u.Id == x && u.IsActive && u.DeletedAt == null))
                    .WithMessage("Requested user doesn't exist.")
                    .Must(x => !context.UserUseCases.Any(u => u.UseCaseId == UpdateUseCaseAccessId && u.UserId == x))
                    .WithMessage("Not allowed to change this user acess for use cases.");

            RuleFor(x => x.UseCaseIds)
                .NotEmpty().WithMessage("Parameter is required.")
                .Must(x => x.All(id => id > 0 && id <= UseCaseHandler.MaxUseCaseId)).WithMessage("Invalid usecase id range.")
                .Must(x => x.Distinct().Count() == x.Count()).WithMessage("Only unique usecase ids must be delivered.");

        }
    }
}
