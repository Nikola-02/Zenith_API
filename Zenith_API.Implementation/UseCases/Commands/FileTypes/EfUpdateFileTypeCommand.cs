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
    public class EfUpdateFileTypeCommand : IUpdateFileTypeCommand
    {
        public int Id => 5;

        public string Name => "Update FileType";

        private readonly FileTypeDTOValidator _validator;
        private readonly ZenithContext _context;

        public EfUpdateFileTypeCommand(FileTypeDTOValidator validator, ZenithContext context)
        {
            _validator = validator;
            _context = context;
        }

        public void Execute(FileTypeInsertUpdateDTO data)
        {
            _validator.ValidateAndThrow(data);

            var fileType = _context.FileTypes.FirstOrDefault(x=>x.Id == data.Id);

            if (fileType==null)
            {
                throw new EntityNotFoundException(_context.FileTypes.GetType().ToString(), Id);
            }

            fileType.Name = data.Name;

            _context.SaveChanges();
        }
    }
}
