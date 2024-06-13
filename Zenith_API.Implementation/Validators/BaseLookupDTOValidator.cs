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
    public class BaseLookupDTOValidator : AbstractValidator<LookupTablesInsertDTO>
    {
        private ZenithContext _context;

        protected ZenithContext Context => _context;

        public BaseLookupDTOValidator(ZenithContext context)
        {
            _context = context;

            CascadeMode = CascadeMode.StopOnFirstFailure;

            RuleFor(x => x.Name)
                .NotEmpty()
                .WithMessage("Name is required.");
            
        }
    }

    public class FileTypeDTOValidator : BaseLookupDTOValidator
        
    {
        public FileTypeDTOValidator(ZenithContext context)
            :base(context)
        {
            RuleFor(x => x.Name)
                .Must(x => !Context.FileTypes.Any(t => t.Name == x && t.IsActive))
                .WithMessage("FileTypes with same name already exists.");
        }
    }
}
