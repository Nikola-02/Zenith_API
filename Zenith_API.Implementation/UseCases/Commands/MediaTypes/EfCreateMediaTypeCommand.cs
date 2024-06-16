using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.UseCases.Commands.MediaTypes;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.MediaTypes
{
    public class EfCreateMediaTypeCommand : EfUseCase, ICreateMediaTypeCommand
    {
        public int Id => 20;

        public string Name => "Create MediaType";

        public MediaTypeDTOValidator _validator { get; set; }

        public EfCreateMediaTypeCommand(ZenithContext context, MediaTypeDTOValidator validator) : base(context)
        {
            _validator = validator;
        }

        public void Execute(MediaTypeInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            MediaType mediaType = new MediaType()
            {
                Name = data.Name,
            };

            Context.MediaTypes.Add(mediaType);

            Context.SaveChanges();
        }
    }
}
