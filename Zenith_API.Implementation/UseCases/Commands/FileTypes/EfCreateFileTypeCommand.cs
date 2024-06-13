using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.DataAccess;
using Zenith_API.Domain;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.FileTypes
{
    public class EfCreateFileTypeCommand : ICreateFileTypeCommand
    {
        public int Id => 4;

        public string Name => "Insert File Type";

        private readonly FileTypeDTOValidator _validator;
        private readonly ZenithContext _context;

        public EfCreateFileTypeCommand(FileTypeDTOValidator validator, ZenithContext context)
        {
            _validator = validator;
            _context = context;
        }

        public void Execute(LookupTablesInsertDTO data)
        {
            _validator.ValidateAndThrow(data);

            FileType fileType = new FileType()
            {
                Name = data.Name,
            };

            _context.FileTypes.Add(fileType);

            _context.SaveChanges();
        }
    }
}
