using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.MediaTypes;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.MediaTypes
{
    public class EfUpdateMediaTypeCommand : EfUseCase, IUpdateMediaTypeCommand
    {
        public int Id => 21;

        public string Name => "Update MediaType";

        public MediaTypeUpdateDTOValidator _validator { get; set; }

        public EfUpdateMediaTypeCommand(MediaTypeUpdateDTOValidator validator, ZenithContext context) : base(context)
        {
            _validator = validator;
        }

        public void Execute(MediaTypeInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var mediaType = Context.MediaTypes.FirstOrDefault(x => x.Id == data.Id);

            if (mediaType == null)
            {
                throw new EntityNotFoundException(Context.MediaTypes.GetType().ToString(), Id);
            }

            mediaType.Name = data.Name;

            Context.SaveChanges();
        }
    }
}
