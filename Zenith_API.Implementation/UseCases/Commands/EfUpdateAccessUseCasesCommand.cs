using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.AccessUseCase;
using Zenith_API.Application.UseCases.Commands.AccessUseCases;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands
{
    public class EfUpdateAccessUseCasesCommand : EfUseCase, IUpdateAccessUseCasesCommand
    {
        public UpdateAccessUseCasesDTOValidator _validator { get; set; }

        public EfUpdateAccessUseCasesCommand(UpdateAccessUseCasesDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public int Id => 39;

        public string Name => "Update use case access for user";

        public void Execute(AccessUseCaseDTO data)
        {
            _validator.ValidateAndThrow(data);

            var userUseCases = Context.UserUseCases
                                      .Where(x => x.UserId == data.UserId)
                                      .ToList();

            Context.UserUseCases.RemoveRange(userUseCases);

            Context.UserUseCases.AddRange(data.UseCaseIds.Select(x =>
            new Domain.UserUseCase
            {
                UserId = data.UserId,
                UseCaseId = x
            }));

            Context.SaveChanges();
        }
    }
}
