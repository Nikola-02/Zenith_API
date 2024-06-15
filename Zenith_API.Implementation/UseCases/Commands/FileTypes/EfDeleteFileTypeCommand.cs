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
    public class EfDeleteFileTypeCommand : EfUseCase, IDeleteFileTypeCommand
    {
        public int Id => 6;

        public string Name => "Delete FileType";

        public EfDeleteFileTypeCommand(ZenithContext context) : base(context)
        {
        }

        public void Execute(int data)
        {
            var fileType = Context.FileTypes.FirstOrDefault(x => x.Id == data);

            if (fileType == null)
            {
                throw new EntityNotFoundException(Context.FileTypes.GetType().ToString(), Id);
            }

            fileType.IsActive = false;
            fileType.DeletedAt = DateTime.UtcNow;

            Context.SaveChanges();
        }
    }
}
