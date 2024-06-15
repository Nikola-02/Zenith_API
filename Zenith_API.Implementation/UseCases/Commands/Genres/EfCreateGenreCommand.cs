using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.UseCases.Commands.Genres;

namespace Zenith_API.Implementation.UseCases.Commands.Genres
{
    public class EfCreateGenreCommand : ICreateGenreCommand
    {
        public int Id => 8;

        public string Name => "Create Genre";

        public void Execute(GenreInsertUpdateDTO data)
        {
           
        }
    }
}
