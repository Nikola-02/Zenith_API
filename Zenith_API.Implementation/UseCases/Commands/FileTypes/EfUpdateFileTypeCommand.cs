using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.FileTypes
{
    public class EfUpdateFileTypeCommand : EfUseCase,IUpdateFileTypeCommand
    {
        public int Id => 5;

        public string Name => "Update FileType";

        private readonly FileTypeUpdateDTOValidator _validator;

        public EfUpdateFileTypeCommand(FileTypeUpdateDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(FileTypeInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var fileType = Context.FileTypes.FirstOrDefault(x=>x.Id == data.Id);

            if (fileType==null)
            {
                throw new EntityNotFoundException(Context.FileTypes.GetType().ToString(), Id);
            }

            fileType.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
