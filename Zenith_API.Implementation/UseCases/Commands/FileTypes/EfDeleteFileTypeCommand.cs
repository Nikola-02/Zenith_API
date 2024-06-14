using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.Exceptions;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.DataAccess;
using Zenith_API.Implementation.Validators;

namespace Zenith_API.Implementation.UseCases.Commands.FileTypes
{
    public class EfDeleteFileTypeCommand : IDeleteFileTypeCommand
    {
        public int Id => 6;

        public string Name => "Delete FileType";

        private readonly ZenithContext _context;

        public EfDeleteFileTypeCommand(ZenithContext context)
        {
            _context = context;
        }

        public void Execute(int data)
        {
            var fileType = _context.FileTypes.FirstOrDefault(x => x.Id == data);

            if (fileType == null)
            {
                throw new EntityNotFoundException(_context.FileTypes.GetType().ToString(), Id);
            }

            _context.FileTypes.Remove(fileType);

            _context.SaveChanges();
        }
    }
}
