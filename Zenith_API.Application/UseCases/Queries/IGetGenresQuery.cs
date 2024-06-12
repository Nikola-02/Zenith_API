using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Application.UseCases.Queries
{
    public class GenreDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class GenreSearch
    {
        public string Name { get; set; }
    }

    public interface IGetGenresQuery : IQuery<List<GenreDTO>, GenreSearch>
    {
    }
}
